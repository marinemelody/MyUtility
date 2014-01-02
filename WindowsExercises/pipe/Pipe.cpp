// Pipe.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"

using namespace std;

#include "Functional/Serialize.h"
#include "Functional/Singleton.h"

#include "PipeAnonymous.h"

#include "Arithmetic/Arithmetic.h"
#include "Utility/TextManipulate.h"

#include "Structure/Arrays.h"

DWORD WINAPI MyThread( LPVOID lpParam )
{
    return 0;
}

DWORD WINAPI MyThread2( LPVOID lpParam )
{
    return 0;
}

#include "BenchMark.h"


#include "Functional/DbgModule.h"

class SystemInfo
{
public:
    SystemInfo(){Init();}

    void Init()
    {
        SYSTEM_INFO si;
        GetSystemInfo(&si);
    }

private:
    SYSTEM_INFO m_SystemInfo;
};


// class Serv
// {
// protected:
//     void Excute() = 0;
// };
// class FlowSend : public Serv
// {
// public:
//     void Send() = 0;
// };
// class FlowRecv : public Serv
// {
// public:
//     void Recv() = 0;
// };
// class TcpFlow
// {
// public:
//     explicit TcpFlow();
// private:
//     FlowSend _sendsrv;
//     FlowRecv _recvsrv;
// };
//typedef void (*FUNC_TYPE)();

// template<typename Func>
// class FunctionNoArg
// {
// public:
//     FunctionNoArg(Func* f){m_f = f;}
// 
//     void operator()() {m_f();}
// private:
//     Func* m_f;
// };
// class Thread : protected NoneCopyable
// {
//     typedef boost::function<void (void)> Functor;
// public:
//     Thread(Functor f):m_thread(NULL), m_run(0),m_f(f)
//     {
//         m_thread = CreateThread(NULL, 0, WorkFunc, this, CREATE_SUSPENDED, 0);
//     }
// 
//     static DWORD WINAPI WorkFunc(LPVOID lpParameter)
//     {
//         Thread* pThread = (Thread*)lpParameter;
//         assert(pThread);
// 
//         while(pThread->m_run)
//         {
//             pThread->m_f();
//         }
// 
//         return 0;
//     }
// 
//     bool start()
//     {
//         m_run = 1;
//         return ResumeThread(m_thread)!=-1 ;
//     }
//     void term() {m_run = 0;}
// 
// private:
//     HANDLE m_thread;
//     volatile UINT m_run;
//     FunctionNoArg<void ()> m_f;
//     //boost::function<void ()> m_f;
// };

class ThreadWork
{
public:
    virtual void run() = 0;
};

class Thread
{
    enum
    {
        THREAD_STATE_INIT       = 0,
        THREAD_STATE_READY      = 1,
        THREAD_STATE_RUN        = 2,
        THREAD_STATE_SUSPEND    = 3,
        THREAD_STATE_CLOSING    = 4,
        THREAD_STATE_TERM       = 5,

        THREAD_SLICE_LIMIT      = 50,
    };
public:
    Thread():m_Thread(NULL),m_ThreadID(0),m_status(THREAD_STATE_INIT),m_LoopCount(0),m_TimeSlice(0){}
    ~Thread()
    {
        if (m_Thread!=NULL)
        {
            CloseHandle(m_Thread);
        }
    }
    //apply thread resource
    bool init(std::string const&name, ThreadWork& work, UINT32 timeslice=0, std::string const&desc="")
    {
        if (m_status != THREAD_STATE_INIT)
            return false;
        m_Thread = CreateThread(NULL, 0, ProcFunc, this, CREATE_SUSPENDED, &m_ThreadID);
        if (m_Thread==NULL)
            return false;
        m_ThreadName = name;
        m_pWork      = &work;
        m_ThreadDesc = desc;
        m_TimeSlice  = timeslice;
        m_status     = THREAD_STATE_READY;
        return true;
    }
    //
    bool start()
    {
        if (m_status != THREAD_STATE_READY)
            return false;

        DWORD ret = ResumeThread(m_Thread);
        if (ret==(DWORD)-1)
            return false;

        m_status = THREAD_STATE_RUN;
        INSTANCE_SINGLETON_S(ThreadMonitor).Monitor(*this);
        return true;
    }

    bool Suspend()
    {
        if (m_status != THREAD_STATE_RUN)
            return false;

        DWORD ret = SuspendThread(m_Thread);
        if (ret==(DWORD)-1)
            return false;

        m_status = THREAD_STATE_SUSPEND;
        return true;
    }
    bool Resume()
    {
        if (m_status != THREAD_STATE_SUSPEND)
            return false;

        m_status = THREAD_STATE_RUN;
        DWORD ret = ResumeThread(m_Thread);
        if (ret==(DWORD)-1)
        {
            m_status = THREAD_STATE_SUSPEND;
            return false;
        }

        return true;
    }
    //softy close
    bool Closing()
    {
        if (m_status != THREAD_STATE_RUN)
            return false;

        m_status = THREAD_STATE_CLOSING;
        return true;
    }
private:
    HANDLE          m_Thread;
    DWORD           m_ThreadID;
    std::string     m_ThreadName;
    std::string     m_ThreadDesc;
    volatile UINT32 m_status;
    UINT64          m_LoopCount;
    volatile UINT32 m_TimeSlice;
    ThreadWork*     m_pWork;
protected:
    void run()
    {
        m_pWork->run();
        std::cout<< "THREAD TESTING....." << m_ThreadName << endl;
    }
    static DWORD WINAPI ProcFunc(LPVOID lpParameter)
    {
        Thread* pThread = (Thread*)lpParameter;
        assert(pThread);

        if (pThread->m_TimeSlice>THREAD_SLICE_LIMIT)
        {
            while(pThread->m_status==THREAD_STATE_RUN)
            {
                UINT32 nowtick = GetTickCount();

                ++pThread->m_LoopCount;
                pThread->m_pWork->run();

                UINT32 endtick = GetTickCount();
                UINT32 deltatick = endtick-nowtick;
                if (deltatick < THREAD_SLICE_LIMIT)
                {
                    Sleep(THREAD_SLICE_LIMIT - deltatick);
                }
            }
        }
        else
        {
            while(pThread->m_status==THREAD_STATE_RUN)
            {
                ++pThread->m_LoopCount;
                pThread->m_pWork->run();
            }
        }

        pThread->m_status = THREAD_STATE_TERM;
        return 0;
    }
};

class ThreadMonitor
{
public:
    void Monitor(Thread& t)
    {

    }
    //should be called by main thread
    void Monitoring()
    {

    }
    //report thread is now terminated
    void Terminated(Thread& t)
    {

    }
    //report thread's current Call stack 
    void StackCall(Thread& t)
    {

    }
    //report thread is now dead lock 
    void DeadLock(Thread& t)
    {

    }
private:
};

//this is  A producer/consumer design pattern
namespace PatternPC
{
    template<typename T>
    class PtnStorage
    {
    public:
        void Add(T* p)
        {
            G_LOCK(LockSpin, m_lock);
            m_vecs.push_back(p);
        }
    private:
        LockSpin        m_lock;
        std::vector<T*> m_vecs;
    };

    template<typename T>
    class PtnConsumer
    {
    public:
        void Proc()
        {
            T* p = INSTANCE_SINGLETON_S(PtnStorage<T>).Get();
            Excute(p);
        }
        virtual void Excute(T*) = 0;
    };
}
struct LogRecord
{
    enum
    {
        MAX_STR_SIZE    = 256,
    };
    int         m_LogLevel;
    DWORD       m_ThreadID;
    char        m_LogBuff[MAX_STR_SIZE];
};
class LogMgr : public PatternPC::PtnConsumer<LogRecord>
{
public:
    LogMgr():m_LogMask(0xFFFFFFFF){}
    static void WriteLog(int loglv, char* fmt, ...)
    {
        if (INSTANCE_SINGLETON_D(LogMgr).Filter(loglv))
            return;

        LogRecord* pRecode = new LogRecord;

        va_list argptr;
        va_start(argptr, fmt);
        vsnprintf_s(pRecode->m_LogBuff, LogRecord::MAX_STR_SIZE, _TRUNCATE, fmt, argptr);
        va_end(argptr);

        pRecode->m_LogLevel = loglv;
        pRecode->m_ThreadID = GetCurrentThreadId();
        INSTANCE_SINGLETON_S(PatternPC::PtnStorage<LogRecord>).Add(pRecode);
    }

    virtual void Excute(LogRecord* pRecord)
    {
        if (!pRecord) return;

        //std::cout << 

        delete pRecord;
    }

    // true:discard the log
    bool Filter(int loglv)
    {
        return (m_LogMask&TOMASK(loglv))==0;
    }
private:
    int m_LogMask;
};

#define LOG_TEST(fmt,...)    INSTANCE_SINGLETON_D(LogMgr).WriteLog(1,fmt,__VA_ARGS__)

int _tmain(int argc, _TCHAR* argv[])
{
    LOG_TEST( "kskdjkf%d", 1199223);

    Thread t;
    t.init("gogogo",100);
    t.start();


    Thread t2;
    t2.init("rerere",100);
    t2.start();
//     ListPool<INT>  a;
//     INT* b = a.Acquire();
    //     a.Release(b);
    //LPVOID p = VirtualAlloc(NULL, SYS_PAGE_SIZE*16, MEM_COMMIT, PAGE_READWRITE);
    //size_t xx;

    //MEMORY_BASIC_INFORMATION  mbinfo;
    //if(xx = VirtualQuery((LPVOID)((INT)p+0x1000), &mbinfo, sizeof(mbinfo))==0)
    //    return 0;
    //if(xx = VirtualQuery((LPVOID)((INT)p+0x10000), &mbinfo, sizeof(mbinfo))==0)
    //    return 0;

    //if(xx = VirtualQuery((LPVOID)((INT)p+0x20000), &mbinfo, sizeof(mbinfo))==0)
    //    return 0;
    //if(xx = VirtualQuery((LPVOID)((INT)p+0x30000), &mbinfo, sizeof(mbinfo))==0)
    //    return 0;
    //std::cout << p << std::endl;

    //std::vector<int> ss;
    //ss.begin();


    //     SEH_TRY_BEGIN
// 
// 
//         FuncAa();
// 
//     SEH_TRY_END

//     try
//     {
//         FuncAa();
//     }
//     catch (TExp a)
//     {
//     }
//     Thread a(FuncA);
//     a.start();
//     FuncA();
//     for (int i=0;i<1000;++i)
//         FuncB();
//     cout << INSTANCE_SINGLETON_S(PerfMonitor::PerformenceMgr<std::string>);
    //    if (!gPipeAnonymous.IsOk())
    //    {
    //        std::cout << "CreatePipe Failed!" << GetLastError() << std::endl;
    //        break;
    //    }

    //    HANDLE h_write = gPipeAnonymous.GetWriteHandle();
    //    HANDLE h_read  = gPipeAnonymous.GetReadHandle();
    //    CreateThread(NULL, 0, MyThread, &h_read, 0, NULL);

    //    Packet p;

    //    while (1)
    //    {
    //        char buf[10];
    //        cin.getline(buf, 10);
    //        string ss(buf);
    //        p.clear();
    //        Serialization s(p);
    //        s << ss;

    //        DWORD num;
    //        WriteFile(h_write, p.buff(), p.size(), &num, NULL);
    //    }
    //} while (0);

    system("pause");
    return 0;
}

