#pragma once

#include <string>

namespace TextManipulate
{

    class StrDef
    {
        enum
        {
            _MSG_BUFF_SIZE = 256,
        };
    public:
        StrDef()
        {
    #ifdef UNICODE
            setlocale(LC_ALL, "");
    #endif
        }
        //Windows错误文字输出
        static TCHAR const* GetLastErrorStr()
        {//todo tls
            //_THREAD int a = 0;
            //cout << a++ << endl;
            static TCHAR m_msg[_MSG_BUFF_SIZE];
            DWORD err = GetLastError();
            FormatMessage(FORMAT_MESSAGE_FROM_SYSTEM, NULL, err, 0, m_msg, _MSG_BUFF_SIZE, NULL);
            return m_msg;
        }
        //Windows错误文字输出
        static TCHAR const* GetSystemErrorStr(DWORD errcode)
        {
            static TCHAR m_msg[_MSG_BUFF_SIZE];
            FormatMessage(FORMAT_MESSAGE_FROM_SYSTEM, NULL, errcode, 0, m_msg, _MSG_BUFF_SIZE, NULL);
            return m_msg;
        }
    };
/************************************************************************/
/*             International                                            */
/************************************************************************/
    //在码表内,转换简体中文到繁体中文
    //内码方式只对GBK码有效,BIG5码无简体
    //@return:true(no error occured)
    bool ConvertSimple2Tradition(std::string const& strin, std::string& strout);
    bool ConvertSimple2Tradition(std::wstring const& strin, std::wstring& strout);
    //在码表内,转换繁体中文到简体中文
    //@return:true(no error occured)
    bool ConvertTradition2Simple(std::string const& strin, std::string& strout);
    bool ConvertTradition2Simple(std::wstring const& strin, std::wstring& strout);
    //转码到UNICODE:936简体中文,950繁体中文,65001UTF8
    //@return:true(no error occured)
    bool ConvertToUnicode(std::string const& strin, std::wstring& strout, UINT cp = 936);
    //转码到本地码:936简体中文,950繁体中文
    //@return:true(no error occured)
    bool ConvertToNative(std::wstring const& strin, std::string& strout, UINT cp = 936);
    //GBK转到BIG5
    bool ConvertGBKtoBIG5(std::string const& strin, std::string& strout);
    //BIG5转到GBK
    bool ConvertBIG5toGBK(std::string const& strin, std::string& strout);
    //BIG5转到GBK简体
    bool ConvertBIG5toGBKS(std::string const& strin, std::string& strout);
}


