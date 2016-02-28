# Release name
PRODUCT_RELEASE_NAME := dudlsack

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/huawei/dudlsack/device_dudlsack.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := dudlsack
PRODUCT_NAME := cm_dudlsack
PRODUCT_BRAND := huawei
PRODUCT_MODEL := dudlsack
PRODUCT_MANUFACTURER := huawei
