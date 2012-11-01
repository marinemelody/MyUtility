#pragma once

#include "Lock.h"

template<typename T>
class Singleton
{
public:
    static T& Instance()
    {
        if (!_inst)
        {
            LOCK_FREE(lock);
            if (!_inst)
            {
                _inst = new T;
                atexit(Destroy);
            }
        }
        return *_inst;
    }
    static void Destroy()
    {
        delete _inst;
    }
private:
    static T* volatile _inst;
};

template<typename T>
T* volatile Singleton<T>::_inst = NULL;

#define INSTANCE_SINGLETON(cls) Singleton<cls>::Instance()
