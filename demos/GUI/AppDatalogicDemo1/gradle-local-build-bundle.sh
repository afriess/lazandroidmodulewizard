export PATH=/Data/lamw_manager/LAMW/sdk/platform-tools:$PATH
export GRADLE_HOME=/Data/lazdev/HWAndroid/gradle-8.5
export PATH=$PATH:$GRADLE_HOME/bin
. ~/.bashrc
gradle clean bundle --info
