#include "StdAfx.h"
#include "Arithmetic.h"
#include <algorithm>

void Arithmetic::BresenhamLine(Point const& rStart, Point const& rEnd, std::vector<Point>& rPath)
{
    if (rStart == rEnd)
        return;

    int offx = abs(rStart.x - rEnd.x);
    int offy = abs(rStart.y - rEnd.y);
    int dirx = NormalCompair(rEnd.x,rStart.x);
    int diry = NormalCompair(rEnd.y,rStart.y);
    bool isSwap = false;
    if (offy > offx)
    {
        isSwap = true;
        std::swap(offx, offy);
        std::swap(dirx, diry);
    }

    Point curPoint = rStart;
    int high = 2*offx;
    int my = offx - offy;
    int sumx = 0;
    int sumy = 0;
    while(offx != abs(sumx))
    {
        my += 2*offy;
        if (my > high)
        {
            sumy += diry;
            my -= high;
            //记录一个点
            if (isSwap)
            {
                curPoint.x = rStart.x+sumy;
                curPoint.y = rStart.y+sumx;
            }
            else
            {
                curPoint.x = rStart.x+sumx;
                curPoint.y = rStart.y+sumy;
            }
            rPath.push_back(curPoint);
        }

        sumx += dirx;
        if (my >= high)
        {
            sumy += diry;
            my -= high;
        }

        //记录一个点
        if (isSwap)
        {
            curPoint.x = rStart.x+sumy;
            curPoint.y = rStart.y+sumx;
        }
        else
        {
            curPoint.x = rStart.x+sumx;
            curPoint.y = rStart.y+sumy;
        }
        rPath.push_back(curPoint);
    }
}
