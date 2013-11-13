#pragma once

class BenchMark
{
public:
    static void BM_Text();                  //From TextManipulate.h
    //Functional Test
    static void BM_Serialize();             //From Serialize.h
    static void BM_ListPool();              //From Memory.h
    //Arithmetic Test
    static void BM_Arithmetic_Greater();    //From Greater.h
    static void BM_Hash();                  //From Hash.h
    //Third Lib
    static void BM_CryptoPP();              //From Third Lib:CryptoPP
};
