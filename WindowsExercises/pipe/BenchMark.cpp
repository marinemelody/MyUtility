#include "StdAfx.h"
#include "BenchMark.h"

using namespace std; 

#include "Utility/TextManipulate.h"
using namespace TextManipulate;
void BenchMark::BM_Text()
{
    string gb_simple = "´æ´¢4";
    string b5_tradition;
    ConvertGBKtoBIG5(gb_simple, b5_tradition);
    string gb_tradition;
    ConvertBIG5toGBK(b5_tradition, gb_tradition);
    string gb_ss;
    ConvertBIG5toGBKS(b5_tradition, gb_ss);

    wstring un_s;
    ConvertToUnicode(gb_simple, un_s);
    string jp_1;
    ConvertToNative(un_s, jp_1, 932);
    wstring un_t;
    ConvertSimple2Tradition(un_s ,un_t);
    string jp_2;
    ConvertToNative(un_t, jp_2, 932);
}

#include "Arithmetic/Greater.h"
void BenchMark::BM_Arithmetic_Greater()
{
    bool ss1 = Greater(1,2, 1,1);
    bool ss2 = Smaller(1,2, 1,3);
    bool ss3 = Equal(1,2, 1,1);

    std::cout << (ss1?"aaaa":"bbbbb") << std::endl;
    std::cout << (ss2?"aaaa":"bbbbb") << std::endl;
    std::cout << (ss3?"aaaa":"bbbbb") << std::endl;
}
