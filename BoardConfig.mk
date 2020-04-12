#
# Copyright (C) 2020 The Xiaomi-SDM660 Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Device Path
DEVICE_PATH := device/xiaomi/jasmine_sprout

# A/B
AB_OTA_UPDATER := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_USES_RECOVERY_AS_BOOT := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := kryo

# Architecture 2
TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := kryo

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sdm660
TARGET_NO_BOOTLOADER := true

# Board
TARGET_BOARD_PLATFORM := sdm660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno512
BOARD_VENDOR := xiaomi
TARGET_USES_64_BIT_BINDER := true

# Crypto
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true

# Display
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2160

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyMSM0,115200,n8 androidboot.console=ttyMSM0 earlycon=msm_serial_dm,0xc170000 androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 sched_enable_hmp=1 sched_enable_power_aware=1 service_locator.enable=1 swiotlb=1 androidboot.configfs=true androidboot.usbcontroller=a800000.dwc3
BOARD_KERNEL_CMDLINE += loop.max_part=16
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz-dtb

# Log
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

# Directory
TARGET_COPY_OUT_VENDOR := vendor

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery.fstab
TARGET_RECOVERY_WIPE := $(DEVICE_PATH)/recovery.wipe
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_RECOVERY_QCOM_RTC_FIX := true

# Use mke2fs to create ext4 images
TARGET_USES_MKE2FS := true

# Sdcard
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_SDCARD_ON_DATA := true

# Security Patch Hack to prevent Anti Rollback
BOARD_SUPPRESS_SECURE_ERASE := true

# TWRP specific build flags
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXCLUDE_TWRPAPP := true
TW_EXTRA_LANGUAGES := true
TW_INCLUDE_FUSE_EXFAT := true
TW_INCLUDE_FUSE_NTFS := true
TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_REPACKTOOLS := true
TW_INCLUDE_RESETPROP_PREBUILT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_MAX_BRIGHTNESS := 100
TW_NO_SCREEN_BLANK := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_THEME := portrait_hdpi
TW_USE_TOOLBOX := true
