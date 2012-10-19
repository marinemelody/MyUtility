// Pipe.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"

using namespace std;

DWORD WINAPI MyThread( LPVOID lpParam )
{
    HANDLE h_read = *(HANDLE*)lpParam;

    char buf[1024];
    while(1)
    {
        DWORD num;
        ReadFile(h_read, buf, 1024, &num, NULL);

        if (num>0)
        {
            cout << "good" << endl;
        }
    }

    return 0;
}

//提取指针的引用类型
template<typename T>
struct TraitPoint
{
    typedef T Value_type;
};
template<typename T>
struct TraitPoint<T*>
{
    typedef typename TraitPoint<T>::Value_type Value_type;
};

//包存储
class Packet
{
    friend class Serialzation;
    friend class Deserialize;
public:
    Packet(){}
    Packet(int len){}
public:
    virtual int pType(){return 0;}
    void append(char const* src, int len)
    {
        m_buff.append(src, len);
    }
    void fill(char val, int len)
    {
        m_buff.append(len, val);
    }
    string::size_type size() const{return m_buff.size();}
private:
    std::string m_buff;
};
//简单序列化
class Serialization
{
public:
    explicit Serialization(Packet& p):m_packet(p){}
private:
    Packet& m_packet;

public:
    template<typename T>
    Serialization& operator <<(T& t)
    {
        m_packet.append((char*)&t, sizeof(T));
        return *this;
    }
    template<typename T>
    Serialization& operator <<(T* t)
    {
        if (t)
            *this << *t;
        else
            m_packet.fill(0,(string::size_type)sizeof(typename TraitPoint<T>::Value_type));
        return *this;
    }
    template<>
    Serialization& operator <<(string& t)
    {
        m_packet.append(t.c_str(), t.length());
        m_packet.fill(0,1);
        return *this;
    }
};

//反序列化
class Deserialize
{
public:
    explicit Deserialize(Packet& p):m_packet(p){_off=0;}
private:
    Packet const& m_packet;
    string::size_type _off;

public:
    template<typename T>
    Deserialize& operator >>(T& t)
    {
        assert(m_packet.size()<=(sizeof(T)+_off));
        memcpy(&t, m_packet.m_buff.c_str()+_off, sizeof(T));
        _off += sizeof(T);
        return *this;
    }
    template<typename T>
    Deserialize& operator >>(T* t)
    {
        assert(m_packet.size()<=(sizeof(typename TraitPoint<T>::Value_type)+_off));
        if (t)
            *this >> *t;
        else
            _off += sizeof(typename TraitPoint<T>::Value_type);
        return *this;
    }
    template<>
    Deserialize& operator >>(string& t)
    {
        string::size_type _end = m_packet.m_buff.find_first_of((char)0, _off);
        assert(_end!=string::npos);
        t.append(m_packet.m_buff, _off, _end-_off+1);
        _off = _end+1;
        return *this;
    }
};


int _tmain(int argc, _TCHAR* argv[])
{
    do 
    {
        HANDLE h_read, h_write;

        SECURITY_ATTRIBUTES sattr;
        sattr.nLength = sizeof(sattr);
        sattr.lpSecurityDescriptor = NULL;
        sattr.bInheritHandle = TRUE;

        BOOL ret = CreatePipe(&h_read, &h_write, &sattr, 0);

        if (!ret)
        {
            std::cout << "CreatePipe Failed!" << GetLastError() << std::endl;
            break;
        }

        CreateThread(NULL, 0, MyThread, &h_read, 0, NULL);

        int const a = 3;
        int const* b = &a;
        int const** c = &b;

        Packet p;
        Serialization s(p);


        string g = "sldkfjie";
        s << g;
        s << c;


        string k;
        int l;
        Deserialize d(p);
        d >> &k >> &l;

        while (1)
        {
            char buf[10];
            cin.getline(buf, 10);
            DWORD num = strlen(buf);
            WriteFile(h_write, buf, num, &num, NULL);
        }
    } while (0);

    system("pause");
	return 0;
}

