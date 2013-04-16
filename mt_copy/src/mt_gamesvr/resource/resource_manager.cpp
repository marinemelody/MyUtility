
#include "resource_manager.h"
#include "res_parser.h"
#include "../scope_guard.h"

typedef struct resource_manager {
    apr_pool_t * res_pool;
    apr_hash_t * res_hash;
} resource_manager;

#define RES_FILE_NAME_MAXSIZE		(260)

typedef struct resource_cb_fn {
	res_id_t res_id;
	char res_file[RES_FILE_NAME_MAXSIZE];
    res_parser parser;
    res_assembler assembler;
    res_checker checker;
} resource_cb_fn;

static resource_manager res_mgr = {NULL, NULL};
static resource_cb_fn res_cb[RES_ID_MAX];

static apr_status_t resmgr_register_res(
    res_id_t res_id,
    char * res_file,
    res_parser parser,
    res_assembler assembler,
    res_checker checker)
{
	if (res_id >= RES_ID_MAX)
		return -1;

	if ((parser == NULL)
		|| (checker == NULL)
		|| (res_file == NULL))
		return -1;

	resource_cb_fn & cb = res_cb[res_id];
	if (cb.parser != NULL)
		return -1;

	cb.res_id = res_id;
	cb.parser = parser;
    cb.assembler = assembler;
	cb.checker = checker;
	strcpy_s(cb.res_file, sizeof(cb.res_file), res_file);
    return 0;
}

typedef struct dbc_file_header {
	apr_uint32_t magic_number;
	apr_int32_t columns;
	apr_int32_t rows;
	apr_int32_t string_block_size;
} dbc_file_header;

const char * get_line(
	char * buf,
	apr_size_t buf_size,
	const char * begin,
	const char * end)
{
	const char * current = begin;

	if ((begin >= end) || (begin == NULL)) {
		return NULL;
	}

	while ((current < end)
		&& ((apr_size_t)(current - begin + 1) < buf_size)
		&& (*current != '\0')
		&& (*current != '\r')
		&& (*current != '\n')) {
		* buf ++ = * current ++;
	}
	*buf = '\0';

	while ((current < end)
		&& (*current != '\0')
		&& ((*current == '\r') || (*current == '\n'))) {
		current ++;
	}

	return current;
}

void str_align_tok_init(
	apr_size_t nargs,
	char ** & argv,
	apr_pool_t * p)
{
	argv = (char **)apr_palloc(p, nargs * sizeof(char *));
	for (apr_size_t i = 0; i < nargs; ++ i) {
		argv[i] = NULL;
	}
}

apr_size_t str_align_tok(
	char * str,
	const char * sep,
	apr_size_t & nargs,
	char ** argv,
	apr_pool_t * pool)
{
	char * begin = NULL;
	char * last = NULL;
	char * tok = NULL;
	apr_size_t columns = nargs;

	nargs = 0;
	while (true) {
		if (last == NULL) {
			begin = str;
		} else {
			begin = NULL;
		}
		tok = apr_strtok(begin, sep, &last);
		if (tok == NULL) {
			break;
		}
		++ nargs;
		if (nargs > columns) {
			nargs = columns;
			break;
		}
		argv[nargs - 1] = apr_pstrdup(pool, tok);

		while ((last[0] != '\0')
			&& (strchr(sep, last[0]) != NULL)) {
			++ nargs;
			if (nargs > columns) {
				nargs = columns;
				return nargs;
			}
			argv[nargs - 1] = NULL;
			++ last;
		}
	}

	return nargs;
}

static apr_status_t dbc_bin_load(char * fbuf, apr_size_t fsize)
{
	return APR_SUCCESS;
}

static apr_status_t dbc_txt_load(
	char * buf,
	apr_size_t buf_size,
	res_parser parser,
    res_assembler assembler,
	apr_hash_t * res_subhash,
	apr_pool_t * res_pool,
	apr_pool_t * temp_pool)
{
	const char * current = buf;
	const char * end = buf + buf_size - 1;
	const char * sep = "\t";
	char line[10 * 1024] = {0};
	apr_size_t columns = 0;
	apr_size_t nargs = 0;
	char ** argv = NULL;

	// 读取出第一个非注释行，并切分之
	while (true) {
		current = get_line(line, sizeof(line), current, end);
		if (current == NULL) {
			return -1;
		}
		if (line[0] != '#') {
			break;
		}
	}

	columns = 100;
	str_align_tok_init(columns, argv, temp_pool);
	str_align_tok(line, sep, columns, argv, temp_pool);

	// 读取数据部分，避开注释行
	do {
		current = get_line(line, sizeof(line), current, end);
		if (current == NULL) {
			break;
		}
		if (line[0] == '#') {
			continue;
		}
		nargs = columns;
		str_align_tok_init(nargs, argv, temp_pool);
		str_align_tok(line, sep, nargs, argv, temp_pool);

		// 解析数据含义
		parser(nargs, argv, res_subhash, res_pool);

	} while (true);

	fprintf(stdout, "[RES] columns = %d, rows = %d\n",
        columns,
        apr_hash_count(res_subhash));

    // 组织数据关系
    if (assembler != NULL) {
        assembler(res_subhash, res_pool);
    }

	return APR_SUCCESS;
}

static apr_status_t resmgr_load_res(
    res_id_t res_id)
{
	apr_status_t rv = 0;
	char err[120] = {0};

	if (res_id >= RES_ID_MAX) {
		fprintf(stderr,
			"[RES] fault: res_id=%d out of range [0, %d]",
			res_id,
			RES_ID_MAX);
		return -1;
	}

	resource_cb_fn & cb = res_cb[res_id];
	if (cb.parser == NULL) {
		fprintf(stderr,
			"[RES] warning: res_id=%d parser NULL\n",
			res_id);
		return -1;
	}

	scope_pool tmp(res_mgr.res_pool);

	apr_file_t * file = NULL;
	rv = apr_file_open(
		&file,
		cb.res_file,
		APR_FOPEN_READ,
		APR_UREAD | APR_UWRITE | APR_GREAD,
		tmp.subp);
	if (rv != APR_SUCCESS) {
		fprintf(stderr, "[RES] can't open file %s for %s\n",
			cb.res_file, apr_strerror(rv, err, sizeof(err)));
		return rv;
	}

	apr_finfo_t f_info;
	rv = apr_file_info_get(&f_info, APR_FINFO_SIZE, file);
	if (rv != APR_SUCCESS) {
		fprintf(stderr, "[RES] can't get file %s size for %s\n",
			cb.res_file, apr_strerror(rv, err, sizeof(err)));
		goto LOAD_FAULT;
	}

	if (f_info.size < sizeof(dbc_file_header)) {
		fprintf(stderr, "[RES] corrupt dbc file header %s, size=%d\n",
			f_info.size);
		goto LOAD_FAULT;
	}

	fprintf(stdout, "[RES] %s size=%d\n",
		cb.res_file, f_info.size);

	apr_size_t fsize = (apr_size_t)f_info.size;
	apr_size_t bytes_read = fsize;
	apr_size_t buf_len = fsize + 1;
	char * buf = (char *)apr_palloc(tmp.subp, buf_len);
	rv = apr_file_read(file, buf, &bytes_read);
	if (rv != APR_SUCCESS) {
		fprintf(stderr, "[RES] can't read file %s for %s\n",
			cb.res_file, apr_strerror(rv, err, sizeof(err)));
		goto LOAD_FAULT;
	}

	if (bytes_read != fsize) {
		fprintf(stderr,
			"[RES] can't read file %s for %d bytes, "
			"%d bytes read",
			cb.res_file,
			fsize,
			bytes_read);
		goto LOAD_FAULT;
	}
	buf[buf_len - 1] = 0;

	dbc_file_header * hdr = (dbc_file_header *)buf;
	if (hdr->magic_number == 0XDDBBCC00) {
		dbc_bin_load(buf, buf_len);
	} else {
		apr_hash_t * res_subhash = apr_hash_make(res_mgr.res_pool);
		apr_hash_set(
			res_mgr.res_hash,
			&res_id,
			sizeof(res_id),
			res_subhash);
		dbc_txt_load(
			buf,
			buf_len,
			cb.parser,
            cb.assembler,
			res_subhash,
			res_mgr.res_pool,
			tmp.subp);
	}

LOAD_FAULT:
	apr_file_close(file);
    return rv;
}

apr_status_t resmgr_init(apr_pool_t * pool)
{
    apr_status_t rv = 0;
    apr_pool_t * subp = NULL;
    rv = apr_pool_create(&subp, pool);
    if (rv != APR_SUCCESS) {
        fprintf(stderr, "[RES] resmgr_init pool_create failed!\n");
        return -1;
    }
    res_mgr.res_pool = subp;
    res_mgr.res_hash = apr_hash_make(res_mgr.res_pool);

    // 初始化资源解析、检查回调函数
    for (int i = 0; i < RES_ID_MAX; ++ i) {
        resource_cb_fn & cb = res_cb[i];
        memset(&cb, 0, sizeof(cb));
    }

	resmgr_register_res(
		RES_ID_CAPTAINSKILL,
		"../public/config/captainskill.tab",
		captskill_parser,
        NULL,
		captskill_checker);

	resmgr_register_res(
		RES_ID_CARDEVOLUTION,
		"../public/config/cardevolution.tab",
		card_evolution_parser,
		NULL,
		card_evolution_checker);

	resmgr_register_res(
		RES_ID_CARDLEVELUP,
		"../public/config/cardlevelup.tab",
		card_compose_parser,
		NULL,
		card_compose_checker);

	resmgr_register_res(
		RES_ID_CARDS,
		"../public/config/cards.tab",
		card_ptt_parser,
        NULL,
		card_ptt_checker);

	resmgr_register_res(
		RES_ID_QUEST,
		"../public/config/quest.tab",
		quest_ptt_parser,
        NULL,
		quest_ptt_checker);

	resmgr_register_res(
		RES_ID_PLAYERLEVELUP,
		"../public/config/playerlevelup.tab",
		actor_levelup_parser,
        NULL,
		actor_levelup_checker);

	resmgr_register_res(
		RES_ID_INITIATIVESKILL,
		"../public/config/initiativeskill.tab",
		initskill_parser,
        NULL,
		initskill_checker);

	resmgr_register_res(
		RES_ID_EVENTDUPLICATE,
		"../public/config/eventduplicate.tab",
		event_duplicate_parser,
        NULL,
		event_duplicate_checker);

    resmgr_register_res(
        RES_ID_LOTTERY_STONE,
        "../public/config/lottery_stone.tab",
        lottery_stone_parser,
        lottery_stone_assembler,
        lottery_stone_checker);

	// 加载资源并解析
	for (int i = 0; i < RES_ID_MAX; ++ i) {
		resmgr_load_res((res_id_t)i);
	}

	// 检查资源有效性和完整性
	for (int i = 0; i < RES_ID_MAX; ++ i) {
		//...
	}

    return APR_SUCCESS;
}

apr_status_t resmgr_fini()
{
    apr_hash_clear(res_mgr.res_hash);
    apr_pool_destroy(res_mgr.res_pool);
    res_mgr.res_hash = NULL;
    res_mgr.res_pool = NULL;
    return APR_SUCCESS;
}

void * resmgr_find_int32(res_id_t res_id, apr_int32_t key)
{
	if (res_id >= RES_ID_MAX) {
		return NULL;
	}

	apr_hash_t * sub_hash = (apr_hash_t *)
		apr_hash_get(res_mgr.res_hash, &res_id, sizeof(res_id));
	if (sub_hash == NULL) {
		return NULL;
	}

	void * data = apr_hash_get(sub_hash, &key, sizeof(key));
	return data;
}

void * resmgr_find_int16(res_id_t res_id, apr_int16_t key)
{
	if (res_id >= RES_ID_MAX) {
		return NULL;
	}

	apr_hash_t * sub_hash = (apr_hash_t *)
		apr_hash_get(res_mgr.res_hash, &res_id, sizeof(res_id));
	if (sub_hash == NULL) {
		return NULL;
	}

	void * data = apr_hash_get(sub_hash, &key, sizeof(key));
	return data;
}
