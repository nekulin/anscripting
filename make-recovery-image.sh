out/host/linux-x86/bin/mkbootfs out/target/product/android_product/recovery/root | out/host/linux-x86/bin/minigzip > out/target/product/android_product/ramdisk-recovery.img
mediatek/build/tools/mkimage out/target/product/android_product/ramdisk-recovery.img RECOVERY > out/target/product/android_product/ramdisk_recovery.img
mv out/target/product/android_product/ramdisk_recovery.img out/target/product/android_product/ramdisk-recovery.img
out/host/linux-x86/bin/mkbootimg  --kernel out/target/product/android_product/kernel  --ramdisk out/target/product/android_product/ramdisk-recovery.img --output out/target/product/android_product/recovery.img
out/host/linux-x86/bin/mkbootimg  --kernel out/target/product/android_product/kernel  --ramdisk out/target/product/android_product/ramdisk-recovery.img --board RCG43003 --output out/target/product/android_product/recovery.img
