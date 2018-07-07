
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2016 The AospExtended Project
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

# Inherit device configuration
$(call inherit-product, device/lenovo/kuntao/full_kuntao.mk)

# Inherit some common AOSP stuff.
TARGET_ARCH := arm64
TARGET_DENSITY := xxhdpi
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_ARCORE := true
CUSTOM_BUILD_TYPE=OFFICIAL
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# GApps
TARGET_GAPPS_ARCH := arm64

# Boot animation res
TARGET_BOOT_ANIMATION_RES := 1080

# Override build properties.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="kuntao_row-user 7.0 NRD90N P2a42_S244_170725_ROW release-keys"

BUILD_FINGERPRINT := Lenovo/kuntao_row/P2a42:7.0/NRD90N/P2a42_S244_170725_ROW:user/release-keys

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := kuntao
PRODUCT_NAME := aosp_kuntao
PRODUCT_BRAND := Lenovo
PRODUCT_MANUFACTURER := Lenovo
PRODUCT_RELEASE_NAME := kuntao
