#pragma once

#include "TypeDefine.h"
/************************************************************************/
/* MD5 BEGIN                                                            */
/************************************************************************/
class MD5
{
public:
    MD5();
    //计算输入串的MD5码
    void Calc(char const* src,UINT64 const nlength);
    void Calc(std::string const& str){Calc(str.c_str(), str.size());}
    //返回MD5码的字符串
    std::string Result();
    //检查MD5码
    Boolean Check(std::string const& strMd5);
private:
    UINT32 _A,_B,_C,_D;
    char appendedA[64];
    char appendedB[64];
private:
    void _CalcRound(char const* group);
};
////////////////////////////////MD5 END///////////////////////////////////



