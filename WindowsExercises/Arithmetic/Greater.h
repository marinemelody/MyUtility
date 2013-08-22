#pragma once

#define ENUM_TEMPLATE_PARAMS(n,m) ENUM_TEMPLATE_PARAM(n,m)
#define ENUM_TEMPLATE_PARAM(n,m) ENUM_TEMPLATE_PARAM_##n(m)
#define ENUM_TEMPLATE_PARAM_1(m) m(1)
#define ENUM_TEMPLATE_PARAM_2(m) m(2), ENUM_TEMPLATE_PARAM_1(m)
#define ENUM_TEMPLATE_PARAM_3(m) m(3), ENUM_TEMPLATE_PARAM_2(m)
#define ENUM_TEMPLATE_PARAM_4(m) m(4), ENUM_TEMPLATE_PARAM_3(m)
#define ENUM_TEMPLATE_PARAM_5(m) m(5), ENUM_TEMPLATE_PARAM_4(m)
#define ENUM_TEMPLATE_PARAM_6(m) m(6), ENUM_TEMPLATE_PARAM_5(m)


#define PRE_MACRO(n,m) m(n)


#define CAT_TEMPLATE_PARAM(n) typename T##n
#define CAT_TEMPLATE_PARAM_R(n) T##n r##n
#define CAT_TEMPLATE_PARAM_L(n) T##n l##n

#define CAT_TEMPLATE_R(n) r##n
#define CAT_TEMPLATE_L(n) l##n

#define _TEST_NUM 1
#define _TEST_NUM_LAST 0
#include "GreaterPre.h"
#undef _TEST_NUM
#undef _TEST_NUM_LAST

#define _TEST_NUM 2
#define _TEST_NUM_LAST 1
#include "GreaterPre.h"
#undef _TEST_NUM
#undef _TEST_NUM_LAST

#define _TEST_NUM 3
#define _TEST_NUM_LAST 2
#include "GreaterPre.h"
#undef _TEST_NUM
#undef _TEST_NUM_LAST

#define _TEST_NUM 4
#define _TEST_NUM_LAST 3
#include "GreaterPre.h"
#undef _TEST_NUM
#undef _TEST_NUM_LAST

#define _TEST_NUM 5
#define _TEST_NUM_LAST 4
#include "GreaterPre.h"
#undef _TEST_NUM
#undef _TEST_NUM_LAST

#undef CAT_TEMPLATE_PARAM
#undef CAT_TEMPLATE_PARAM_R
#undef CAT_TEMPLATE_PARAM_L

#undef CAT_TEMPLATE_R
#undef CAT_TEMPLATE_L
