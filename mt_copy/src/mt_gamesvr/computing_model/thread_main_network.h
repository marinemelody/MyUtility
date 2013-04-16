
#ifndef THREAD_MAIN_NETWORK_H_
#define THREAD_MAIN_NETWORK_H_

#include <string.h>
#include <errno.h>
#include <stdio.h>
#include <signal.h>
#ifndef WIN32
#include <netinet/in.h>
# ifdef _XOPEN_SOURCE_EXTENDED
#  include <arpa/inet.h>
# endif
#include <sys/socket.h>
#endif

#include <event2/bufferevent.h>
#include <event2/buffer.h>
#include <event2/listener.h>
#include <event2/util.h>
#include <event2/event.h>
#include <event2/event_struct.h>

#include "../apr_inc.h"

void conn_hashtable_init(apr_pool_t *);
void conn_hashtable_fini();

void listener_cb(struct evconnlistener *, evutil_socket_t,
    struct sockaddr *, int, void *);
void conn_readcb(struct bufferevent *, void *);
void conn_writecb(struct bufferevent *, void *);
void conn_eventcb(struct bufferevent *, short, void *);
void timer_cb(evutil_socket_t, short, void *);

extern dual_queue_t net2game;

#endif // THREAD_MAIN_NETWORK_H_
