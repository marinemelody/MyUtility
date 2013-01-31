#pragma once


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
    void clear(){m_buff.clear();}
    const char* buff(){return m_buff.c_str();}
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
    Serialization& operator <<(T const& t)
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
    Serialization& operator <<(string const& t)
    {
        m_packet.append(t.c_str(), t.length());
        m_packet.fill(0,1);
        return *this;
    }
    template<typename T>
    Serialization& operator &(T& t)
    {
        return *this<< t;
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
        assert(m_packet.size()>=(sizeof(T)+_off));
        memcpy(&t, m_packet.m_buff.c_str()+_off, sizeof(T));
        _off += sizeof(T);
        return *this;
    }
    template<typename T>
    Deserialize& operator >>(T* t)
    {
        assert(m_packet.size()>=(sizeof(typename TraitPoint<T>::Value_type)+_off));
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
        t.append(m_packet.m_buff, _off, _end-_off);
        _off = _end+1;
        return *this;
    }
    template<typename T>
    Deserialize& operator &(T& t)
    {
        return *this>> t;
    }
};

