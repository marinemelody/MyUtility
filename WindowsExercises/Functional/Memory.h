#pragma once

#include "Structure/Arrays.h"
#include "Functional/Lock.h"

/************************************************************************/
/* 单链表对象池,基于页面分配                                            */
/************************************************************************/
//system page size usually is 4KB
//and in Windows, the memory granularity is 64KB
#define SYS_PAGE_SIZE           0x1000
#define SYS_MEM_GRANULARITY     0x10000
//a memory allocation use virtual page than default heap
//only Alloc Func
template<size_t SIZE_ALLOC, typename LOCKTYPE = LockNull, size_t MEM_NUMS = 0x400, size_t GRANULARITY=16*SYS_MEM_GRANULARITY>
class MemVirtual;

template<size_t SIZE_ALLOC, typename LOCKTYPE, size_t MEM_NUMS, size_t GRANULARITY>
class MemVirtual
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
    MemVirtual():m_BaseAddrs()
    {}
    ~MemVirtual()
    {
        FOR_0_NUM(i, m_BaseAddrs.size())
        {
            VirtualFree(m_BaseAddrs[i].m_base, 0, MEM_RELEASE);
        }
    }
    LPVOID Alloc()
    {
        G_LOCK(LOCKTYPE, _lock);
        return _Alloc();
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
    LPVOID _Alloc()
    {
        PageMem* pPM = m_BaseAddrs.end();
        if (!pPM)
        {
            AllocPage();
            return _Alloc();
        }

        LPVOID ret = pPM->Alloc();
        if (!ret)
        {
            AllocPage();
            return _Alloc();
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
private:
    LOCKTYPE _lock;
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

//this class Alloc Objects, and Detect memory overflow,
//Objects need default constructor
template<typename T, typename LOCKTYPE = LockNull, typename MemHolder = MemVirtual<sizeof(PoolObj<T>)> >
class ListPool;

template<typename T, typename LOCKTYPE, typename MemHolder>
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
private:
    ptr_type AcquireNC()
    {
        G_LOCK(LOCKTYPE, _lock);
        return _AcquireNC();
    }
    //No Construct
    ptr_type _AcquireNC()
    {
        if (!m_tail)
        {
            m_tail = AllocObj();
            return _AcquireNC();
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
    //Alloc a Obj
    PoolObjType* AllocObj()
    {
        PoolObjType* newobj = (PoolObjType*)m_mems.Alloc();
        AssertThrow(newobj, throw 1);
        newobj->_last = NULL;
#ifdef MEM_TEST
        newobj->reverse = REVERSE_DATA;
#endif
        ++m_totle;
        return newobj;
    }
    //no destruct
    void ReleaseND(ptr_type _obj)
    {
        G_LOCK(LOCKTYPE, _lock);
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
    LOCKTYPE    _lock;
};

//this class Alloc Objects, and Detect memory overflow, memory reuesed
//Objects need default constructor
template<typename T, typename LOCKTYPE = LockNull, typename MemHolder = MemVirtual<sizeof(PoolObj<T>)> >
class ListPool2;

template<typename T, typename LOCKTYPE, typename MemHolder>
class ListPool2
{
    enum
    {
        REVERSE_DATA = 0xcdcdcdcd,
        REVERSE_NUM  = 0x10,
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
    ListPool2():m_head(NULL),m_tail(NULL),m_used(0),m_totle(0)
    {
        m_head = AllocObj();
        m_tail = m_head;
        FOR_0_NUM(i, REVERSE_NUM)
        {
            PoolObjType* newobj = AllocObj();
            newobj->_last = m_tail;
            m_tail = newobj;
        }
    }
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
private:
    ptr_type AcquireNC()
    {
        G_LOCK(LOCKTYPE, _lock);
        return _AcquireNC();
    }
    //No Construct
    ptr_type _AcquireNC()
    {
        if (m_totle-m_used<=REVERSE_NUM)
        {
            PoolObjType* newobj = AllocObj();

            newobj->_last = m_tail;
            m_tail = newobj;

            return _AcquireNC();
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
    //Alloc a Obj
    PoolObjType* AllocObj()
    {
        PoolObjType* newobj = (PoolObjType*)m_mems.Alloc();
        AssertThrow(newobj, throw 1);
        newobj->_last = NULL;
#ifdef MEM_TEST
        newobj->reverse = REVERSE_DATA;
#endif
        ++m_totle;
        return newobj;
    }
    //no destruct
    void ReleaseND(ptr_type _obj)
    {
        G_LOCK(LOCKTYPE, _lock);
        ObjHolder h(_obj);
#ifdef MEM_TEST
        AssertThrow(m_mems.Check(h.m_obj), throw 1);
        memset(_obj, 0, sizeof(T));
        AssertThrow(h.m_obj->_last == NULL, {h.m_obj->_last=NULL;throw 1;});
        AssertThrow(h.m_obj->reverse == REVERSE_DATA, {h.m_obj->reverse=REVERSE_DATA;throw 1;});
#endif
        m_head->_last = h.m_obj;
        m_head = h.m_obj;
        --m_used;
    }

private:
    PoolObjType *m_head,*m_tail;
    UINT32      m_used;
    UINT32      m_totle;
    MemHolder   m_mems;
    LOCKTYPE    _lock;
};
#pragma pack(pop)

/************************************************************************/
/* 单链表对象池,基于页面分配     END                                    */
/************************************************************************/