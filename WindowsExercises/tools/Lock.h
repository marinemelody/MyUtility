#pragma once

#include "LockType.h"

template<typename LOCK>
class LockGuard
{
public:
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



