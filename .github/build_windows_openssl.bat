call "C:\Program Files\Microsoft Visual Studio\2022\Enterprise\VC\Auxiliary\Build\vcvarsall.bat" x86_amd64
mkdir build
cd build
cmd.exe /c cmake -G "NMake Makefiles" ..
cmake -G "NMake Makefiles" -DBUILD_TEST=TRUE -DEXT_PTHREAD_INCLUDE_DIR="C:/tools/pthreads-w32-2-9-1-release/Pre-built.2/include/" -DEXT_PTHREAD_LIBRARIES="C:/tools/pthreads-w32-2-9-1-release/Pre-built.2/lib/x64/libpthreadGC2.a" ..
nmake