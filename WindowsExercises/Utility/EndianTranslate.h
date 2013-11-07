#pragma once

#include "TypeDefine.h"

#define SwapEndian16(v)    (((UINT16)v >> 8) | (((UINT16)v << 8) & 0xff00))
#define SwapEndian32(v)    (((UINT32)v >> 24) | (((UINT32)v >> 8) & 0xff00) | (((UINT32)v << 8) & 0xff0000) | ((UINT32)v << 24))
#ifdef _WIN64
#define SwapEndian64(v)    (((UINT64)v >> 56) | (((UINT64)v >> 40) & 0xff00) | (((UINT64)v >> 24) & 0xff0000) | (((UINT64)v >> 8) & 0xff000000) | (((UINT64)v << 8) & 0xff00000000)| (((UINT64)v << 24) & 0xff0000000000)| (((UINT64)v << 40) & 0xff000000000000)| (((UINT64)v << 56) & 0xff00000000000000))
#else
UINT64 SwapEndian64(UINT64 v)
{
    UINT64 ret = 0;
    UINT32 seed = (UINT32)v;
    ((UINT32*)&ret)[1] = SwapEndian32(seed);
    seed = v >> 32;
    ((UINT32*)&ret)[0] = SwapEndian32(seed);
    return ret;
}
#endif
