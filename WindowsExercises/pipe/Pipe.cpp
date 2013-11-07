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
                    << "Tick  num:" << itr->second.m_TickSum << std::endl
                    << "MaxTick  :" << itr->second.m_MaxTick << std::endl
                    << "MinTick  :" << itr->second.m_MinTick << std::endl
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
#define PERF_RECODE_STRING_RESULT(str) \
    INSTANCE_SINGLETON_S(PerfMonitor::PerformenceMgr<std::string>).write(str);
#define PERF_RECODE_STRING(str) \
    PerfMonitor::PerfRecord<std::string> _pm_(str);

#define PERF_RECODE_FUNC    \
    PerfMonitor::PerfRecord<std::string> _pm_(__FUNCTION__);

void FuncA()
{
    PERF_RECODE_FUNC;
    cout << "sikdkfkkkdjjlkd" << endl;
    Sleep(100);
}
void FuncB()
{
    PERF_RECODE_FUNC;
//     void* p = INSTANCE_SINGLETON_S(AllocVirtual<>).Alloc(100);
}

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




#define SYS_PAGE_SIZE           0x1000
#define SYS_MEM_GRANULARITY     0x10000

template<size_t SIZE_ALLOC, size_t MEM_NUMS = 0x400, size_t GRANULARITY=16*SYS_MEM_GRANULARITY-SYS_PAGE_SIZE>
class AllocVirtual
{
    struct PageMem
    {
        LPVOID m_base;
        LPVOID m_cur;

        PageMem(LPVOID addr):m_base(addr), m_cur(addr){}
        PageMem():m_base(0), m_cur(0){}

        LPVOID Alloc()
        {
            if ((UINT64)m_cur + SIZE_ALLOC > (UINT64)m_base + GRANULARITY)
                return NULL;
            LPVOID ret = m_cur;
            m_cur = (LPVOID)((UINT64)m_cur + SIZE_ALLOC);
            return ret;
        }
        bool Check(LPVOID addr) const
        {
            if (addr < m_base || addr >= m_cur)
                return false;
            if (((UINT64)addr-(UINT64)m_base)%SIZE_ALLOC != 0)
                return false;
            return true;
        }
    };
public:
    AllocVirtual():m_BaseAddrs()
    {}
    LPVOID Alloc()
    {
        PageMem* pPM = m_BaseAddrs.end();
        if (!pPM)
        {
            AllocPage();
            return Alloc();
        }

        LPVOID ret = pPM->Alloc();
        if (!ret)
        {
            AllocPage();
            return Alloc();
        }
        return ret;
    }
    void AllocPage()
    {
        AssertThrow(!m_BaseAddrs.full(), throw 1);
        LPVOID p = VirtualAlloc(NULL, GRANULARITY, MEM_COMMIT, PAGE_READWRITE);
        AssertThrow(p, throw 1);
        m_BaseAddrs.insert(p);
    }
    bool Check(LPVOID addr)
    {
        FOR_0_NUM(i, m_BaseAddrs.size())
        {
            if(m_BaseAddrs[i].Check(addr))
                return true;
        }
        return false;
    }
private:
    CompactArray<PageMem, MEM_NUMS> m_BaseAddrs;
};

#pragma pack(push,4)
template<typename T>
struct PoolObj
{
    PoolObj* _last;
    T        _obj;
#ifdef MEM_TEST
    UINT32   reverse;
#endif
};

template<typename T, typename MemHolder = AllocVirtual<sizeof(PoolObj<T>)> >
class ListPool;

template<typename T, typename MemHolder>
class ListPool
{
    enum
    {
        REVERSE_DATA = 0xcdcdcdcd,
    };

public:
    typedef T* ptr_type;
    typedef T valuetype;
    typedef PoolObj<T> PoolObjType;

    class ObjHolder
    {
    public:
        ObjHolder(T* _p)
        {
            m_obj = (PoolObjType*)((char*)_p - sizeof(PoolObjType*));
        }
    public:
        PoolObjType* m_obj;
    };
public:

    ListPool():m_tail(NULL),m_used(0),m_totle(0){}
    ptr_type Acquire()
    {
        ptr_type objptr = AcquireNC();
        return new(objptr) T();
    }
    void Release(ptr_type _obj)
    {
        _obj->~T();
        ReleaseND(_obj);
    }
    //No Construct
    ptr_type AcquireNC()
    {
        if (!m_tail)
        {
            m_tail = (PoolObjType*)m_mems.Alloc();
            AssertThrow(m_tail, throw 1);
            m_tail->_last = NULL;
#ifdef MEM_TEST
            m_tail->reverse = REVERSE_DATA;
#endif
            ++m_totle;
            return AcquireNC();
        }
        PoolObjType* pRet = m_tail;
        m_tail = m_tail->_last;
        pRet->_last = NULL;
#ifdef MEM_TEST
        memset(&pRet->_obj, 0, sizeof(pRet->_obj));
        AssertThrow(pRet->reverse == REVERSE_DATA, {pRet->reverse=REVERSE_DATA;throw 1;});
#endif
        ++m_used;
        return &pRet->_obj;
    }
    //no destruct
    void ReleaseND(ptr_type _obj)
    {
        ObjHolder h(_obj);
#ifdef MEM_TEST
        AssertThrow(m_mems.Check(h.m_obj), throw 1);
        memset(_obj, 0, sizeof(T));
        AssertThrow(h.m_obj->_last == NULL, {h.m_obj->_last=NULL;throw 1;});
        AssertThrow(h.m_obj->reverse == REVERSE_DATA, {h.m_obj->reverse=REVERSE_DATA;throw 1;});
#endif
        h.m_obj->_last = m_tail;
        m_tail = h.m_obj;
        --m_used;
    }

private:
    PoolObjType*    m_tail;
    UINT32      m_used;
    UINT32      m_totle;
    MemHolder   m_mems;
};
#pragma pack(pop)

struct TestStruct
{
    TestStruct(){}
    char objs[0x2000];
};


// void* operator new(size_t _size, string ss)
// {
//     std::cout << "GLOBE" << _size << std::endl;
//     return ::operator new(_size);
// }
// class A
// {
//     char a[10];
// public:
//     void operator delete(void* p, size_t _size)
//     {
//         std::cout << "~A" << _size << std::endl;
//         return ::operator delete(p);
//     }
//         void* operator new(size_t _size)
//         {
//             std::cout << "A" << _size << std::endl;
//             return ::operator new(_size);
//         }
// };
// 
// class B: public A
// {
//     char b[12];
// 
// };
// class C: public A
// {
//     char c[18];
// 
// };
// 
// class E: public B
// {
//     char e[128];
// 
// };

int _tmain(int argc, _TCHAR* argv[])
{

//     ListPool<TestStruct> lp;
//     TestStruct* *pointers = new TestStruct*[10000];
//     {
//         PERF_RECODE_STRING("POOLA");
//         FOR_0_NUM(i,10000)
//         {
//             TestStruct* p = lp.Acquire();
//             pointers[i] = p;
//         }
//     }
//     {
//         PERF_RECODE_STRING("POOLD");
//         FOR_0_NUM(i,10000)
//         {
//             lp.Release(pointers[i]);
//         }
//     }
//     {
//         PERF_RECODE_STRING("NEW");
//         FOR_0_NUM(i,10000)
//         {
//             TestStruct* p = new TestStruct;
//             pointers[i] = p;
//             //   delete p;
//             //             std::cout << std::hex << p << std::endl;
//         }
//     }
//     {
//         PERF_RECODE_STRING("DELETE");
//         FOR_0_NUM(i,10000)
//         {
//             delete pointers[i];
//         }
//     }
// 
//     PERF_RECODE_STRING_RESULT(std::cout);

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

    //BenchMark::BM_Serialize();
    system("pause");
    return 0;
}

