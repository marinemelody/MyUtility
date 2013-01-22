#pragma once

#include "Noncopyable.h"
#include "emmintrin.h"

class LockNull
{
public:
    inline void acquire(){}
    inline void release(){}
};

//Synchronization: Critical Section
class LockCrit : protected NonCopyable
{
public:
    LockCrit(){InitializeCriticalSection(&cs);}
    inline void acquire(){EnterCriticalSection(&cs);}
    inline void release(){LeaveCriticalSection(&cs);}
private:
    CRITICAL_SECTION cs;
};

//Synchronization: Lock Free
class LockSpin : protected NonCopyable
{
public:
    LockSpin():l(0){}
    inline void acquire(){while(InterlockedCompareExchangeAcquire(&l, 1, 0)!=0){_mm_pause();};}
    inline void release(){InterlockedExchange(&l, 0);}
private:
    LONG l;
};

//利用静态值值类型的常量初始化在编译时存储的特性，从而避开多线程初始化的陷阱
//注意平台编译特性，使用前测试该编译特性
class LockSpinLocal
{
public:
    LockSpinLocal(LONG& lock):l(lock)
    {
        acquire();
    }
    ~LockSpinLocal()
    {
        release();
    }
    inline void acquire(){while(InterlockedCompareExchangeAcquire(&l, 1, 0)!=0){};}
    inline void release(){InterlockedExchange(&l, 0);}
private:
    LONG& l;
};
#define LOCK_SPIN_LOCAL(name) \
    static LONG _var##name = 0;\
    LockSpinLocal _l##name(_var##name);
