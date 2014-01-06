#pragma once

#include <vector>

#include "Lock.h"
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
    LogMgr();
    static void WriteLog(int loglv, char* fmt, ...);

    virtual void Excute(LogRecord* pRecord);

    // true:discard the log
    inline bool Filter(int loglv);
private:
    int m_LogMask;
};

#define LOG_DEBUG(fmt,...)    INSTANCE_SINGLETON_D(LogMgr).WriteLog(1,fmt,__VA_ARGS__)
#define LOG_APP(fmt,...)    INSTANCE_SINGLETON_D(LogMgr).WriteLog(2,fmt,__VA_ARGS__)
