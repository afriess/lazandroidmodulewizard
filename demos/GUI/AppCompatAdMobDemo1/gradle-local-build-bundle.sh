export PATH=/laztoapk/downloads/android-sdk-windows/platform-tools:$PATH
export GRADLE_HOME=/laztoapk/downloads/gradle-6.6.1/
export PATH=$PATH:$GRADLE_HOME/bin
source ~/.bashrc
gradle clean bundle --info
