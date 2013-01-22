#pragma once

#include <vector>

struct Point
{
public:
    int x;
    int y;

    Point():x(0),y(0){}
    Point(int _x, int _y):x(_x),y(_y){}

    bool operator ==(Point const& rPoint) const
    {
        return (x==rPoint.x && y==rPoint.y);
    }
};

class Arithmetic
{
public:
    //��׼�ȽϺ���
    //���ڷ���1,���ڷ���0,С�ڷ���-1
    template<typename T>
    static int  NormalCompair(T const& a, T const& b)
    {
        return a>b?1:(a==b?0:-1);
    }
    ///Bresenhamֱ���㷨,���ڼ�������ֱ��������������·����
    ///������(rStart,rEnd],������rStart,������rEnd,
    static void BresenhamLine(Point const& rStart, Point const& rEnd, std::vector<Point>& rPath);
};
