#pragma once

#include "LockType.h"

template<typename LOCK>
class LockGuard
{
public: 
    typedef LOCK LOCKTYPE;
    LockGuard(LOCK& l):_lock(l)
    {
        _lock.acquire();
    }
    ~LockGuard()
    {
        _lock.release();
    }
private:
    LOCK& _lock;
};

#define  G_LOCK(t,a) LockGuard<t> _g_##a(a);


