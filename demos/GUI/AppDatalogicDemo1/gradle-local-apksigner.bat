set Path=%PATH%;C:\Data\lamw_manager\LAMW\sdk\platform-tools;C:\Data\lamw_manager\LAMW\sdk\build-tools\30.0.3
set GRADLE_HOME=C:\Data\lazdev\HWAndroid\gradle-8.5
set PATH=%PATH%;%GRADLE_HOME%\bin
zipalign -v -p 4 C:\Data\lazdev\HWAndroid\ccr\lamw\demos\GUI\AppDatalogicDemo1\build\outputs\apk\release\AppDatalogicDemo1-armeabi-v7a-release-unsigned.apk C:\Data\lazdev\HWAndroid\ccr\lamw\demos\GUI\AppDatalogicDemo1\build\outputs\apk\release\AppDatalogicDemo1-armeabi-v7a-release-unsigned-aligned.apk
apksigner sign --ks C:\Data\lazdev\HWAndroid\ccr\lamw\demos\GUI\AppDatalogicDemo1\appdatalogicdemo1-release.keystore --ks-pass pass:123456 --key-pass pass:123456 --out C:\Data\lazdev\HWAndroid\ccr\lamw\demos\GUI\AppDatalogicDemo1\build\outputs\apk\release\AppDatalogicDemo1-release.apk C:\Data\lazdev\HWAndroid\ccr\lamw\demos\GUI\AppDatalogicDemo1\build\outputs\apk\release\AppDatalogicDemo1-armeabi-v7a-release-unsigned-aligned.apk
