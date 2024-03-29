export JAVA_HOME=${/usr/libexec/java_home}
export PATH=${JAVA_HOME}/bin:$PATH
cd /Data/lazdev/HWAndroid/ccr/lamw/demos/GUI/AppDatalogicDemo1
keytool -genkey -v -keystore appdatalogicdemo1-release.keystore -alias appdatalogicdemo1.keyalias -keyalg RSA -keysize 2048 -validity 10000 < /Data/lazdev/HWAndroid/ccr/lamw/demos/GUI/AppDatalogicDemo1/keytool_input.txt
