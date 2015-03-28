#
# Copyright (C) 2012 The CyanogenMod Project
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
# inherit from the proprietary version
-include vendor/xolo/us9230e1/BoardConfigVendor.mk


# Target arch settings
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := tegra
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_32_BYTE_CACHE_LINES := true
ARCH_ARM_USE_NON_NEON_MEMCPY := true
BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_PAGESIZE := 2048

TARGET_USERIMAGES_USE_EXT4 := true


BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 536870912
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2516582400
BOARD_FLASH_BLOCK_SIZE := 4096

# Kernel
TARGET_PREBUILT_KERNEL := device/xolo/us9230e1/kernel

#TARGET_SPECIFIC_HEADER_PATH := device/xolo/us9230e1/include

# Connectivity - Wi-Fi
USES_TI_MAC80211 := true
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
WPA_SUPPLICANT_VERSION           := VER_0_8_X

BOARD_HAL_STATIC_LIBRARIES := \
    libhealthd.us9230e1
    
#TWRP
DEVICE_RESOLUTION := 720x1280
RECOVERY_GRAPHICS_USE_LINELENGTH := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_EXTERNAL_STORAGE_PATH := "/sdcard"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard"
BOARD_HAS_NO_SELECT_BUTTON := true
TW_NO_USB_STORAGE := true
TW_INCLUDE_JB_CRYPTO := true
TWHAVE_SELINUX := false
TARGET_RECOVERY_FSTAB := device/xolo/us9230e1/twrp.fstab
TARGET_RECOVERY_INITRC := device/xolo/us9230e1/recovery/init.rc
TW_BRIGHTNESS_PATH := "/sys/class/backlight/pwm-backlight/brightness"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/tegra-udc.0/gadget/lun0/file"

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_TI := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/xolo/us9230e1/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/xolo/us9230e1/bluetooth/vnd_us9230e1.txt

# Board naming
TARGET_NO_RADIOIMAGE := true
TARGET_BOOTLOADER_BOARD_NAME := 
TARGET_BOARD_PLATFORM := tegra
TARGET_TEGRA_VERSION := ap30

# Optimization build flags
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a9 -mfpu=neon -mfloat-abi=softfp

# Some proprietary libs need reservedVectorImpl variants
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS

# Audio
BOARD_USES_GENERIC_AUDIO := false
USE_CAMERA_STUB := false
BOARD_USES_ALSA_AUDIO := true
BUILD_WITH_ALSA_UTILS := true
TARGET_PROVIDES_LIBAUDIO := true
COMMON_GLOBAL_CFLAGS += -DMR0_AUDIO_BLOB -DNEEDS_VECTORIMPL_SYMBOLS
BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true

# Enable WEBGL in WebKit
ENABLE_WEBGL := true

# EGL settings
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := device/xolo/us9230e1/configs/egl.cfg
TARGET_SPECIFIC_HEADER_PATH := device/xolo/us9230e1/include
BOARD_EGL_NEEDS_LEGACY_FB := true
# No EGL_KHR_gl_colorspace
BOARD_EGL_WORKAROUND_BUG_10194508 := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
BOARD_USE_MHEAP_SCREENSHOT := true
BOARD_EGL_SKIP_FIRST_DEQUEUE := true
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# adb has root
ADDITIONAL_DEFAULT_PROPERTIES += ro.secure=0
ADDITIONAL_DEFAULT_PROPERTIES += ro.allow.mock.location=1

# Connectivity - Wi-Fi
USES_TI_MAC80211 := true
ifdef USES_TI_MAC80211
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_wl12xx
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_wl12xx
PRODUCT_WIRELESS_TOOLS := true
BOARD_WLAN_DEVICE := wl12xx_mac80211
BOARD_SOFTAP_DEVICE := wl12xx_mac80211
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wl12xx_sdio.ko"
WIFI_DRIVER_MODULE_NAME := "wl12xx_sdio"
WIFI_FIRMWARE_LOADER := ""
BOARD_WIFI_SKIP_CAPABILITIES := true
COMMON_GLOBAL_CFLAGS += -DUSES_TI_MAC80211
endif


