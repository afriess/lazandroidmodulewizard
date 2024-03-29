set Path=%PATH%;C:\Data\lamw_manager\LAMW\apache-ant-1.10.5\bin
set JAVA_HOME=C:\Data\lamw_manager\LAMW\jdk\zulu-default
cd C:\Data\lazdev\HWAndroid\ccr\lamw\demos\GUI\AppDatalogicDemo1
call ant clean release
if errorlevel 1 pause
