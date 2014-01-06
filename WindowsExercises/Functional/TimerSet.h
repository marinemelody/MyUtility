#pragma once


class IntervalTimer
{
public:
    IntervalTimer(UINT64 ticks,bool bOnce=true):m_ticks(ticks)
    {
        m_tickMark = GetTickCount64();
        if (!bOnce)
            m_tickMark += m_ticks;
    }
    bool pass()
    {
        UINT64 nowtick = GetTickCount64();
        if (m_tickMark<=nowtick)
        {
            m_tickMark = nowtick + m_ticks;
            return true;
        }
        return false;
    }
    bool passB()
    {
        UINT64 nowtick = GetTickCount64();
        if (m_tickMark<=nowtick)
        {
            m_tickMark += m_ticks;
            return true;
        }
        return false;
    }
private:
    UINT64  m_tickMark;
    UINT64  m_ticks;
};


