#pragma once

#include "Noncopyable.h"

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
class LockFree : protected NonCopyable
{
public:
    LockFree():l(0){}
    inline void acquire(){while(InterlockedCompareExchangeAcquire(&l, 1, 0)!=0){};}
    inline void release(){InterlockedExchange(&l, 0);}
private:
    LONG l;
};

//���þ�ֵֵ̬���͵ĳ�����ʼ���ڱ���ʱ�洢�����ԣ��Ӷ��ܿ����̳߳�ʼ��������
//ע��ƽ̨�������ԣ�ʹ��ǰ���Ըñ�������
class LockFreeLocal
{
public:
    LockFreeLocal(LONG& lock):l(lock)
    {
        acquire();
    }
    ~LockFreeLocal()
    {
        release();
    }
    inline void acquire(){while(InterlockedCompareExchangeAcquire(&l, 1, 0)!=0){};}
    inline void release(){InterlockedExchange(&l, 0);}
private:
    LONG& l;
};
#define LOCK_FREE(name) \
    static LONG _var##name = 0;\
    LockFreeLocal _l##name(_var##name);
