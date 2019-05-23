del /s /q bin
del /s /q gen
copy /y build.txt local.properties
set _JAVA_OPTS="-Xmx512M"
E:\dev_tools\apache-ant-1.9.4\bin\ant.bat  -v debug