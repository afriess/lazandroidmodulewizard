set JAVA_HOME=C:\Data\lamw_manager\LAMW\jdk\zulu-default
path %JAVA_HOME%\bin;%path%
cd C:\Data\lazdev\HWAndroid\ccr\lamw\demos\GUI\AppDatalogicDemo1
jarsigner -verify -verbose -certs C:\Data\lazdev\HWAndroid\ccr\lamw\demos\GUI\AppDatalogicDemo1\build\outputs\apk\release\AppDatalogicDemo1-release.apk
