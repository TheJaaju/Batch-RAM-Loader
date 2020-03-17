@echo off
title RAM Loader [[-PAYLOAD CREATOR-]] [%random%] [%random%]
color 0f
cls

:: MAIN
:loop
type payload.txt >> payload.txt
PING -n 0.0 0.0.0.0 >NUL
echo Done, %random%
goto loop

:: ERROR BLOCK
:re
cls
echo Something happened :v
echo.
set /p REST= Do you want to restart (y/n)?:
goto %REST%

:y
goto loop

:n
quit
