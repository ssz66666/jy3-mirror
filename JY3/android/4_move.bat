cd bin
set YYYYmmdd=%date:~0,4%%date:~5,2%%date:~8,2%
move /y MainActivity-debug.apk ../../build/jy3_build%BUILD_NUMBER%%YYYYmmdd%.apk