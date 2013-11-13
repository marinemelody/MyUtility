#pragma once

#include <map>

#include "Singleton.h"

namespace PerfMonitor
{
    template<typename IDType>
    class PerformenceMgr
    {
        class PerfCounter
        {
        public:
            PerfCounter()
                :m_TickSum(0)
                ,m_TickSumK(0)
                ,m_TickSumU(0)
                ,m_EnterSum(0)
                ,m_MaxTick(0)
                ,m_MinTick(0)
                ,m_MaxTickK(0)
                ,m_MinTickK(0)
                ,m_MaxTickU(0)
                ,m_MinTickU(0)
                //,m_ModeSwitch(0)
                ,m_ExpSwitch(0)
            {}
        public:
            UINT64 m_EnterSum;      ///<进入次数

            UINT64 m_TickSum;       ///<总耗时记录
            UINT64 m_MaxTick;       ///<最大执行耗时
            UINT64 m_MinTick;       ///<最小执行耗时

            UINT64 m_TickSumK;      ///<总耗时记录Kernel
            UINT64 m_MaxTickK;      ///<最大执行耗时Kernel
            UINT64 m_MinTickK;      ///<最小执行耗时Kernel

            UINT64 m_TickSumU;      ///<总耗时记录User
            UINT64 m_MaxTickU;      ///<最大执行耗时User
            UINT64 m_MinTickU;      ///<最小执行耗时User

            //UINT64 m_ModeSwitch;    ///<内核切换
            UINT64 m_ExpSwitch;     ///<异常退出
        };

    public:
        void Record(IDType const& id, UINT64 ticks, UINT64 ticksK, UINT64 ticksU, bool isExp)
        {
            m_records[id].m_EnterSum    += 1;
            m_records[id].m_TickSum     += ticks;
            m_records[id].m_MaxTick = max(m_records[id].m_MaxTick, ticks);
            m_records[id].m_MinTick = min(m_records[id].m_MinTick, ticks);
            m_records[id].m_TickSumK    += ticksK;
            m_records[id].m_MaxTickK = max(m_records[id].m_MaxTickK, ticksK);
            m_records[id].m_MinTickK = min(m_records[id].m_MinTickK, ticksK);
            m_records[id].m_TickSumU    += ticksU;
            m_records[id].m_MaxTickU = max(m_records[id].m_MaxTickU, ticksU);
            m_records[id].m_MinTickU = min(m_records[id].m_MinTickU, ticksU);
            isExp?++m_records[id].m_ExpSwitch:0;
        }
        void write(std::ostream& out) const
        {
            for (PerfRecord::const_iterator itr=m_records.begin();itr!=m_records.end();++itr)
            {
                out << itr->first << std::endl
                    << "Enter num:" << itr->second.m_EnterSum << std::endl
                    << "Tick  num:" << itr->second.m_TickSum << "ms" << std::endl
                    << "Max  Tick:" << itr->second.m_MaxTick << std::endl
                    << "Min  Tick:" << itr->second.m_MinTick << std::endl
                    << "Tick Knum:" << itr->second.m_TickSumK/10000.0 << "ms" << std::endl
                    << "Max KTick:" << itr->second.m_MaxTickK/10000.0 << "ms" << std::endl
                    << "Min KTick:" << itr->second.m_MinTickK/10000.0 << "ms" << std::endl
                    << "Tick Unum:" << itr->second.m_TickSumU/10000.0 << "ms" << std::endl
                    << "Max UTick:" << itr->second.m_MaxTickU/10000.0 << "ms" << std::endl
                    << "Min UTick:" << itr->second.m_MinTickU/10000.0 << "ms" << std::endl
                    << "Exp   num:" << itr->second.m_ExpSwitch << std::endl;
            }
        }
    private:
        typedef std::map<IDType, PerfCounter> PerfRecord;
        PerfRecord m_records;
    };
    template<typename IDType>
    class PerfRecord
    {
    public:
        PerfRecord(IDType const& id):m_id(id)
        {
            m_startTick=GetTickCount();
            FILETIME tCreate,tExit,tKernel,tUser;
            GetThreadTimes(GetCurrentThread(), &tCreate, &tExit, &tKernel, &tUser);
            m_startTickK = *(UINT64*)(&tKernel);
            m_startTickU = *(UINT64*)(&tUser);
        }
        ~PerfRecord()
        {
            FILETIME tCreate,tExit,tKernel,tUser;
            GetThreadTimes(GetCurrentThread(), &tCreate, &tExit, &tKernel, &tUser);
            UINT64 endTickK = *(UINT64*)(&tKernel);
            UINT64 endTickU = *(UINT64*)(&tUser);
            INSTANCE_SINGLETON_S(PerformenceMgr<IDType>).Record(m_id,GetTickCount()-m_startTick, endTickU-m_startTickU, endTickK-m_startTickK, uncaught_exception());
        }
    private:
        IDType  m_id;
        UINT64  m_startTick;
        UINT64  m_startTickK;
        UINT64  m_startTickU;
    };

    std::ostream& operator <<(std::ostream& out, PerformenceMgr<std::string> const& pm)
    {
        pm.write(out);
        return out;
    }
}
#define PERF_RECODE_STRING_RESULT(str) \
    INSTANCE_SINGLETON_S(PerfMonitor::PerformenceMgr<std::string>).write(str);
#define PERF_RECODE_STRING(str) \
    PerfMonitor::PerfRecord<std::string> _pm_(str);

#define PERF_RECODE_FUNC    \
    PerfMonitor::PerfRecord<std::string> _pm_(__FUNCTION__);

