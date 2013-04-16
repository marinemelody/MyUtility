
#include "thread_main_network.h"
#include "../data_represent/msg_selector.h"

dual_queue_t net2game = {NULL, NULL};

typedef struct conn_desc {
    struct bufferevent * bev;
    apr_byte_t write_block;
	apr_time_t established_time;
} conn_desc;

static struct apr_hash_t * conn_desc_table = NULL;
static apr_pool_t * conn_desc_pool = NULL;

apr_byte_t conn_hashtable_add(evutil_socket_t fd, struct bufferevent * bev)
{
    void * key = &fd;
    apr_ssize_t klen = sizeof(fd);
    conn_desc * desc = (conn_desc *)apr_hash_get(conn_desc_table, key, klen);
    if (desc != NULL) {
        fprintf(stderr, "[NET] can't add fd=%d to connection hash table, already exist!\n", fd);
        return (apr_byte_t)0;
    }

    desc = malloc(sizeof(conn_desc));
    desc->bev = bev;
    desc->write_block = 0;
	desc->established_time = apr_time_now();
    apr_hash_set(conn_desc_table, key, klen, desc);
    return (apr_byte_t)1;
}

void conn_hashtable_del(evutil_socket_t fd)
{
    void * key = &fd;
    apr_ssize_t klen = sizeof(fd);

    conn_desc * desc = (conn_desc *)apr_hash_get(conn_desc_table, key, klen);
    if (desc == NULL) {
        fprintf(stderr, "[NET] can't find fd=%d in connection hash table!\n", fd);
        return ;
    }

    // 这里会不会有风险？ 即set NULL后依然占用hash表的内存空间
    // 后面要关注下！！！
    apr_hash_set(conn_desc_table, key, klen, NULL);
    free(desc);
}

static void post_msg_to_client(void * data)
{
    void * ack_msg = data;
	apr_ssize_t ack_size = 0;
    conn_desc * desc = NULL;
    evutil_socket_t fd = 0;
	apr_int16_t msg_id = 0;

	fd = MSG_GETNETID(ack_msg);
	desc = (conn_desc *)apr_hash_get(conn_desc_table, &fd, sizeof(fd));
    if (desc == NULL) {
        fprintf(stderr,
            "[NET] can't find fd=%x in connection hash table, "            
            " msg dropped!\n",
            fd);
        return ;
    }

	msg_id = MSG_GETMSGID(ack_msg);
	if ((msg_id <= MSG_ID_REQ_MIN) && (msg_id >= MSG_ID_REQ_MAX)) {
		fprintf(stderr,
            "[NET] game2net invalid msg_id=%d, "
            " valid range is (%d, %d)\n",
			msg_id,
            MSG_ID_REQ_MIN,
            MSG_ID_REQ_MAX);
		return ;
	}

	// 底层机制保证不能对一个连接多次回包，只能回一次
    if (desc->write_block) {
        fprintf(stderr,
            "[NET] can't post msg to fd=%d because post operation "
            " re-enter, msg dropped!\n",
            fd);
        return ;
    }

	ack_size = MSG_GETTOTALLEN_PTR(ack_msg);
	if (ack_size >= MSG_ACK_BODY_MAX_SIZE) {
		fprintf(stderr,
            "[NET] can't post msg size=%d, the maximum size=%d\n",
			ack_size,
			MSG_ACK_BODY_MAX_SIZE);
		bufferevent_disable(desc->bev, EV_READ);
		bufferevent_disable(desc->bev, EV_WRITE);
		return ;
	}

	// 发送给客户端，清空netid字段
	MSG_SETNETID(ack_msg, 0);
	bufferevent_enable(desc->bev, EV_WRITE);
    bufferevent_write(desc->bev, ack_msg, ack_size);
    desc->write_block = 1;
}

static void conn_event_established(struct bufferevent * bev, void * user_data)
{
    evutil_socket_t fd = bufferevent_getfd(bev);
    struct event_base * base = (struct event_base *)user_data;
    struct timeval delay = {2, 0};
    if (!conn_hashtable_add(fd, bev)) {
        fprintf(stderr,
            "[NET] can't add conn to hash table, "
            " exiting cleanly in two seconds.\n");
        event_base_loopexit(base, &delay);
        return ;
    }
}

static void conn_event_preclose(struct bufferevent * bev)
{
    evutil_socket_t fd = bufferevent_getfd(bev);
    fprintf(stdout, "[NET] closing conn fd=%x ...\n", fd);
    conn_hashtable_del(fd);
}

void listener_cb(struct evconnlistener * listener, evutil_socket_t fd,
    struct sockaddr * sa, int socklen, void * user_data)
{
    struct event_base * base = (struct event_base *) user_data;
    struct bufferevent * bev = NULL;

    bev = bufferevent_socket_new(base, fd, BEV_OPT_CLOSE_ON_FREE);
    if (bev == NULL) {
        fprintf(stderr, "[NET] error constructing bufferevent!\n");
        event_base_loopbreak(base);
        return ;
    }
    bufferevent_setcb(bev, conn_readcb, conn_writecb, conn_eventcb, NULL);
    bufferevent_disable(bev, EV_WRITE);
    bufferevent_enable(bev, EV_READ);

    conn_event_established(bev, user_data);
}

void conn_eventcb(struct bufferevent * bev, short events, void * user_data)
{
    if (events & BEV_EVENT_EOF) {
        fprintf(stdout, "[NET] connection closed.\n");
    } else if (events & BEV_EVENT_ERROR) {
        fprintf(stdout,
            "[NET] got an error on the connection: %s\n",
            strerror(errno));/*XXX win32*/
    }
    /* None of the other events can happen here, since we haven't enabled
    * timeouts */

    conn_event_preclose(bev);
    bufferevent_free(bev);
}

void conn_readcb(struct bufferevent * bev, void * user_data)
{
    struct evbuffer * input = bufferevent_get_input(bev);
    size_t rv_len = evbuffer_get_length(input);

    msghdr hdr;
    size_t hdr_size = MSG_GETHDRLEN();
	size_t body_size = 0;
	size_t total_size = 0;

	void * msg = NULL;
	size_t msg_len = 0;
	int rd_len = 0;

    if (rv_len < hdr_size) {
        // 包头还没完全到达，直接返回
        return ;
    }

	// 包头到了，先把包头拷贝出来但并不从缓冲区中删除
    evbuffer_copyout(input, &hdr, hdr_size);
	body_size = MSG_GETBODYLEN(&hdr);
	if (body_size >= MSG_REQ_BODY_MAX_SIZE) {
		// 非法包，直接关闭此socket连接
		bufferevent_disable(bev, EV_READ);
		bufferevent_disable(bev, EV_WRITE);

		conn_event_preclose(bev);
		bufferevent_free(bev);
		return ;
	}

	total_size = body_size + hdr_size;
	if (rv_len < total_size) {
		// 包体还没完全到达
		return ;
	}

	// 包体到了，也即全部数据都到了，可以拷贝出来并从缓冲区中移除掉
	msg_len = total_size;

	MSG_ALLOCSIZE(msg, msg_len);
	rd_len = evbuffer_remove(input, msg, msg_len);
	MSG_SETNETID(msg, bufferevent_getfd(bev));
	fprintf(stdout,
        "[NET] read %d bytes from fd=%x\n",
        rd_len,
        bufferevent_getfd(bev));

	// 丢给逻辑层处理
	apr_queue_push(net2game.sd, msg);

	// 不再读取数据，暂时禁止写入数据
	bufferevent_disable(bev, EV_READ);
	bufferevent_disable(bev, EV_WRITE);
}

void conn_writecb(struct bufferevent * bev, void * user_data)
{
    struct evbuffer * output = bufferevent_get_output(bev);
    if (evbuffer_get_length(output) == 0) {
        // 底层机制保证，发完数据就关闭连接
        bufferevent_disable(bev, EV_READ);
        bufferevent_disable(bev, EV_WRITE);

		fprintf(stdout,
            "[NET] flushed fd=%x over\n",
            bufferevent_getfd(bev));

        conn_event_preclose(bev);
        bufferevent_free(bev);
    }
}

void timer_cb(evutil_socket_t fd, short events, void * user_data)
{
    apr_status_t rv = 0;
    void * msg = NULL;
    apr_byte_t fini = 0;

    while (1) {
        msg = NULL;
        rv = apr_queue_trypop(net2game.rv, &msg);
        switch (rv) {
        case APR_SUCCESS:
            if (msg != NULL) {
                post_msg_to_client(msg);
				MSG_FREE(msg);
                msg = NULL;
            }
            break;
        case APR_EAGAIN:
            fini = 1;
            break;
        default:
            break;
        }

        if (fini)
            break;
    }
}


#define QUEUE_SIZE 1024

void dual_queue_init(dual_queue_t * dq, apr_pool_t * pool)
{
    apr_status_t rv = 0;

    if ((dq == NULL) || (pool == NULL))
        return ;

    rv = apr_queue_create(&dq->sd, QUEUE_SIZE, pool);
    rv = apr_queue_create(&dq->rv, QUEUE_SIZE, pool);
}

void dual_queue_fini(dual_queue_t * dq)
{
    apr_status_t rv = 0;

    if (dq == NULL)
        return ;

    rv = apr_queue_term(dq->sd);
    rv = apr_queue_term(dq->rv);

    dq->sd = NULL;
    dq->rv = NULL;
}

void conn_hashtable_init(apr_pool_t * pool)
{
    apr_status_t rv = 0;

    rv = apr_pool_create(&conn_desc_pool, pool);
    conn_desc_table = apr_hash_make(conn_desc_pool);
}

void conn_hashtable_fini()
{
    // 记得补上节点内存的free！！！

    apr_hash_clear(conn_desc_table);
    apr_pool_clear(conn_desc_pool);
    apr_pool_destroy(conn_desc_pool);
    conn_desc_pool = NULL;
}
