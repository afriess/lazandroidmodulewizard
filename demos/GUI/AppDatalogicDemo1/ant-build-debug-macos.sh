export PATH=/Data/lamw_manager/LAMW/apache-ant-1.10.5/bin:$PATH
export JAVA_HOME=${/usr/libexec/java_home}
export PATH=${JAVA_HOME}/bin:$PATH
cd /Data/lazdev/HWAndroid/ccr/lamw/demos/GUI/AppDatalogicDemo1
ant -Dtouchtest.enabled=true debug
