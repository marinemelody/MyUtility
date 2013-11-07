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

#include "Functional/Serialize.h"
void BenchMark::BM_Serialize()
{
    struct TestA
    {
        int a,b,c;
        DEFINE_COPY_SERIAL
    };

    struct TestB
    {
        int a,b,c;
        DEFINE_MEM_SERIAL(a&b&c)
    };
    string ss = "slkjdflk";
    Serialization s;
    TestA a = {0,1,2};
    TestB b = {0,-1,-2};
    s << a << b << ss;

    Deserialize dsr(s.packet());
    string c;
    TestA a1;
    TestB b1;
    dsr >> a1 >> b1 >> c;

    if (ss == c)
        std::cout << "BM_Serialize OK!" << endl;
}

#include "Arithmetic/Hash.h"
void BenchMark::BM_Hash()
{
    {
        MD5 m1;
        m1.Calc("");
        string ret = m1.Result();
        std::cout << ret << std::endl << (m1.Check("d41d8cd98f00b204e9800998ecf8427e")?"True":"False") << std::endl;
    }
    {
        MD5 m1;
        m1.Calc("a");
        string ret = m1.Result();
        std::cout << ret << std::endl << (m1.Check("0cc175b9c0f1b6a831c399e269772661")?"True":"False") << std::endl;
    }
    {
        MD5 m1;
        m1.Calc("abc");
        string ret = m1.Result();
        std::cout << ret << std::endl << (m1.Check("900150983cd24fb0d6963f7d28e17f72")?"True":"False") << std::endl;
    }
    {
        MD5 m1;
        m1.Calc("message digest");
        string ret = m1.Result();
        std::cout << ret << std::endl << (m1.Check("f96b697d7cb7938d525a2f31aaf161d0")?"True":"False") << std::endl;
    }
    {
        MD5 m1;
        m1.Calc("12345678901234567890123456789012345678901234567890123456");
        string ret = m1.Result();
        std::cout << ret << std::endl << (m1.Check("49F193ADCE178490E34D1B3A4EC0064C")?"True":"False") << std::endl;
    }
}

#define CRYPTOPP_ENABLE_NAMESPACE_WEAK 1
#include "../../cryptopp/md5.h"
USING_NAMESPACE(CryptoPP)
void BenchMark::BM_CryptoPP()
{
    UINT32 md5out[4];
    string teststr = "12345678901234567890123456789012345678901234567890123456";
    Weak::MD5 md5test;
    md5test.Update((const byte*)teststr.c_str(),teststr.size());
    md5test.Final((byte*)md5out);
}