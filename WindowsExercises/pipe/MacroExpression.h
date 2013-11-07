#pragma once

//AssertThrow
#ifdef _DEBUG
#define AssertThrow(expr,throwData) assert(expr);
#else
#define AssertThrow(expr,throwexpr) if (!(expr)) {throwexpr;};
#endif

//FOR_0_NUM
#define FOR_0_NUM(arg, end) for(size_t i=0;i<end;++i)



