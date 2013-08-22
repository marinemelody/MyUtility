#pragma once

template<int NUM>
class BitArray
{
public:
    BitArray(){memset(m_bits, 0, sizeof(m_bits));}

    void Set(UINT index){--index;AssertThrow(index<NUM, throw 1);m_bits[index/8] |= 1<<(index%8); }
    void Del(UINT index){--index;AssertThrow(index<NUM, throw 1);m_bits[index/8] &= ~(1<<(index%8)); }

    char* buff() {return m_bits;}
    int   size() {return (NUM+7)>>3;}
private:
    char m_bits[(NUM+7)>>3];
};




