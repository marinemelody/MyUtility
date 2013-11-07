

#define FUNC_PARAM_L_N  PRE_MACRO(_TEST_NUM,CAT_TEMPLATE_L)
#define FUNC_PARAM_R_N  PRE_MACRO(_TEST_NUM,CAT_TEMPLATE_R)

#define FUNC_PARAM_L  ENUM_TEMPLATE_PARAMS(_TEST_NUM,CAT_TEMPLATE_PARAM_L)
#define FUNC_PARAM_R  ENUM_TEMPLATE_PARAMS(_TEST_NUM,CAT_TEMPLATE_PARAM_R)
#define TEMPLATE_PARAM ENUM_TEMPLATE_PARAMS(_TEST_NUM,CAT_TEMPLATE_PARAM)

#if _TEST_NUM_LAST>0
#define FUNC_PARAM_L_LAST  ENUM_TEMPLATE_PARAMS(_TEST_NUM_LAST,CAT_TEMPLATE_L)
#define FUNC_PARAM_R_LAST  ENUM_TEMPLATE_PARAMS(_TEST_NUM_LAST,CAT_TEMPLATE_R)
#endif

template<TEMPLATE_PARAM>
bool Greater(FUNC_PARAM_L, FUNC_PARAM_R)
{
    if (FUNC_PARAM_L_N>FUNC_PARAM_R_N)
        return true;

#if _TEST_NUM_LAST>0
    if (FUNC_PARAM_L_N==FUNC_PARAM_R_N)
        return Greater(FUNC_PARAM_L_LAST,FUNC_PARAM_R_LAST);
#endif

    return false;
}

template<TEMPLATE_PARAM>
bool Smaller(FUNC_PARAM_L, FUNC_PARAM_R)
{
    if (FUNC_PARAM_L_N<FUNC_PARAM_R_N)
        return true;

#if _TEST_NUM_LAST>0
    if (FUNC_PARAM_L_N==FUNC_PARAM_R_N)
        return Smaller(FUNC_PARAM_L_LAST,FUNC_PARAM_R_LAST);
#endif

    return false;
}

template<TEMPLATE_PARAM>
bool Equal(FUNC_PARAM_L, FUNC_PARAM_R)
{
    if (FUNC_PARAM_L_N!=FUNC_PARAM_R_N)
        return false;

#if _TEST_NUM_LAST>0
    return Equal(FUNC_PARAM_L_LAST,FUNC_PARAM_R_LAST);
#endif

    return true;
}

#undef FUNC_PARAM_L_N
#undef FUNC_PARAM_R_N

#undef FUNC_PARAM_L
#undef FUNC_PARAM_R
#undef TEMPLATE_PARAM

#undef FUNC_PARAM_L_LAST
#undef FUNC_PARAM_R_LAST