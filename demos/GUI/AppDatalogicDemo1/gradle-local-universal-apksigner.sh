export PATH=/Data/lamw_manager/LAMW/sdk/platform-tools:$PATH
export PATH=/Data/lamw_manager/LAMW/sdk/build-tools/30.0.3:$PATH
export GRADLE_HOME=/Data/lazdev/HWAndroid/gradle-8.5
export PATH=$PATH:$GRADLE_HOME/bin
zipalign -v -p 4 /Data/lazdev/HWAndroid/ccr/lamw/demos/GUI/AppDatalogicDemo1/build/outputs/apk/release/AppDatalogicDemo1-universal-release-unsigned.apk /Data/lazdev/HWAndroid/ccr/lamw/demos/GUI/AppDatalogicDemo1/build/outputs/apk/release/AppDatalogicDemo1-universal-release-unsigned-aligned.apk
apksigner sign --ks /Data/lazdev/HWAndroid/ccr/lamw/demos/GUI/AppDatalogicDemo1/appdatalogicdemo1-release.keystore --ks-pass pass:123456 --key-pass pass:123456 --out /Data/lazdev/HWAndroid/ccr/lamw/demos/GUI/AppDatalogicDemo1/build/outputs/apk/release/AppDatalogicDemo1-release.apk /Data/lazdev/HWAndroid/ccr/lamw/demos/GUI/AppDatalogicDemo1/build/outputs/apk/release/AppDatalogicDemo1-universal-release-unsigned-aligned.apk
