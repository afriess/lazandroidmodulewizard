set Path=%PATH%;C:\Data\lamw_manager\LAMW\apache-ant-1.10.5\bin
set JAVA_HOME=C:\Data\lamw_manager\LAMW\jdk\zulu-default
cd C:\Data\lazdev\HWAndroid\ccr\lamw\demos\GUI\AppDatalogicDemo1
call ant clean -Dtouchtest.enabled=true debug
if errorlevel 1 pause
