#include "StdAfx.h"
#include "TraceException.h"


PythonTraceBack::PythonTraceBack():pModule(NULL), pFuncTB(NULL)
{
    //Init();
}
PythonTraceBack::~PythonTraceBack()
{
    Py_XDECREF(pModule);
}
bool PythonTraceBack::Init()
{
    pModule = PyImport_ImportModule("traceback");//new reference
    if (!pModule) return false;
    PyObject* pDict = PyModule_GetDict(pModule);//borrowed
    if (!pDict) return false;
    pFuncTB = PyDict_GetItemString(pDict, "format_exception");//borrowed
    return (pFuncTB!=NULL);
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
        PyErr_NormalizeException(&type_obj, &value_obj, 0);
        pr &type_obj&value_obj&traceback_obj;
        if (value_obj == NULL)
            return "无法获取Python的traceback信息。";


        PyObject* pTraceInfo = PyObject_CallFunctionObjArgs(pFuncTB,type_obj, value_obj, traceback_obj,NULL);
        pr &pTraceInfo;
        if (!pTraceInfo)
            return "无法输出Python的traceback信息。";

        int listSize = PyList_Size(pTraceInfo);
        for (int i=0;i < listSize;++i)
        {
            strErrorMsg += PyString_AsString(PyList_GetItem(pTraceInfo,i));
        }
    }
    return strErrorMsg;
}

//std::string PythonTraceBack::TraceBack()
//{
//    if (!pFuncTB)
//        return "Python的Trace模块无法工作。";
//
//    PythonRefer pr;
//    std::string strErrorMsg;
//    if (PyErr_Occurred() != NULL)
//    {
//        PyObject *type_obj, *value_obj, *traceback_obj;
//        PyErr_Fetch(&type_obj, &value_obj, &traceback_obj);
//        if (value_obj == NULL)
//            return "无法获取Python的traceback信息。";
//
//        PyErr_NormalizeException(&type_obj, &value_obj, 0);
//        pr &type_obj&value_obj&traceback_obj;
//
//        if (traceback_obj != NULL) {
//            l = snprintf(buf_p, szbuf, _("\n\nTraceback:\n"));
//            buf_p += l;
//            szbuf -= l;
//
//            PyTracebackObject *traceback = (PyTracebackObject *)traceback_obj;
//            for (;traceback && szbuf > 0; traceback = traceback->tb_next) {
//                codeobj = traceback->tb_frame->f_code;
//                l = snprintf(buf_p, szbuf, "%s: %s(# %d)\n",
//                    PyString_AsString(codeobj->co_name),
//                    PyString_AsString(codeobj->co_filename),
//                    traceback->tb_lineno);
//                buf_p += l;
//                szbuf -= l;
//            }
//
//    }
//    return strErrorMsg;
//}
