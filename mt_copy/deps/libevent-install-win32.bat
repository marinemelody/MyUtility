xcopy /E /H /R libevent-2.0.21-stable\include\* ..\src\libevent\include\
xcopy /E /H /R libevent-2.0.21-stable\WIN32-Code\* ..\src\libevent\include\
xcopy /E /H /R libevent-2.0.21-stable\*.h ..\src\libevent\include\
copy libevent-2.0.21-stable\*.lib ..\src\libevent\lib\
pause