# android_device_huawei_dudlsack
Huawei Honor 4C ... only TWRP working at the moment


## TWRP for Android 5.1 (CM 12.1)

Clone https://github.com/TeamWin/Team-Win-Recovery-Project/tree/android-5.1 to bootable/recovery-twrp

And apply the following fix: (http://forum.xda-developers.com/general/help/fix-cm-11-philz-twrp-undefined-t3302467/post65011822#post65011822)

TWRP-Fix (libminuitwrp)
========
Edit: recovery-twrp/minuitwrp/Android.mk
```
-LOCAL_SHARED_LIBRARIES += libz libc libcutils libjpeg libpng
+LOCAL_SHARED_LIBRARIES += libz libc libcutils libjpeg libpng libutils
```

Then compile:

```sh
cd android/system
source build/envsetup.sh
breakfast dudlsack
make clean
make -j5 recoveryimage
```

Afterwards flash the image:

```sh
fastboot flash recovery target/product/dudsack/recovery.img
```
