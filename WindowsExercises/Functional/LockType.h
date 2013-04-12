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
//inter thread
class LockCrit : protected NonCopyable
{
    typedef LockCrit SelfType;
public:
    LockCrit(){InitializeCriticalSection(&cs);}
    inline void acquire(){EnterCriticalSection(&cs);}
    inline void release(){LeaveCriticalSection(&cs);}
private:
    CRITICAL_SECTION cs;
};

//Synchronization: Lock Spin
//inter thread
class LockSpin : protected NonCopyable
{
    typedef LockSpin SelfType;
public:
    LockSpin():l(0){}
    inline void acquire(){while(InterlockedCompareExchange(&l, 1, 0)!=0){_mm_pause();};}
    inline void release(){InterlockedExchange(&l, 0);}
private:
    LONG l;
};

//Synchronization: Mutex Infinite
//inter process
class LockMutex : protected NonCopyable
{
    typedef LockCrit SelfType;
public:
    LockMutex(){_mutex = CreateMutex(NULL, FALSE, NULL);}
    ~LockMutex(){CloseHandle(_mutex);}
    inline void acquire(){WaitForSingleObject(_mutex, INFINITE);}
    inline void release(){ReleaseMutex(_mutex);}
private:
    HANDLE _mutex;
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
    inline void acquire(){while(InterlockedCompareExchange(&l, 1, 0)!=0){};}
    inline void release(){InterlockedExchange(&l, 0);}
private:
    LONG& l;
};
#define LOCK_SPIN_LOCAL(name) \
    static LONG _var##name = 0;\
    LockSpinLocal _l##name(_var##name);
