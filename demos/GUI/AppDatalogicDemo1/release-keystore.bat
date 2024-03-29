set JAVA_HOME=C:\Data\lamw_manager\LAMW\jdk\zulu-default
set PATH=%JAVA_HOME%\bin;%PATH%
set JAVA_TOOL_OPTIONS=-Duser.language=en
cd C:\Data\lazdev\HWAndroid\ccr\lamw\demos\GUI\AppDatalogicDemo1
keytool -genkey -v -keystore appdatalogicdemo1-release.keystore -alias appdatalogicdemo1.keyalias -keyalg RSA -keysize 2048 -validity 10000 < C:\Data\lazdev\HWAndroid\ccr\lamw\demos\GUI\AppDatalogicDemo1\keytool_input.txt
:Error
echo off
cls
echo.
echo Signature file created previously, remember that if you delete this file and it was uploaded to Google Play, you will not be able to upload another app without this signature.
echo.
pause
