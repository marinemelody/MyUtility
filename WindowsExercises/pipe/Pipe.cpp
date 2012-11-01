// Pipe.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"

using namespace std;

#include "tools/Serialize.h"
#include "tools/Singleton.h"

#include "PipeAnonymous.h"

DWORD WINAPI MyThread( LPVOID lpParam )
{
    HANDLE h_read = *(HANDLE*)lpParam;

    char buf[1024];
    while(1)
    {
        DWORD num;
        ReadFile(h_read, buf, 1024, &num, NULL);

        Packet p;
        p.append(buf, num);
        Deserialize d(p);
        string ss;
        d >> ss;

        if (num>0)
        {
            cout << "recv:" << ss.c_str() << endl;
        }
    }

    return 0;
}

#define gPipeAnonymous INSTANCE_SINGLETON(PipeAnonymous)

int _tmain(int argc, _TCHAR* argv[])
{
    do 
    {
        if (!gPipeAnonymous.IsOk())
        {
            std::cout << "CreatePipe Failed!" << GetLastError() << std::endl;
            break;
        }

        HANDLE h_write = gPipeAnonymous.GetWriteHandle();
        HANDLE h_read  = gPipeAnonymous.GetReadHandle();
        CreateThread(NULL, 0, MyThread, &h_read, 0, NULL);

        Packet p;

        while (1)
        {
            char buf[10];
            cin.getline(buf, 10);
            string ss(buf);
            p.clear();
            Serialization s(p);
            s << ss;

            DWORD num;
            WriteFile(h_write, p.buff(), p.size(), &num, NULL);
        }
    } while (0);

    system("pause");
    return 0;
}

