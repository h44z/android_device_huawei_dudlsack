USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/huawei/dudlsack/BoardConfigVendor.mk

# Platform
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_ABI_LIST := armeabi-v7a,armeabi
TARGET_CPU_ABI_LIST_32_BIT := armeabi-v7a,armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a53
TARGET_CPU_VARIANT:= cortex-a53
ARCH_ARM_HAVE_NEON := true
ARCH_ARM_HAVE_VFP := true
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

TARGET_BOARD_PLATFORM := hi6210sft
TARGET_BOARD_PLATFORM_GPU := mali-450mp
TARGET_BOOTLOADER_BOARD_NAME := hi6210sft
TARGET_BOARD_PLATFORM := hi6210sft

TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_ARCH_VARIANT_CPU := cortex-a53
TARGET_CPU_VARIANT := cortex-a53
TARGET_ARCH_VARIANT_FPU := neon
#add suffix variable to uniquely identify the board
HISI_TARGET_PRODUCT := hi6210sft
TARGET_BOARD_SUFFIX := _32


TARGET_BOOTLOADER_BOARD_NAME := dudlsack

BOARD_KERNEL_CMDLINE := hisi_dma_print=0 vmalloc=384M maxcpus=8 coherent_pool=512K no_irq_affinity androidboot.selinux=permissive ate_enable=true
BOARD_KERNEL_BASE := 0x07478000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x07b88000 --tags_offset 0x02988000

BOARD_BOOTIMAGE_PARTITION_SIZE := 25165824
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11605639168
BOARD_FLASH_BLOCK_SIZE := 131072

# Init
TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true

TARGET_PREBUILT_KERNEL := device/huawei/dudlsack/kernel

BOARD_HAS_NO_SELECT_BUTTON := true

RECOVERY_VARIANT := twrp
TW_THEME := portrait_hdpi
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TW_HAS_MTP := true
TW_ALWAYS_RMRF := true
TW_NO_CPU_TEMP := false
TW_NO_USB_STORAGE := true
TARGET_USERIMAGES_USE_EXT4 := true
RECOVERY_SDCARD_ON_DATA := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_INTERNAL_STORAGE_PATH := "/data/share"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
BOARD_HAS_LARGE_FILESYSTEM := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd_backlight0/brightness"
TW_CUSTOM_BATTERY_PATH := "/sys/devices/platform/bq_bci_battery.1/power_supply/Battery"
TW_MAX_BRIGHTNESS := 255
TW_BOARD_CUSTOM_GRAPHICS := ../../../device/huawei/dudlsack/graphics.c
TW_EXCLUDE_SUPERSU := true
