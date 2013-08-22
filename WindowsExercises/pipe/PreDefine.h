#pragma once

#ifdef _DEBUG
#define AssertThrow(expr,throwData) assert(expr);
#else
#define AssertThrow(expr,throwexpr) if (!(expr)) {throwexpr};
#endif


