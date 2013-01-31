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

//���þ�ֵֵ̬���͵ĳ�����ʼ���ڱ���ʱ�洢�����ԣ��Ӷ��ܿ����̳߳�ʼ��������
//ע��ƽ̨�������ԣ�ʹ��ǰ���Ըñ�������
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
