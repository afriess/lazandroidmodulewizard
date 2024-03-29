export JAVA_HOME=${/usr/libexec/java_home}
export PATH=${JAVA_HOME}/bin:$PATH
cd /Data/lazdev/HWAndroid/ccr/lamw/demos/GUI/AppDatalogicDemo1
jarsigner -verify -verbose -certs /Data/lazdev/HWAndroid/ccr/lamw/demos/GUI/AppDatalogicDemo1/build/outputs/apk/release/AppDatalogicDemo1-release.apk
