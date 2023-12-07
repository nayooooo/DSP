if exist "./build" (
    @REM del /s /q "./build" & echo build directory cleared.
    echo build directory exist.
) else (
    mkdir build & echo build directory created.
)
if not exist "./build" (
    echo build directory is not created, return from bat. & exit
)
cd build
cmake .. -G "MinGW Makefiles"
make

cd ../bin
2python2xls.exe
cd ..

pause
