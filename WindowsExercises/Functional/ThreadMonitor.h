#pragma once

#include <map>

#include "TimerSet.h"
#include "Lock.h"

class ThreadWork
{
public:
    virtual void run() = 0;
};

class ThreadWork_Func : public ThreadWork
{
    typedef void (*FUNC_TYPE)();
public:
    ThreadWork_Func(FUNC_TYPE func):m_func(func){}

    virtual void run()
    {
        m_func();
    }
private:
    FUNC_TYPE m_func;
};

class Thread
{
    friend class ThreadMonitor;
    enum
    {
        THREAD_STATE_INIT       = 0,
        THREAD_STATE_READY      = 1,
        THREAD_STATE_RUN        = 2,
        THREAD_STATE_SUSPEND    = 3,
        THREAD_STATE_CLOSING    = 4,
        THREAD_STATE_TERM       = 5,

        THREAD_SLICE_LIMIT      = 50,

        THREAD_FLAG_DONT_DETECT_DEADLOCK    = 0,
        THREAD_FLAG_DEADLOCK                = 1,
    };
protected:
    Thread();
    ~Thread();
public:
    //apply thread resource
    bool init(std::string const&name, ThreadWork& work, UINT32 timeslice=0, std::string const&desc="");
    //
    bool start();

    bool Suspend();
    bool Resume();
    //softy close
    bool Closing();
private:
    HANDLE          m_Thread;
    DWORD           m_ThreadID;
    std::string     m_ThreadName;
    std::string     m_ThreadDesc;
    volatile UINT32 m_status;
    UINT64          m_LoopCount;
    volatile UINT32 m_TimeSlice;
    ThreadWork*     m_pWork;
    UINT64          m_lasttick;
    UINT32          m_flag;
protected:
    void run();
    static DWORD WINAPI ProcFunc(LPVOID lpParameter);
};


class ThreadMonitor
{
    friend class Thread;
    enum
    {
        MONITOR_DEADLOCK_TIME   = 10000,
    };
public:
    ThreadMonitor();
    Thread& ApplyThread();
    void Monitoring();
protected:
    void Monitor(Thread& t);
    //should be called by main thread
    //report thread is now terminated
    void Terminated(Thread& t, DWORD exitCode);
    //report thread's current Call stack 
    void StackCall(Thread& t);
    //report thread is now dead lock 
    void DeadLock(Thread& t);
    //report thread recovered
    void ThreadRecovered(Thread& t);
    //
    void ThreadError(DWORD errorCode);
private:
    typedef std::map<DWORD, Thread*> ThreadMap;
    ThreadMap       m_Threads;
    LockSpin        m_lock;
    IntervalTimer   m_iTimer;
};

#define gThreadMonitor INSTANCE_SINGLETON_D(ThreadMonitor)


