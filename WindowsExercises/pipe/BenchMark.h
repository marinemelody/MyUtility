#pragma once

class BenchMark
{
public:
    static void BM_Text();          //From TextManipulate.h
    static void BM_Arithmetic_Greater();//TextManipulate
    static void BM_Serialize();     //TextManipulate

    //Arithmetic Test
    static void BM_Hash();          //From Arithmetic/Hash.h
    static void BM_CryptoPP();      //From Third Lib:CryptoPP
};
