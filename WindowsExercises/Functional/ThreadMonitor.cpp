#include "stdafx.h"

#include "ThreadMonitor.h"
#include "LogSet.h"
#include "Singleton.h"
#include "MacroExpression.h"
#include "DbgModule.h"
#include "Utility/TextManipulate.h"

Thread::Thread():m_Thread(NULL),m_ThreadID(0),m_status(THREAD_STATE_INIT),m_LoopCount(0),m_TimeSlice(0),m_lasttick(0),m_flag(0){}
Thread::~Thread()
{
    if (m_Thread!=NULL)
    {
        CloseHandle(m_Thread);
    }
}
bool Thread::init(std::string const&name, ThreadWork& work, UINT32 timeslice/*=0*/, std::string const&desc/*=""*/)
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
bool Thread::start()
{
    if (m_status != THREAD_STATE_READY)
        return false;

    DWORD ret = ResumeThread(m_Thread);
    if (ret==(DWORD)-1)
        return false;

    m_status = THREAD_STATE_RUN;
    gThreadMonitor.Monitor(*this);
    return true;
}

bool Thread::Suspend()
{
    if (m_status != THREAD_STATE_RUN)
        return false;

    DWORD ret = SuspendThread(m_Thread);
    if (ret==(DWORD)-1)
        return false;

    m_status = THREAD_STATE_SUSPEND;
    return true;
}
bool Thread::Resume()
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
bool Thread::Closing()
{
    if (m_status != THREAD_STATE_RUN)
        return false;

    m_status = THREAD_STATE_CLOSING;
    return true;
}
void Thread::run()
{
    m_pWork->run();
}
DWORD WINAPI Thread::ProcFunc(LPVOID lpParameter)
{
    Thread* pThread = (Thread*)lpParameter;
    assert(pThread);

    if (pThread->m_TimeSlice>THREAD_SLICE_LIMIT)
    {
        while(pThread->m_status==THREAD_STATE_RUN)
        {
            UINT64 nowtick = GetTickCount64();

            ++pThread->m_LoopCount;
            pThread->m_pWork->run();

            UINT64 endtick = GetTickCount64();

            pThread->m_lasttick = endtick;

            UINT64 deltatick = endtick-nowtick;
            if (deltatick < THREAD_SLICE_LIMIT)
            {
                Sleep(DWORD(THREAD_SLICE_LIMIT - deltatick));
            }
        }
    }
    else
    {
        while(pThread->m_status==THREAD_STATE_RUN)
        {
            ++pThread->m_LoopCount;
            pThread->m_pWork->run();

            pThread->m_lasttick = GetTickCount64();
        }
    }

    pThread->m_status = THREAD_STATE_TERM;
    return 0;
}
/************************************************************************/
/*                end of class Thread                                   */
/*              begin of class ThreadMonitor                            */
/************************************************************************/
ThreadMonitor::ThreadMonitor():m_iTimer(10000,false){}
Thread& ThreadMonitor::ApplyThread()
{
    return *(new Thread);
}
void ThreadMonitor::Monitor(Thread& t)
{
    G_LOCK(LockSpin, m_lock);
    m_Threads[t.m_ThreadID] = &t;
}
void ThreadMonitor::Monitoring()
{
    if (!m_iTimer.pass())
        return;

    G_LOCK(LockSpin, m_lock);
    for (ThreadMap::iterator itr = m_Threads.begin();itr!=m_Threads.end();++itr)
    {
        Thread* pThread = itr->second;
        DWORD exitCode = 0;
        if (!GetExitCodeThread(pThread->m_Thread,&exitCode))
        {
            ThreadError(GetLastError());
            itr = m_Threads.erase(itr);
            continue;
        }
        if (exitCode!=STILL_ACTIVE)
        {
            Terminated(*pThread, exitCode);
            itr = m_Threads.erase(itr);
            continue;
        }
        if (!HAS_MASK(pThread->m_flag,Thread::THREAD_FLAG_DEADLOCK) && ((pThread->m_lasttick+MONITOR_DEADLOCK_TIME) < GetTickCount64()))
        {
            pThread->m_flag |= TOMASK(Thread::THREAD_FLAG_DEADLOCK);
            DeadLock(*pThread);
        }

        if (HAS_MASK(pThread->m_flag,Thread::THREAD_FLAG_DEADLOCK) && ((pThread->m_lasttick+MONITOR_DEADLOCK_TIME) > GetTickCount64()))
        {
            pThread->m_flag &= ~TOMASK(Thread::THREAD_FLAG_DEADLOCK);
            ThreadRecovered(*pThread);
            StackCall(*pThread);
        }
    }
}
void ThreadMonitor::Terminated(Thread& t, DWORD exitCode)
{
    LOG_APP("The Thread named %s is now terminated.(code:%d)", t.m_ThreadName.c_str(), exitCode);
}
void ThreadMonitor::StackCall(Thread& t)
{
    if (!t.Suspend())
        return;

    CONTEXT ctx;
    ctx.ContextFlags = CONTEXT_CONTROL;
    if (!GetThreadContext(t.m_Thread, &ctx))
    {
        const char* errmsg = TextManipulate::GetLastErrorStr();
    }

    gDbgModue.ExportTraceBack(&ctx);

    LOG_APP("The Thread named %s Call Stack has exported.", t.m_ThreadName.c_str());

    t.Resume();
}
void ThreadMonitor::DeadLock(Thread& t)
{
    LOG_APP("The Thread named %s deadlock.", t.m_ThreadName.c_str());
    StackCall(t);
}
void ThreadMonitor::ThreadRecovered(Thread& t)
{
    LOG_APP("The Thread named %s Recovered.", t.m_ThreadName.c_str());
}
void ThreadMonitor::ThreadError(DWORD errorCode)
{
    char const* errormsg = TextManipulate::GetSystemErrorStr(errorCode);
    LOG_APP("Thread Error Occured:%s", errormsg);
}


