set Path=%PATH%;C:\Data\lamw_manager\LAMW\apache-ant-1.10.5\bin
set JAVA_HOME=C:\Data\lazdev\HWAndroid\jdk-21.0.2+13
cd C:\Data\lazdev\HWAndroid\ccr\lamw\demos\GUI\AppIntentDemoZXing1\
call ant clean release
if errorlevel 1 pause
