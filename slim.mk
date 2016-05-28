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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from dior device
$(call inherit-product, device/xiaomi/dior/device.mk)

# Inherit some common Slim stuff (mini)
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Product configuration
PRODUCT_NAME := slim_dior
PRODUCT_DEVICE := dior
PRODUCT_BRAND := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := HMLTE
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := dior
TARGET_VENDOR_DEVICE_NAME := HMLTE

# Unofficial build id
TARGET_UNOFFICIAL_BUILD_ID := sinisa94

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=dior \
    PRODUCT_NAME=dior \
    BUILD_FINGERPRINT=Xiaomi/dior/dior:4.4.4/KTU84P/V7.2.3.0.KHIMIDA:user/release-keys \
    PRIVATE_BUILD_DESC="dior-user 4.4.4 KTU84P V7.2.3.0.KHIMIDA release-keys"

    

