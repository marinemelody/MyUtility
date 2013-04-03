#pragma once

#include "Lock.h"

//单件,使用时分配
template<typename T>
class SingletonDyn
{
public:
    static T& Instance()
    {
        if (!_inst)
        {
            LOCK_SPIN_LOCAL(lock);
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
T* volatile SingletonDyn<T>::_inst = NULL;

#define INSTANCE_SINGLETON_D(cls) SingletonDyn<cls>::Instance()

//单件,user段静态分配
template<typename T>
class SingletonStatic
{
public:
    static T& Instance()
    {
        return _inst;
    }
private:
    static T _inst;
};
template<typename T>
T SingletonStatic<T>::_inst;

#define INSTANCE_SINGLETON_S(cls) SingletonStatic<cls>::Instance()
//#define INIT_SINGLETON_S(cls)   \
//    template<>  \
//    cls SingletonStatic<cls>::_inst;    \
