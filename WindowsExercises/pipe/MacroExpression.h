#pragma once

//AssertThrow
#ifdef _DEBUG
#define AssertThrow(expr,throwexpr) assert(expr);
#else
#define AssertThrow(expr,throwexpr) if (!(expr)) {throwexpr;};
#endif

//FOR_0_NUM
#define FOR_0_NUM(arg, end) for(size_t i=0;i<end;++i)

//convert a number to mask
#define TOMASK(x)   (1<<x)
#define HAS_MASK(f,x)   (f&(1<<x))

