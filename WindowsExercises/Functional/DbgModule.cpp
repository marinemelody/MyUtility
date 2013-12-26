#include "StdAfx.h"
#include "windows.h"
#include <eh.h>
#include <tchar.h>
#include <stdio.h>

#include "DbgModule.h"
#include "Singleton.h"

SEHTranslator _seh;

static BOOL CALLBACK MyEnumerateLoadedModulesProc64(PCTSTR ModuleName,DWORD64 ModuleBase,ULONG ModuleSize,PVOID UserContext)
{
    ModuleLoadedInfo info;
    info.ModuleBase = ModuleBase;
    info.ModuleName = ModuleName;
    info.ModuleSize = ModuleSize;
    DbgModule::ModuleMgr* pModules = (DbgModule::ModuleMgr*)UserContext;
    (*pModules)[ModuleBase] = info;
    return TRUE;
}

static void GenerateMiniDump(EXCEPTION_POINTERS* pExp)
{
    time_t tNow;
    time(&tNow);
    tm _tm;
    localtime_s(&_tm, &tNow);

    TCHAR strT[64];
    _tcsftime(strT, sizeof(strT)/sizeof(TCHAR), _T("./minidump/minidump(%Y%m%d_%H%M%S).dmp"), &_tm);
    HANDLE hFile = CreateFile(strT, GENERIC_WRITE|GENERIC_READ, FILE_SHARE_READ, NULL, CREATE_ALWAYS, 0, NULL);
    if (hFile == INVALID_HANDLE_VALUE)
    {
        //LOG
        return;
    }
    MINIDUMP_EXCEPTION_INFORMATION meinfo;
    meinfo.ExceptionPointers = pExp;
    meinfo.ThreadId = GetCurrentThreadId();
    meinfo.ClientPointers = FALSE;
    MiniDumpWriteDump(GetCurrentProcess(), GetCurrentProcessId(), hFile, MiniDumpNormal, &meinfo, NULL, NULL);
    CloseHandle(hFile);
}

static LONG WINAPI MyUnhandledExceptionFilter(struct _EXCEPTION_POINTERS* ExceptionInfo)
{
    GenerateMiniDump(ExceptionInfo);
    return EXCEPTION_EXECUTE_HANDLER;
}

static char const* TransExceptionCode(DWORD code)
{
    switch(code)
    {
    case EXCEPTION_ACCESS_VIOLATION:
        return "EXCEPTION_ACCESS_VIOLATION";
    case EXCEPTION_ARRAY_BOUNDS_EXCEEDED:
        return "EXCEPTION_ARRAY_BOUNDS_EXCEEDED";
    case EXCEPTION_BREAKPOINT:
        return "EXCEPTION_BREAKPOINT";
    case EXCEPTION_DATATYPE_MISALIGNMENT:
        return "EXCEPTION_DATATYPE_MISALIGNMENT";
    case EXCEPTION_FLT_DENORMAL_OPERAND:
        return "EXCEPTION_FLT_DENORMAL_OPERAND";
    case EXCEPTION_FLT_DIVIDE_BY_ZERO:
        return "EXCEPTION_FLT_DIVIDE_BY_ZERO";
    case EXCEPTION_FLT_INEXACT_RESULT:
        return "EXCEPTION_FLT_INEXACT_RESULT";
    case EXCEPTION_FLT_INVALID_OPERATION:
        return "EXCEPTION_FLT_INVALID_OPERATION";
    case EXCEPTION_FLT_OVERFLOW:
        return "EXCEPTION_FLT_OVERFLOW";
    case EXCEPTION_FLT_STACK_CHECK:
        return "EXCEPTION_FLT_STACK_CHECK";
    case EXCEPTION_FLT_UNDERFLOW:
        return "EXCEPTION_FLT_UNDERFLOW";
    case EXCEPTION_ILLEGAL_INSTRUCTION:
        return "EXCEPTION_ILLEGAL_INSTRUCTION";
    case EXCEPTION_IN_PAGE_ERROR:
        return "EXCEPTION_IN_PAGE_ERROR";
    case EXCEPTION_INT_DIVIDE_BY_ZERO:
        return "EXCEPTION_INT_DIVIDE_BY_ZERO";
    case EXCEPTION_INT_OVERFLOW:
        return "EXCEPTION_INT_OVERFLOW";
    case EXCEPTION_INVALID_DISPOSITION:
        return "EXCEPTION_INVALID_DISPOSITION";
    case EXCEPTION_NONCONTINUABLE_EXCEPTION:
        return "EXCEPTION_NONCONTINUABLE_EXCEPTION";
    case EXCEPTION_PRIV_INSTRUCTION:
        return "EXCEPTION_PRIV_INSTRUCTION";
    case EXCEPTION_SINGLE_STEP:
        return "EXCEPTION_SINGLE_STEP";
    case EXCEPTION_STACK_OVERFLOW:
        return "EXCEPTION_STACK_OVERFLOW";
    }
    return "UNKNOW_EXCEPTION";
}

DbgModule::DbgModule(void)
{
    m_hProcess = GetCurrentProcess();
    //设置未处理异常
    ::SetUnhandledExceptionFilter(MyUnhandledExceptionFilter);
    //获取加载模块信息
    EnumerateLoadedModules64(m_hProcess, MyEnumerateLoadedModulesProc64, &m_modules);
    //初始化符号信息
    SymSetOptions(SYMOPT_UNDNAME | SYMOPT_DEFERRED_LOADS);
    if (!SymInitialize(m_hProcess,NULL, TRUE))
    {
        std::cout << "符号信息不存在" << std::endl;
    }
}

DbgModule::~DbgModule(void)
{
}

int DbgModule::ExportTraceBack(LPEXCEPTION_POINTERS pExp, UINT32 MAX_TRACE_STACK/*=10*/)
{
    return ExportTraceBack(pExp->ContextRecord->Eip, pExp->ContextRecord->Ebp, pExp->ContextRecord->Esp, MAX_TRACE_STACK);
}

int DbgModule::ExportTraceBack(DWORD64 _eip, DWORD64 _ebp, DWORD64 _esp, UINT32 MAX_TRACE_STACK/*=10*/)
{
    //dbgHelp.dll不支持多线程
    LockGuard<LockCrit> __g(m_lock);
    //初始化帧信息
    STACKFRAME64 _sf;
    memset(&_sf, 0, sizeof(_sf));
    _sf.AddrPC.Mode = AddrModeFlat;
    _sf.AddrPC.Offset = _eip;
    _sf.AddrFrame.Mode = AddrModeFlat;
    _sf.AddrFrame.Offset = _ebp;
    _sf.AddrStack.Mode = AddrModeFlat;
    _sf.AddrStack.Offset = _esp;

    CONTEXT _ct;
    //遍历调用栈
    DWORD64 tbs[15]= {0};
    int maxtrace = 15;
    int curtrace = 0;
    while(curtrace < maxtrace)
    {
        if (!StackWalk64(IMAGE_FILE_MACHINE_I386, m_hProcess, GetCurrentThread(), &_sf, &_ct, NULL, SymFunctionTableAccess64, SymGetModuleBase64, NULL))
            break;
        tbs[curtrace] = _sf.AddrPC.Offset;
        ++curtrace;
    }
    
    //初始化接收参数
#define MAX_NAME_LEN 128
    char si_buff[sizeof(SYMBOL_INFO)+sizeof(TCHAR)*MAX_NAME_LEN] = {0};
    PSYMBOL_INFO psi = (PSYMBOL_INFO)si_buff;
    psi->SizeOfStruct = sizeof(SYMBOL_INFO);
    psi->MaxNameLen = MAX_NAME_LEN;

    IMAGEHLP_LINE64 li;
    memset(&li, 0, sizeof(li));
    li.SizeOfStruct = sizeof(IMAGEHLP_LINE64);
    //解析栈信息
    for (int i=0;i<curtrace;++i)
    {
        DWORD64 dwDisplacement;
        if (SymFromAddr(m_hProcess, tbs[i], &dwDisplacement, psi))
        {
            DWORD dwDisplacement2;
            SymGetLineFromAddr64(m_hProcess, tbs[i], &dwDisplacement2, &li);

            DWORD64 _baseaddr = SymGetModuleBase64(m_hProcess, tbs[i]);
            if(m_modules.find(_baseaddr)!=m_modules.end())
            {
                std::cout << m_modules[_baseaddr].ModuleName.c_str() << "!" << psi->Name << ":" << (li.FileName?li.FileName:"No FileName") << "(Line" << li.LineNumber << ")" << std::endl;
            }
        }
        else
        {
            // SymFromAddr failed
            int error = GetLastError();
            printf("SymFromAddr returned error : %d\n", error);
        }

    }
    SetLastError(0);
    return 0;
}

int SEH_FILTER(LPEXCEPTION_POINTERS pExp)
{
    gDbgModue.ExportTraceBack(pExp);

    return EXCEPTION_EXECUTE_HANDLER;
}

SEHException::SEHException(EXCEPTION_POINTERS* pExp)
{
    GenerateExceptionInfo(pExp);
}

void SEHException::GenerateExceptionInfo(EXCEPTION_POINTERS* pExp)
{
    PEXCEPTION_RECORD pEInfo = pExp->ExceptionRecord;
    _snprintf_s(_Msg, BUFF_SIZE-1, "%s(0x%08X):Occured at code("FMT_ADDR")", TransExceptionCode(pEInfo->ExceptionCode), pEInfo->ExceptionCode, pEInfo->ExceptionAddress);
    _Msg[BUFF_SIZE-1] = 0;
    _AddonMsg[0] = 0;
    switch(pEInfo->ExceptionCode)
    {
    case EXCEPTION_ACCESS_VIOLATION:
        {//访问违规
            char* sOp = "Excute";
            if (pEInfo->ExceptionInformation[0]==0)
                sOp = "Read";
            else if (pEInfo->ExceptionInformation[0]==1)
                sOp = "Write";
            _snprintf_s(_AddonMsg, BUFF_SIZE-1, "attemped to %s invalid memory at "FMT_ADDR, sOp, pEInfo->ExceptionInformation[1]);
            _AddonMsg[BUFF_SIZE-1] = 0;
        }break;
    case EXCEPTION_IN_PAGE_ERROR:
        {
            char* sOp = "Excute";
            if (pEInfo->ExceptionInformation[0]==0)
                sOp = "Read";
            else if (pEInfo->ExceptionInformation[0]==1)
                sOp = "Write";
            _snprintf_s(_AddonMsg, BUFF_SIZE-1, "attemped to %s invalid memory at "FMT_ADDR"(%d)", sOp, pEInfo->ExceptionInformation[1], pEInfo->ExceptionInformation[2]);
            _AddonMsg[BUFF_SIZE-1] = 0;
        }break;
    }
    GenerateMiniDump(pExp);
}

#if defined(_M_IX86)
TYPE_PTR GetCurIPReg()
{
    TYPE_PTR ipreg;
    __asm
    {
        mov eax, [ebp + SIZE_PTR]  // Get the return address out of the current stack frame
        mov [ipreg], eax    // Put the return address into the variable we'll return
    }

    return ipreg;
}
#endif

// #if defined(_WIN32)
// //获取当前块分配大小
// #ifdef _DEBUG
// #define _CRTBLD
// #include <crtdbg.h>
// #include <dbgint.h>
// int GetMemSize(void* p)
// {
//     _CrtMemBlockHeader* _h = (_CrtMemBlockHeader*)((char*)p-sizeof(_CrtMemBlockHeader));
// 
//     return _h->nDataSize;
// }
// #else
// #pragma pack(1)
// struct _HEAP_ENTRY
// {
//     UINT16  _size_granularity;
//     UINT16  _pre_size;
//     UINT8   _SmallTagIndex;
//     UINT8   _flags;
//     UINT8   _unused_bytes;
//     UINT8   _SegmentIndex;
// };
// #pragma pack()
// int GetMemSize(void* p)
// {
//     _HEAP_ENTRY* _he = (_HEAP_ENTRY*)((char*)p-8);
// 
//     return _he->_size_granularity*8 - _he->_unused_bytes;
// }
// #endif
// 
// #endif//defined(_WIN32)


