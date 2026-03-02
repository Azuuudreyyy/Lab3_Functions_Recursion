@ECHO OFF
@SET PYTHONIOENCODING=utf-8
@SET PYTHONUTF8=1
@FOR /F "tokens=2 delims=:." %%A in ('chcp') do for %%B in (%%A) do set "_CONDA_OLD_CHCP=%%B"
@chcp 65001 > NUL
@CALL "C:\Users\Audrey\anaconda3\condabin\conda.bat" activate "c:\Users\Audrey\Desktop\Lab3_Git_Ng\.conda"
@IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%
@c:\Users\Audrey\Desktop\Lab3_Git_Ng\.conda\python.exe -Wi -m compileall -q -l -i C:\Users\Audrey\AppData\Local\Temp\tmpzrl6siqx -j 0
@IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%
@chcp %_CONDA_OLD_CHCP%>NUL
