export JAVA_HOME=/Data/lamw_manager/LAMW/jdk/zulu-default
cd /Data/lazdev/HWAndroid/ccr/lamw/demos/GUI/AppDatalogicDemo1
LC_ALL=C keytool -genkey -v -keystore appdatalogicdemo1-release.keystore -alias appdatalogicdemo1.keyalias -keyalg RSA -keysize 2048 -validity 10000 < /Data/lazdev/HWAndroid/ccr/lamw/demos/GUI/AppDatalogicDemo1/keytool_input.txt
