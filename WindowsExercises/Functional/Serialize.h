#pragma once

#include "Traits.h"

//包存储
class Packet
{
    friend class Serialzation;
    friend class Deserialize;
public:
    Packet(){}
    Packet(char const* src, int len){append(src,len);}
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
    const char* buff()const{return m_buff.c_str();}
    string::size_type size() const{return m_buff.size();}
private:
    std::string m_buff;
};
//简单序列化
class Serialization
{
public:
    explicit Serialization():m_packet(){}
private:
    Packet m_packet;
public:
    void append(char const* src, int len){m_packet.append(src, len);}
    const char* buff(){return m_packet.buff();}
    string::size_type size() const{return m_packet.size();}
    Packet& packet(){return m_packet;}
public:
    template<typename T>
    Serialization& operator <<(T const& t)
    {
        return input(t, (Traits::_Test_Scalar<T>::_Tag*)NULL);
    }
    template<typename T>
    Serialization& input(T const& t, Traits::_Trait_Scalar*)
    {
        m_packet.append((char*)&t, sizeof(T));
        return *this;
    }
    template<typename T>
    Serialization& input(T const& t, Traits::_Trait_NonScalar*)
    {
        t.Serialized(*this);
        return *this;
    }
//     template<typename T>
//     Serialization& operator <<(T* t)
//     {
//         if (t)
//             *this << *t;
//         else
//             m_packet.fill(0,(string::size_type)sizeof(typename TraitPoint<T>::Value_type));
//         return *this;
//     }
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
    void extract(void* src, int len)
    {
        AssertThrow(len>0, throw 1);
        AssertThrow(m_packet.size()>=(len+_off), throw 1);
        memcpy(src, m_packet.buff()+_off, len);
        _off += len;
    }
public:
    template<typename T>
    Deserialize& operator >>(T& t)
    {
        return output(t, (Traits::_Test_Scalar<T>::_Tag*)NULL);
    }
//     template<typename T>
//     Deserialize& operator >>(T* t)
//     {
//         assert(m_packet.size()>=(sizeof(typename TraitPoint<T>::Value_type)+_off));
//         if (t)
//             *this >> *t;
//         else
//             _off += sizeof(typename TraitPoint<T>::Value_type);
//         return *this;
//     }
    template<>
    Deserialize& operator >>(std::string& t)
    {
        string::size_type _end = m_packet.m_buff.find_first_of((char)0, _off);
        AssertThrow(_end!=string::npos, throw 1);
        t.append(m_packet.m_buff, _off, _end-_off);
        _off = _end+1;
        return *this;
    }
    template<typename T>
    Deserialize& operator &(T& t)
    {
        return *this>> t;
    }

    template<typename T>
    Deserialize& output(T& t, Traits::_Trait_Scalar*)
    {
        AssertThrow(m_packet.size()>=(sizeof(T)+_off), throw 1);
        memcpy(&t, m_packet.m_buff.c_str()+_off, sizeof(T));
        _off += sizeof(T);
        return *this;
    }
    template<typename T>
    Deserialize& output(T& t, Traits::_Trait_NonScalar*)
    {
        t.Deserialized(*this);
        return *this;
    }
};

#define DEFINE_MEM_SERIAL(args) \
    void Serialized(Serialization& srl) const\
    {\
        srl & args;\
    }\
        void Deserialized(Deserialize& dsr)\
    {\
        dsr & args;\
    }

#define DEFINE_COPY_SERIAL \
    void Serialized(Serialization& srl) const\
    {\
        srl.append((char*)this, sizeof(*this));\
    }\
        void Deserialized(Deserialize& dsr)\
    {\
        dsr.extract(this, sizeof(*this));\
    }

