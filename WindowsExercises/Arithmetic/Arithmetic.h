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
    //标准比较函数
    //大于返回1,等于返回0,小于返回-1
    template<typename T>
    static int  NormalCompair(T const& a, T const& b)
    {
        return a>b?1:(a==b?0:-1);
    }
    ///Bresenham直线算法,用于计算两点直线所经过的所有路径点
    ///输出结果(rStart,rEnd],不包含rStart,但包含rEnd,
    static void BresenhamLine(Point const& rStart, Point const& rEnd, std::vector<Point>& rPath);
};
