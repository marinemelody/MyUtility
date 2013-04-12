#pragma once


//if use UNICODE need dbghelp ver>6.3
#ifdef UNICODE
#define DBGHELP_TRANSLATE_TCHAR
#endif

#include <iostream>
#include <map>
#include <time.h>
#include <Dbghelp.h>

#include "Lock.h"

#ifdef _WIN64
#define FMT_ADDR "0x%016X"
#else
#define FMT_ADDR "0x%08X"
#endif


struct ModuleLoadedInfo
{
    tstring ModuleName;
    DWORD64 ModuleBase;
    ULONG ModuleSize;
    ModuleLoadedInfo& operator = (ModuleLoadedInfo const& rh)
    {
        ModuleName = rh.ModuleName;
        ModuleBase = rh.ModuleBase;
        ModuleSize = rh.ModuleSize;
        return *this;
    }
};
//����ģ��,���ߺ���
class DbgModule
{
public:
    typedef std::map<DWORD64, ModuleLoadedInfo> ModuleMgr;
public:
    DbgModule(void);
    ~DbgModule(void);
    //�������֡
    int ExportTraceBack(DWORD64 _eip, DWORD64 _ebp, DWORD64 _esp, UINT32 MAX_TRACE_STACK=10);
private:
    ModuleMgr   m_modules;
    HANDLE      m_hProcess;
    LockCrit    m_lock;
};
#define gDbgModue INSTANCE_SINGLETON_S(DbgModule)

//�ṹ���쳣���
class SEHException
{
    enum
    {
        BUFF_SIZE = 128,
    };
public:
    SEHException(EXCEPTION_POINTERS* pExp);
private:
    void GenerateExceptionInfo(EXCEPTION_POINTERS* pEInfo);
private:
    char _Msg[BUFF_SIZE];
    char _AddonMsg[BUFF_SIZE];
};
//�ṹ���쳣ת��
//to open SEH,Define SEH_OPEN
class SEHTranslator
{
    static void SEHTransFunc(unsigned int u, EXCEPTION_POINTERS* pExp)
    {
        throw SEHException(pExp);
    }
public:
    SEHTranslator():_func(NULL)
    {
        _func = ::_set_se_translator(SEHTranslator::SEHTransFunc);
    }
    ~SEHTranslator(){::_set_se_translator(_func);}
private:
    _se_translator_function _func;
};


#if defined(_M_IX86)
#define SIZE_PTR 4
typedef DWORD_PTR TYPE_PTR;//ָ������

//��ȡ��ǰIP,��ǰջ֡
#pragma auto_inline(off)
TYPE_PTR GetCurIPReg();
#pragma auto_inline(off)

//�����ǰ����
#define ExportCurTraceBack()                            \
    TYPE_PTR _ebp,_esp;                                 \
    __asm                                               \
     /**/                                               \
    {                                                   \
        __asm mov [_ebp], ebp                           \
        __asm mov [_esp], esp                           \
    }                                                   \
    gDbgModue.ExportTraceBack(GetCurIPReg(),_ebp,_esp);

#endif//defined(_M_IX86)



#if defined(_WIN32)
//��ȡ��ǰ������С
int GetMemSize(void* p);
#endif//defined(_WIN32)

