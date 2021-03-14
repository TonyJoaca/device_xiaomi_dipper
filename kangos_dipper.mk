#
# Copyright (C) 2018-2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/dipper/device.mk)
#firmware is inherited in device makefile

# Inherit some common stuff.
$(call inherit-product, vendor/kangos/config/common.mk)
#TARGET_GAPPS_ARCH := arm64
TARGET_BOOT_ANIMATION_RES := 1080
#NAD_BUILD_TYPE := OFFICIAL
#USE_GAPPS ?= true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := kangos_dipper
PRODUCT_DEVICE := dipper
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI 8
PRODUCT_MANUFACTURER := Xiaomi

# Google Recorder
TARGET_SUPPORTS_GOOGLE_RECORDER := true

# Gapps
TARGET_GAPPS_ARCH := arm64

USE_GAPPS=true
TARGET_INCLUDE_AOSP_REPLACEMENT := true


#Device Info.
PRODUCT_PRODUCT_PROPERTIES += \
  ro.kangos.maintainer=Jullian14 \
  ro.kangos.cpu=SDM845

KANGOS_BUILDTYPE := OFFICIAL

BUILD_FINGERPRINT := "google/coral/coral:11/RP1A.201105.002/6869500:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="dipper-user 8.1.0 OPM1.171019.011 V9.5.5.0.OEAMIFA release-keys" \
    PRODUCT_NAME="dipper"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
