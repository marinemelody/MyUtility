#pragma once

//位数组
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

//连续数组，保持数据的紧致性，但不保证数据的先后顺序
template<typename T, size_t NUMS>
class CompactArray
{
public:
    typedef T ValueType;

    CompactArray():m_end(0)
    {
        memset(m_values, 0 , sizeof(m_values));
    }
    CompactArray(T const& initValue):m_end(0)
    {
        FOR_0_NUM(i, NUMS)
        {
            m_values[i] = initValue;
        }
    }

    T const& operator [](size_t _Off) const
    {
        AssertThrow(_Off<m_end, throw 1);
        return m_values[_Off];
    }
    size_t erase(size_t _Off)
    {
        AssertThrow(_Off<m_end, throw 1);
        --m_end;
        if (_Off < m_end)
            m_values[_Off] = m_values[m_end];

        return m_end;
    }
    size_t insert(T const& val)
    {
        AssertThrow(m_end<NUMS, throw 1);
        m_values[m_end] = val;
        return ++m_end;
    }
    T* end()
    {
        AssertThrow(m_end<=NUMS, throw 1);
        return empty()?NULL:&m_values[m_end-1];
    }
    bool   empty() const {return m_end==0;}
    bool   full()  const {return m_end>=NUMS;}
    size_t size()  const {return m_end;}
private:
    T       m_values[NUMS];
    size_t  m_end;
};


