#include "StdAfx.h"
#include "TraceException.h"


PythonTraceBack::PythonTraceBack():pModule(NULL), pFuncTB(NULL)
{
    pModule = PyImport_ImportModule("traceback");//new reference
    if (!pModule) return;
    PyObject* pDict = PyModule_GetDict(pModule);//borrowed
    if (!pDict) return;
    pFuncTB = PyDict_GetItemString(pDict, "format_exception");//borrowed
}
PythonTraceBack::~PythonTraceBack()
{
    Py_XDECREF(pModule);
}
std::string PythonTraceBack::TraceBack()
{
    if (!pFuncTB)
        return "Python的Trace模块无法工作。";

    PythonRefer pr;
    std::string strErrorMsg;
    if (PyErr_Occurred() != NULL)
    {
        PyObject *type_obj, *value_obj, *traceback_obj;
        PyErr_Fetch(&type_obj, &value_obj, &traceback_obj);
        if (value_obj == NULL)
            return "无法获取Python的traceback信息。";

        PyErr_NormalizeException(&type_obj, &value_obj, 0);
        pr &type_obj&value_obj&traceback_obj;

        PyObject* pTraceInfo = PyObject_CallFunctionObjArgs(pFuncTB,type_obj, value_obj, traceback_obj,NULL);
        pr &pTraceInfo;
        if (!pTraceInfo)
            return "无法初始化Python的traceback信息。";

        int listSize = PyList_Size(pTraceInfo);
        for (int i=0;i < listSize;++i)
        {
            strErrorMsg += PyString_AsString(PyList_GetItem(pTraceInfo,i));
        }
    }
    return strErrorMsg;
}

