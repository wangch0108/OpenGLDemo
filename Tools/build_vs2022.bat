@echo off
pushd ..\
call Tools\premake\bin\premake5.exe --file=OpenGLDemo/premake5.lua vs2022
popd
pause