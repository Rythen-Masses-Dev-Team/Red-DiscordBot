<<<<<<< HEAD
@echo off
chcp 65001
echo.
pushd %~dp0

:loopstart

::Attempts to start py launcher without relying on PATH
%SYSTEMROOT%\py.exe --version > NUL 2>&1
IF %ERRORLEVEL% NEQ 0 GOTO attempt
%SYSTEMROOT%\py.exe -3.5 red.py
timeout 3
GOTO loopstart

::Attempts to start py launcher by relying on PATH
:attempt
py.exe --version > NUL 2>&1
IF %ERRORLEVEL% NEQ 0 GOTO lastattempt
py.exe -3.5 red.py
timeout 3
GOTO loopstart

::As a last resort, attempts to start whatever Python there is
:lastattempt
python.exe --version > NUL 2>&1
IF %ERRORLEVEL% NEQ 0 GOTO message
python.exe red.py
timeout 3
GOTO loopstart

:message
echo Couldn't find a valid Python 3.5 installation. Python needs to be installed and available in the PATH environment 
echo variable. 
echo https://twentysix26.github.io/Red-Docs/red_win_requirements/#software
PAUSE

:end
=======
@Echo off
:Start

python red.py
timeout 2

goto Start
>>>>>>> 974aa717590c69f6bda14d598ec908db86861ee4
