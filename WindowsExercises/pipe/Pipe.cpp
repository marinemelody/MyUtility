// Pipe.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"

using namespace std;

#include "tools/Serialize.h"
#include "tools/Singleton.h"

#include "PipeAnonymous.h"

#include "Arithmetic/Arithmetic.h"

static int countA = 0;
static int countB = 0;
static int verify = 0;

LockSpin lock_f;
LockCrit lock_c;

void LockTest(int a)
{
    LockGuard<LockSpin> g(lock_f);
    //LockGuard<LockCrit> g(lock_c);
    //LOCK_SPIN_LOCAL(lock);
    a?++countA:++countB;
    //++verify;
    //assert(verify==1);
    //--verify;
}

DWORD WINAPI MyThread( LPVOID lpParam )
{
    //HANDLE h_read = *(HANDLE*)lpParam;

    //char buf[1024];
    //while(1)
    //{
    //    DWORD num;
    //    ReadFile(h_read, buf, 1024, &num, NULL);

    //    Packet p;
    //    p.append(buf, num);
    //    Deserialize d(p);
    //    string ss;
    //    d >> ss;

    //    if (num>0)
    //    {
    //        cout << "recv:" << ss.c_str() << endl;
    //    }
    //}
    while(1)
    {
        LockTest(1);
    }

    return 0;
}

DWORD WINAPI MyThread2( LPVOID lpParam )
{
    //HANDLE h_read = *(HANDLE*)lpParam;

    //char buf[1024];
    //while(1)
    //{
    //    DWORD num;
    //    ReadFile(h_read, buf, 1024, &num, NULL);

    //    Packet p;
    //    p.append(buf, num);
    //    Deserialize d(p);
    //    string ss;
    //    d >> ss;

    //    if (num>0)
    //    {
    //        cout << "recv:" << ss.c_str() << endl;
    //    }
    //}
    while(1)
    {
        LockTest(0);
    }

    return 0;
}

#define gPipeAnonymous INSTANCE_SINGLETON(PipeAnonymous)

class A1
{
public:
    A1(){cout << "A1" << endl;}
};

class A2
{
public:
    A2(){cout << "A2" << endl;}
};
class A3
{
public:
    A3(){cout << "A3" << endl;}
};
class AA
{
public:
    AA(string const& s):ss(s), a1(), a2(), a3(){}
    operator char const*()
    {
        return ss.c_str();
    }
private:
    string ss;
    A2 a2;
    A1 a1;
    A3 a3;
};

void TestFunc()
{
    AA a("aaa");
    cout << a;
    try
    {
        AA b("bbb");
        cout << b;
        throw 1;
    }
    catch (int e)
    {
        cout << "catched!" << e << endl;
    }

    AA c("ccc");
    cout << c;

    throw 1;
}

template<typename T, INT LEN>
class A
{
    T& operator[](int index)
    {
        if(index<0 || index>=LEN)
            throw XXX;
        return _objs[index]
    }   
private:
    T _objs[LEN];
};

int _tmain(int argc, _TCHAR* argv[])
{
    //try
    //{
    //    int* a = NULL;
    //    *a = 3;
    //}
    //catch (...)
    //{
    //    std::cout << "CMemoryException" << std::endl;
    //    try
    //    {
    //        throw 1;
    //    }
    //    catch (...)
    //    {
    //        std::cout << "CMemoryException 2" << std::endl;
    //    }
    //}
    //Point a(0,0);
    //Point b(9,5);
    //vector<Point> path;
    //Arithmetic::BresenhamLine(a, b, path);
    //for (unsigned int i=0;i<path.size();++i)
    //{
    //    std::cout << "(" << path[i].x << "," << path[i].y << ")" <<std::endl;
    //}

    //HANDLE t1 = CreateThread(NULL, 0, MyThread, 0, 0, NULL);
    //HANDLE t2 = CreateThread(NULL, 0, MyThread2, 0, 0, NULL);

    //Sleep(5000);
    //SuspendThread(t1);
    //SuspendThread(t2);
    //cout<< countA << endl
    //    << countB << endl
    //    << countB+countA << endl;

    //do 
    //{
    //    if (!gPipeAnonymous.IsOk())
    //    {
    //        std::cout << "CreatePipe Failed!" << GetLastError() << std::endl;
    //        break;
    //    }

    //    HANDLE h_write = gPipeAnonymous.GetWriteHandle();
    //    HANDLE h_read  = gPipeAnonymous.GetReadHandle();
    //    CreateThread(NULL, 0, MyThread, &h_read, 0, NULL);

    //    Packet p;

    //    while (1)
    //    {
    //        char buf[10];
    //        cin.getline(buf, 10);
    //        string ss(buf);
    //        p.clear();
    //        Serialization s(p);
    //        s << ss;

    //        DWORD num;
    //        WriteFile(h_write, p.buff(), p.size(), &num, NULL);
    //    }
    //} while (0);

    int b = 0;
    int* c = &b;
    std::string a = "0";
    Packet msg;
    Serialization srl(msg);
    srl << c
        << a;
    Deserialize drl(msg) ;
    drl >> c
        >> a;
    typeid(c);

    system("pause");
    return 0;
}

