#pragma once

class AllocDefault
{
public:
    void* Alloc(size_t _size)
    {
        return malloc(_size);
    }
    void release(void* p)
    {
        free(p);
    }
};


