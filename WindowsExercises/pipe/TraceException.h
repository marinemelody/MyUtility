#pragma once

#ifdef _DEBUG
#undef _DEBUG
#include "python.h"
#define _DEBUG
#endif
#include <set>
#include <string>

class PythonRefer
{
public:
    ~PythonRefer()
    {
        for(std::set<PyObject*>::iterator itr = _pos.begin();itr!=_pos.end();++itr)
        {
            Py_XDECREF(*itr);
        }
    }

    PythonRefer& operator&(PyObject* po){if(po)_pos.insert(po);return*this;}

private:
    std::set<PyObject*> _pos;
};

class PythonTraceBack
{
public:
    PythonTraceBack();
    ~PythonTraceBack();

    bool Init();

    std::string TraceBack();
private:
    PyObject* pModule;  //new reference
    PyObject* pFuncTB;  //borrowed
};



