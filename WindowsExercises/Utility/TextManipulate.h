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
        //Windows�����������
        static TCHAR const* GetLastErrorStr()
        {//todo tls
            //_THREAD int a = 0;
            //cout << a++ << endl;
            static TCHAR m_msg[_MSG_BUFF_SIZE];
            DWORD err = GetLastError();
            FormatMessage(FORMAT_MESSAGE_FROM_SYSTEM, NULL, err, 0, m_msg, _MSG_BUFF_SIZE, NULL);
            return m_msg;
        }
        //Windows�����������
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
    //�������,ת���������ĵ���������
    //���뷽ʽֻ��GBK����Ч,BIG5���޼���
    //@return:true(no error occured)
    bool ConvertSimple2Tradition(std::string const& strin, std::string& strout);
    bool ConvertSimple2Tradition(std::wstring const& strin, std::wstring& strout);
    //�������,ת���������ĵ���������
    //@return:true(no error occured)
    bool ConvertTradition2Simple(std::string const& strin, std::string& strout);
    bool ConvertTradition2Simple(std::wstring const& strin, std::wstring& strout);
    //ת�뵽UNICODE:936��������,950��������,65001UTF8
    //@return:true(no error occured)
    bool ConvertToUnicode(std::string const& strin, std::wstring& strout, UINT cp = 936);
    //ת�뵽������:936��������,950��������
    //@return:true(no error occured)
    bool ConvertToNative(std::wstring const& strin, std::string& strout, UINT cp = 936);
    //GBKת��BIG5
    bool ConvertGBKtoBIG5(std::string const& strin, std::string& strout);
    //BIG5ת��GBK
    bool ConvertBIG5toGBK(std::string const& strin, std::string& strout);
    //BIG5ת��GBK����
    bool ConvertBIG5toGBKS(std::string const& strin, std::string& strout);
}


