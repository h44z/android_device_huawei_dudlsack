USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/huawei/dudlsack/BoardConfigVendor.mk

TARGET_ARCH := arm64
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := kirin620
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := dudlsack

BOARD_KERNEL_CMDLINE := hisi_dma_print=0 vmalloc=384M maxcpus=8 coherent_pool=512K no_irq_affinity androidboot.selinux=enforcing ate_enable=true
BOARD_KERNEL_BASE := 0x07478000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01800000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x04000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x98000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0xf2400000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/huawei/dudlsack/kernel

BOARD_HAS_NO_SELECT_BUTTON := true
