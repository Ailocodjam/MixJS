@echo off
color 03
REM =====================================
REM    ��ʼ����ͼҳ�� 0.1 Alpha by Theowang
REM
REM =====================================
SETLOCAL ENABLEEXTENSIONS
 
echo.
echo ��ʼ����ͼҳ�� 0.1 Alpha by Theowang

:copyFile
echo.
echo �������ݡ�����
echo.
xcopy /e "%~dp0\\initPSD" "%~dpf1"
goto getInNewFolder 

:getInNewFolder
echo.
echo �������ݳɹ���
echo.
cd "%~dpf1"
goto createCompass 

:createCompass
compass init
echo.
echo **** ~O(��_��)O~ ��ʼ���ɹ� ****
echo.
goto End 

:End
ENDLOCAL
pause