#pragma once

#include "TypeDefine.h"

namespace Traits
{
    //用于判断是否内置类型
    struct _Trait_Scalar; //内置类型
    struct _Trait_NonScalar; //自定义类型
    template<typename T>
    struct _Test_Scalar
    {
        typedef _Trait_NonScalar _Tag;
    };

    template<>
    struct _Test_Scalar<Boolean>
    {
        typedef _Trait_Scalar _Tag;
    };
    template<>
    struct _Test_Scalar<INT8>
    {
        typedef _Trait_Scalar _Tag;
    };
    template<>
    struct _Test_Scalar<INT16>
    {
        typedef _Trait_Scalar _Tag;
    };
    template<>
    struct _Test_Scalar<INT32>
    {
        typedef _Trait_Scalar _Tag;
    };
    template<>
    struct _Test_Scalar<INT64>
    {
        typedef _Trait_Scalar _Tag;
    };
    template<>
    struct _Test_Scalar<UINT8>
    {
        typedef _Trait_Scalar _Tag;
    };
    template<>
    struct _Test_Scalar<UINT16>
    {
        typedef _Trait_Scalar _Tag;
    };
    template<>
    struct _Test_Scalar<UINT32>
    {
        typedef _Trait_Scalar _Tag;
    };
    template<>
    struct _Test_Scalar<UINT64>
    {
        typedef _Trait_Scalar _Tag;
    };
    template<>
    struct _Test_Scalar<Float>
    {
        typedef _Trait_Scalar _Tag;
    };
    template<>
    struct _Test_Scalar<Double>
    {
        typedef _Trait_Scalar _Tag;
    };
    template<>
    struct _Test_Scalar<const INT8>
    {
        typedef _Trait_Scalar _Tag;
    };
    template<>
    struct _Test_Scalar<const INT16>
    {
        typedef _Trait_Scalar _Tag;
    };
    template<>
    struct _Test_Scalar<const INT32>
    {
        typedef _Trait_Scalar _Tag;
    };
    template<>
    struct _Test_Scalar<const INT64>
    {
        typedef _Trait_Scalar _Tag;
    };
    template<>
    struct _Test_Scalar<const UINT8>
    {
        typedef _Trait_Scalar _Tag;
    };
    template<>
    struct _Test_Scalar<const UINT16>
    {
        typedef _Trait_Scalar _Tag;
    };
    template<>
    struct _Test_Scalar<const UINT32>
    {
        typedef _Trait_Scalar _Tag;
    };
    template<>
    struct _Test_Scalar<const UINT64>
    {
        typedef _Trait_Scalar _Tag;
    };
    template<>
    struct _Test_Scalar<const Float>
    {
        typedef _Trait_Scalar _Tag;
    };
    template<>
    struct _Test_Scalar<const Double>
    {
        typedef _Trait_Scalar _Tag;
    };
    template<typename T>
    struct _Test_Scalar<T*>
    {
        typedef _Trait_Scalar _Tag;
    };

    //提取指针的引用类型
    template<typename T>
    struct TraitPoint
    {
        typedef T Value_type;
    };
    template<typename T>
    struct TraitPoint<T*>
    {
        typedef typename TraitPoint<T>::Value_type Value_type;
    };
}




