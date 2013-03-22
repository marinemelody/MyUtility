// Pipe.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"

using namespace std;

#include "Functional/Serialize.h"
#include "Functional/Singleton.h"

#include "PipeAnonymous.h"

#include "Arithmetic/Arithmetic.h"


DWORD WINAPI MyThread( LPVOID lpParam )
{
    return 0;
}

DWORD WINAPI MyThread2( LPVOID lpParam )
{
    return 0;
}

#define gPipeAnonymous INSTANCE_SINGLETON(PipeAnonymous)

#include "BenchMark.h"


//#define DEFINE_SERILIZE(param) \
//Deserialize& operator>>(Deserialize& dsr, )\
//{
//    return dsr/* & param*/;\
//}\

struct Test
{
    int a,b,c;
    //DEFINE_SERILIZE(a&b&c);
};
#define DEFINE_SERIAL(cls,...) \
Deserialize& operator>>(Deserialize& dsr, cls ss)\
{\
    return dsr & ss.a&ss.b&ss.c;\
}\

DEFINE_SERIAL(Test)

int _tmain(int argc, _TCHAR* argv[])
{
    Packet packet;
    Deserialize dsr(packet);
    Test a={0};
    dsr >>  a;
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
    BenchMark::BM_Text();

    system("pause");
    return 0;
}

