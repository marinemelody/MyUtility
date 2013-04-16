#ifndef SCOPE_GUARD_H_
#define SCOPE_GUARD_H_

struct scope_pool {
    scope_pool(apr_pool_t * p) : subp(NULL) {
        apr_pool_create(&subp, p);
    }
    ~scope_pool() {        
        apr_pool_destroy(subp);
        subp = NULL;
    }
    apr_pool_t * subp;
};

#endif // SCOPE_GUARD_H_
