#pragma once

class PipeAnonymous
{
public:
    PipeAnonymous():_err(0)
    {
        SECURITY_ATTRIBUTES sattr;
        sattr.nLength = sizeof(sattr);
        sattr.lpSecurityDescriptor = NULL;
        sattr.bInheritHandle = TRUE;

        BOOL ret = CreatePipe(&h_read, &h_write, &sattr, 0);

        if (!ret)
        {
            h_read = h_write = INVALID_HANDLE_VALUE;
            _err = GetLastError();
        }
    }

    HANDLE  GetWriteHandle() const{return h_write;}
    HANDLE  GetReadHandle()  const{return h_read;}

    bool    IsOk(){return (_err==0);}
private:
    HANDLE  h_write,h_read;
    DWORD   _err;
};






