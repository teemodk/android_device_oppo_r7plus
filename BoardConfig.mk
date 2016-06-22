#
# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include device/oppo/msm8939-common/BoardConfigCommon.mk

DEVICE_PATH := device/oppo/r7plus

# Assert
TARGET_OTA_ASSERT_DEVICE := r7plus,r7plusf,R7plusf

# Assertions
TARGET_BOARD_INFO_FILE ?= $(DEVICE_PATH)/board-info.txt

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Include path
TARGET_SPECIFIC_HEADER_PATH += $(DEVICE_PATH)/include

# Kernel
BOARD_DTBTOOL_ARGS := --force-v3
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset 0x01000000
TARGET_KERNEL_CONFIG := cyanogenmod_r7plus_defconfig

# Partition info
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE := 134217728
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3221225472
BOARD_USERDATAIMAGE_PARTITION_SIZE := 25769803776

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"

# Keymaster - Wait for qseecom to load
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

#twrp
RECOVERY_VARIANT := twrp-mr

BOARD_HAS_NO_REAL_SDCARD := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_SUPPRESS_SECURE_ERASE := true

RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true

TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_USERIMAGES_USE_EXT4 := true

TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_IGNORE_ABS_MT_TRACKING_ID := true
TW_INCLUDE_CRYPTO := true
TW_INPUT_BLACKLIST := "accelerometer\x0acompass\x0alis3dh-accel"
TW_NO_USB_STORAGE := true
TW_THEME := portrait_hdpi

#TW_TARGET_USES_QCOM_BSP := true
#TARGET_USERIMAGES_USE_F2FS := true

# Add logging
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true

# SELinux
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# inherit from the proprietary version
-include vendor/oppo/r7plus/BoardConfigVendor.mk

# Multirom flags
TARGET_RECOVERY_IS_MULTIROM := true
MR_INPUT_TYPE := type_b
MR_INIT_DEVICES := device/oppo/r7plus/multirom/mr_init_devices.c
DEVICE_RESOLUTION := 1080x1920
MR_DPI := xhdpi
MR_DPI_FONT := 340
MR_FSTAB := device/oppo/r7plus/recovery/root/etc/twrp.fstab
MR_KEXEC_MEM_MIN := 0x82000000
MR_PIXEL_FORMAT := "RGB_565"
# MR_DEVICE_HOOKS := device/oppo/r7plus/multirom/mr_hooks.c
# MR_DEVICE_HOOKS_VER := 5
MR_DEVICE_VARIANTS := R7plus r7plus R7plusf r7plusf
