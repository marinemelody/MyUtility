#include "StdAfx.h"
#include "TextManipulate.h"

namespace TextManipulate
{

StrDef _strinit_;

//�������,ת���������ĵ���������
//���뷽ʽֻ��GBK����Ч,BIG5���޼���
//@return:true(no error occured)
bool ConvertSimple2Tradition(std::string const& strin, std::string& strout)
{
    strout.clear();
    if (strin.empty())
        return true;
    std::string::size_type len = strin.size()+1;
    char* buff = new char[len];
    LCMapStringA(0x0804, LCMAP_TRADITIONAL_CHINESE, strin.c_str(), strin.size(), buff, len);
    buff[len-1] = 0;
    strout = buff;
    delete[] buff;
    return true;
}
bool ConvertSimple2Tradition(std::wstring const& strin, std::wstring& strout)
{
    strout.clear();
    if (strin.empty())
        return true;
    std::wstring::size_type len = strin.size()+1;
    wchar_t* buff = new wchar_t[len];
    LCMapStringW(0x0804, LCMAP_TRADITIONAL_CHINESE, strin.c_str(), strin.size(), buff, len);
    buff[len-1] = 0;
    strout = buff;
    delete[] buff;
    return true;
}
//�������,ת���������ĵ���������
//@return:true(no error occured)
bool ConvertTradition2Simple(std::string const& strin, std::string& strout)
{
    strout.clear();
    if (strin.empty())
        return true;
    std::string::size_type len = strin.size()+1;
    char* buff = new char[len];
    LCMapStringA(0x0804, LCMAP_SIMPLIFIED_CHINESE, strin.c_str(), strin.size(), buff, len);
    buff[len-1] = 0;
    strout = buff;
    delete[] buff;
    return true;
}
bool ConvertTradition2Simple(std::wstring const& strin, std::wstring& strout)
{
    strout.clear();
    if (strin.empty())
        return true;
    std::wstring::size_type len = strin.size()+1;
    wchar_t* buff = new wchar_t[len];
    LCMapStringW(0x0804, LCMAP_SIMPLIFIED_CHINESE, strin.c_str(), strin.size(), buff, len);
    buff[len-1] = 0;
    strout = buff;
    delete[] buff;
    return true;
}
//ת�뵽UNICODE:936��������,950��������
//@return:true(no error occured)
bool ConvertToUnicode(std::string const& strin, std::wstring& strout, UINT cp/* = 936*/)
{
    strout.clear();
    if (strin.empty())
        return true;

    int len = MultiByteToWideChar(cp, 0, strin.c_str(), strin.size(), NULL, 0);
    if (len <= 0) 
        return false;

    wchar_t* buff = new wchar_t[len+1];
    MultiByteToWideChar(cp, 0, strin.c_str(), strin.size(), buff, len);
    buff[len] = 0;
    strout = buff;
    delete[] buff;
    return true;
}
//ת�뵽������:936��������,950��������
//@return:true(no error occured)
bool ConvertToNative(std::wstring const& strin, std::string& strout, UINT cp/* = 936*/)
{
    strout.clear();
    if (strin.empty())
        return true;

    BOOL isflag = FALSE;
    int len = WideCharToMultiByte(cp, 0, strin.c_str(), strin.size(), NULL, 0, NULL, &isflag);
    if (len <= 0) 
        return false;

    char* buff = new char[len+1];
    WideCharToMultiByte(cp, 0, strin.c_str(), strin.size(), buff, len, NULL, NULL);
    buff[len] = 0;
    strout = buff;
    delete[] buff;
    return true;
}
//GBKת��BIG5
bool ConvertGBKtoBIG5(std::string const& strin, std::string& strout)
{
    strout.clear();
    if (strin.empty())
        return true;

    std::string gb_tradition;
    std::wstring un_tradition;
    if(!ConvertSimple2Tradition(strin, gb_tradition)) return false;
    if(!ConvertToUnicode(gb_tradition, un_tradition)) return false;
    return ConvertToNative(un_tradition, strout, 950);
}
//BIG5ת��GBK
bool ConvertBIG5toGBK(std::string const& strin, std::string& strout)
{
    strout.clear();
    if (strin.empty())
        return true;

    std::wstring un_tradition;
    if(!ConvertToUnicode(strin, un_tradition, 950)) return false;
    return ConvertToNative(un_tradition, strout);
}
//BIG5ת��GBK����
bool ConvertBIG5toGBKS(std::string const& strin, std::string& strout)
{
    strout.clear();
    if (strin.empty())
        return true;

    std::wstring un_simple, un_tradition;
    if(!ConvertToUnicode(strin, un_tradition, 950)) return false;
    if(!ConvertTradition2Simple(un_tradition, un_simple)) return false;
    return ConvertToNative(un_simple, strout);
}

}

