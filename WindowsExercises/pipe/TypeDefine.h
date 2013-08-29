#pragma once

#ifdef UNICODE
typedef std::wstring tstring;
#else
typedef std::string tstring;
#endif

//类型定义
typedef bool Boolean;

// typedef __int8          INT8;
// typedef __int16         INT16;
// typedef __int32         INT32;
// typedef __int64         INT64;
// 
// typedef unsigned __int8     UINT8;
// typedef unsigned __int16    UINT16;
// typedef unsigned __int32    UINT32;
// typedef unsigned __int64    UINT64;

typedef float   Float;
typedef double  Double;