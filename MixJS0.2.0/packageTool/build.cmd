@echo off
title MixJS Builder - ���ڴ�� ...

color 03
REM =====================================
REM    MixJS Builder beta��
REM
REM =====================================
SETLOCAL ENABLEEXTENSIONS
 
echo.
 
REM �����ļ���׺��ֻcombo js�ļ�
if "%~x1" NEQ ".js" (
    echo.
    echo **** ��ѡ��JS�ļ�
    echo.
    goto End
)
 
REM ���NODE_PATH
if "%NODE_PATH%" == "" goto NoNodePath
if not exist "%NODE_PATH%\node.exe" goto NoNodePath

 
set RESULT_FILE=%~n1-pack%~x1

:ZIP_CHOICE

echo ѡ���Ƿ�ѹ����������js�ļ�?
set input=
set /p input= -^> ��ѡ��(y/n): 
if /i "%input%"=="n" goto UNZIP
if /i "%input%"=="y" goto ZIP

REM ����MixJSBuild�ϲ��ļ�
:UNZIP
"%NODE_PATH%\node.exe" "%~dp0build.js" --unzip "%~n1%~x1" > "%RESULT_FILE%"
echo.
echo **** ~O(��_��)O~ ��������ɹ� ****
echo.
goto End


REM ����build�ϲ�����ѹ���ļ�
:ZIP
"%NODE_PATH%\node.exe" "%~dp0build.js" "%~n1%~x1" > "%RESULT_FILE%"
echo.
echo **** ~O(��_��)O~ �������ѹ�����ɹ� ****
echo.
goto End
 
:NoNodePath
echo.
echo **** ���Ȱ�װNodeJS������NODE_PATH�������� ****
echo.
 
:End
ENDLOCAL
pause



