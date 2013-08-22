#pragma once

class NonCopyable
{
protected:
    NonCopyable(){}
    ~NonCopyable(){}
private: // emphasize the following members are private
    NonCopyable(NonCopyable const&);
    NonCopyable const& operator =(NonCopyable const&);
};

