#
# Copyright (C) 2016 The CyanogenMod Project
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

LOCAL_PATH := device/xiaomi/dior

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "qualcomm-smd"

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := cortex-a7
TARGET_GLOBAL_CFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=hard
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon-vfpv4 -mfloat-abi=hard
ART_USE_OPTIMIZING_COMPILER := true

# Platform
TARGET_BOARD_PLATFORM := msm8226
TARGET_BOARD_PLATFORM_GPU := qcom-adreno305
USE_CLANG_PLATFORM_BUILD := true

# Audio
BOARD_USES_ALSA_AUDIO := true
BOARD_USES_FLUENCE_INCALL := true
AUDIO_FEATURE_ENABLED_EXTERNAL_SPEAKER := true
AUDIO_FEATURE_ENABLED_FM := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_NEW_SAMPLE_RATE := true
AUDIO_FEATURE_ENABLED_USBAUDIO := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true
QCOM_BT_USE_SMD_TTY := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8226
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true

# Encryption
TARGET_HW_DISK_ENCRYPTION := true

# Filesystem
BOARD_RECOVERY_BLDRMSG_OFFSET		:= 2048
BOARD_BOOTIMAGE_PARTITION_SIZE		:= 16777216 #16M
BOARD_RECOVERYIMAGE_PARTITION_SIZE	:= 17418240
#BOARD_RECOVERYIMAGE_PARTITION_SIZE	:= 16777216 #16M
BOARD_SYSTEMIMAGE_PARTITION_SIZE	:= 838860800 #800M
BOARD_USERDATAIMAGE_PARTITION_SIZE	:= 6241112064 # - 16384 for crypto footer
BOARD_FLASH_BLOCK_SIZE			:= 131072

# FM
TARGET_FM_LEGACY_PATCHLOADER := true

# GPS
USE_DEVICE_SPECIFIC_GPS := true
TARGET_PROVIDES_GPS_LOC_API := true

# Graphics
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true
HAVE_ADRENO_SOURCE:= false
TARGET_USES_POST_PROCESSING := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

# Shader cache config options
# Maximum size of the GLES Shaders that can be cached for reuse.
# Increase the size if shaders of size greater than 12KB are used.
MAX_EGL_CACHE_KEY_SIZE := 12*1024

# Maximum GLES shader cache size for each app to store the compiled shader
# binaries. Decrease the size if RAM or Flash Storage size is a limitation
# of the device.
MAX_EGL_CACHE_SIZE := 2048*1024

# Hardware tunables
BOARD_HARDWARE_CLASS := $(LOCAL_PATH)/cmhw

# No old RPC for prop
TARGET_NO_RPC := true

# Init
TARGET_INIT_VENDOR_LIB := libinit_dior
TARGET_RECOVERY_DEVICE_MODULES := libinit_dior
TARGET_UNIFIED_DEVICE := true

# Kernel
TARGET_TOOLS_PREFIX := $(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-UB-4.9/bin/arm-linux-androideabi-
TARGET_KERNEL_CROSS_COMPILE_PREFIX := $(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/arm/arm-linux-eabi-UB-4.9/bin/arm-eabi-
TARGET_KERNEL_SOURCE := kernel/xiaomi/dior
TARGET_KERNEL_CONFIG := dior_custom_defconfig
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=dior user_debug=31 msm_rtb.filter=0x37 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_DTBTOOL_ARGS := --force-v2
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100

# Camera
USE_CAMERA_STUB := true
USE_DEVICE_SPECIFIC_CAMERA := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Memory
MALLOC_IMPL := dlmalloc

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/etc/fstab.dior
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# SELinux
include device/qcom/sepolicy/sepolicy.mk

BOARD_SEPOLICY_DIRS += $(LOCAL_PATH)/sepolicy

# Time services
BOARD_USES_QC_TIME_SERVICES := true

# Keymaster
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# Radio
TARGET_RIL_VARIANT := caf

# Flags
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD -DUSE_RIL_VERSION_10
COMMON_GLOBAL_CPPFLAGS += -DNO_SECURE_DISCARD -DUSE_RIL_VERSION_10

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun0/file

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WPA_SUPPLICANT_VERSION := VER_0_8_X
TARGET_USES_QCOM_WCNSS_QMI := true
TARGET_PROVIDES_WCNSS_QMI := true

# inherit from the proprietary version
-include vendor/xiaomi/dior/BoardConfigVendor.mk
