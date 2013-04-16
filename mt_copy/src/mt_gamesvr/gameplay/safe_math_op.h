
#ifndef SAFE_MATH_OP_H_
#define SAFE_MATH_OP_H_

template <class T>
bool try_sum(T a, T b, T & c)
{
    unsigned long reg_eax = 0;
    c = a + b;
    __asm {
        push eax
        pushfd
        pop eax
        mov reg_eax, eax
        pop eax
    }
    return (reg_eax & 0x00000800) ? false : true;
}

template <class T>
bool try_mul(T a, T b, T & c)
{
    unsigned long reg_eax = 0;
    c = a * b;
    __asm {
        push eax
        pushfd
        pop eax
        mov reg_eax, eax
        pop eax
    }
    return (reg_eax & 0x00000800) ? false : true;
}

#endif // SAFE_MATH_OP_H_
