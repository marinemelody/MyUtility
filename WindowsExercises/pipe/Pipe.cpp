// Pipe.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"

using namespace std;

#include "Functional/Serialize.h"
#include "Functional/Singleton.h"

#include "PipeAnonymous.h"

#include "Arithmetic/Arithmetic.h"
#include "Utility/TextManipulate.h"


DWORD WINAPI MyThread( LPVOID lpParam )
{
    return 0;
}

DWORD WINAPI MyThread2( LPVOID lpParam )
{
    return 0;
}

#include "BenchMark.h"


//#define DEFINE_SERILIZE(param) \
//Deserialize& operator>>(Deserialize& dsr, )\
//{
//    return dsr/* & param*/;\
//}\

struct Test
{
    int a,b,c;
    //DEFINE_SERILIZE(a&b&c);
};
#define DEFINE_SERIAL(cls,...) \
Deserialize& operator>>(Deserialize& dsr, cls ss)\
{\
    return dsr & ss.a&ss.b&ss.c;\
}\

DEFINE_SERIAL(Test)

#include "Functional/DbgModule.h"


class AllocVirtual
{
    typedef std::set<PVOID> BaseAddrMgr;
public:
    void* Alloc(SIZE_T _size)
    {
        void* p = VirtualAlloc(NULL, _size, MEM_COMMIT, PAGE_READWRITE);
        if (p)
        {
            LockGuard<LockCrit> _g(m_lock);
            m_BaseAddrMgr.insert(p);
        }
        return p;
    }
    void release(void* p)
    {
        MEMORY_BASIC_INFORMATION  mbinfo;
        if(VirtualQuery(p, &mbinfo, sizeof(mbinfo))==0)
            return;

        p = mbinfo.AllocationBase;

        {
            LockGuard<LockCrit> _g(m_lock);
            if (m_BaseAddrMgr.find(p)!=m_BaseAddrMgr.end())
            {
                m_BaseAddrMgr.erase(mbinfo.AllocationBase);
            }
            else
                p = NULL;
        }

        p?VirtualFree(mbinfo.AllocationBase, 0, MEM_RELEASE):0;
    }
private:
    BaseAddrMgr m_BaseAddrMgr;
    LockCrit m_lock;
};
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
                ,m_EnterSum(0)
                ,m_MaxTick(0)
                ,m_MinTick(0)
                ,m_ModeSwitch(0)
                ,m_ExpSwitch(0)
            {}
        public:
            UINT64 m_TickSum;       ///<总耗时记录
            UINT64 m_EnterSum;      ///<进入次数
            UINT64 m_MaxTick;       ///<最大执行耗时
            UINT64 m_MinTick;       ///<最小执行耗时

            UINT64 m_ModeSwitch;    ///<内核切换
            UINT64 m_ExpSwitch;     ///<异常退出
        };

    public:
        void Record(IDType const& id, UINT64 ticks, bool isExp)
        {
            m_records[id].m_TickSum     += ticks;
            m_records[id].m_EnterSum    += 1;
            m_records[id].m_MaxTick = max(m_records[id].m_MaxTick, ticks);
            m_records[id].m_MinTick = min(m_records[id].m_MinTick, ticks);
            isExp?++m_records[id].m_ExpSwitch:0;
        }
        void write(ostream& out) const
        {
            for (PerfRecord::const_iterator itr=m_records.begin();itr!=m_records.end();++itr)
            {
                out << itr->first << std::endl
                    << "Enter num:" << itr->second.m_EnterSum << std::endl
                    << "Enter num:" << itr->second.m_TickSum << std::endl
                    << "Enter num:" << itr->second.m_MaxTick << std::endl
                    << "Enter num:" << itr->second.m_MinTick << std::endl
                    << "Enter num:" << itr->second.m_MinTick << std::endl;
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
        PerfRecord(IDType const& id):m_id(id){m_startTick=GetTickCount();}
        ~PerfRecord()
        {
            INSTANCE_SINGLETON_S(PerformenceMgr<IDType>).Record(m_id,GetTickCount()-m_startTick,uncaught_exception());
        }
    private:
        IDType  m_id;
        UINT64  m_startTick;
    };

    ostream& operator <<(ostream& out, PerformenceMgr<std::string> const& pm)
    {
        pm.write(out);
        return out;
    }
}
#define PERF_RECODE_FUNC    \
    PerfMonitor::PerfRecord<std::string> _pm_(__FUNCTION__);

void FuncA()
{
    PERF_RECODE_FUNC;
    cout << "sikdkfkkkdjjlkd" << endl;
}
void FuncB()
{
    PERF_RECODE_FUNC;
    void* p = INSTANCE_SINGLETON_S(AllocVirtual).Alloc(100);
    INSTANCE_SINGLETON_S(AllocVirtual).release(p);
}

class CA
{

};
class CB
{

};
class RefMgr
{
    template<typename TL, typename TR>
    void AddRef(TL& l, TR r)
    {

    }
    template<typename TL, typename TR>
    TL& GetOpp()
    {

    }
};
template<typename TYPE>
class RefNode
{
    RefNode(TYPE& obj):_obj(obj){}
    ~RefNode(){}
private:
    TYPE& _obj;
};

int _tmain(int argc, _TCHAR* argv[])
{
   
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

    SwapMouseButton(FALSE);
    system("pause");
    return 0;
}

