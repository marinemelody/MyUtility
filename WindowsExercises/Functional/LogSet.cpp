#include "stdafx.h"

#include "LogSet.h"
#include "Singleton.h"

#include "MacroExpression.h"

LogMgr::LogMgr():m_LogMask(0xFFFFFFFF){}
void LogMgr::WriteLog(int loglv, char* fmt, ...)
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

void LogMgr::Excute(LogRecord* pRecord)
{
    if (!pRecord) return;

    //std::cout << 

    delete pRecord;
}

bool LogMgr::Filter(int loglv)
{
    return (m_LogMask&TOMASK(loglv))==0;
}


