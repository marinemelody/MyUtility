#pragma once

#include "LockType.h"

template<typename LOCK>
class LockGuard
{
public: 
    typedef LOCK LOCKTYPE;
    LockGuard(LOCKTYPE& l):_lock(l)
    {
        _lock.acquire();
    }
    ~LockGuard()
    {
        _lock.release();
    }
private:
    LOCKTYPE& _lock;
};

template<>
class LockGuard<LockNull>
{
public: 
    typedef LockNull LOCKTYPE;
    LockGuard(LOCKTYPE& l)
    {}
};
#define  G_LOCK(t,a) LockGuard<t> _g_##a(a)


