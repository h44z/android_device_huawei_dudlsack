$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
#$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/huawei/dudlsack/dudlsack-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/dudlsack/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/huawei/dudlsack/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/system/bin/linker:recovery/root/system/bin/linker \
    $(LOCAL_PATH)/recovery/system/lib/libc.so:recovery/root/system/lib/libc.so \
    $(LOCAL_PATH)/recovery/system/lib/libdl.so:recovery/root/system/lib/libdl.so \
    $(LOCAL_PATH)/recovery/system/lib/liblog.so:recovery/root/system/lib/liblog.so \
    $(LOCAL_PATH)/recovery/system/lib/libm.so:recovery/root/system/lib/libm.so \
    $(LOCAL_PATH)/recovery/system/lib/libstdc++.so:recovery/root/system/lib/libstdc++.so \
    $(LOCAL_PATH)/recovery/system/lib/libz.so:recovery/root/system/lib/libz.so

$(call inherit-product, build/target/product/full.mk)

# OpenGL ES
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb 

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_dudlsack
PRODUCT_DEVICE := dudlsack
