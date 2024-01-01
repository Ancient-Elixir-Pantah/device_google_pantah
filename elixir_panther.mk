#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Project Elixir stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Project-Elixir Official Stuff
ELIXIR_BUILD_TYPE := OFFICIAL
TARGET_USES_FULL_GAPPS := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SHIP_PREBUILT_APEX := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_USES_AOSP_RECOVERY := true
EXTRA_UDFPS_ANIMATIONS := true

# Inherit device configuration
$(call inherit-product, device/google/pantah/aosp_panther.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 7
PRODUCT_NAME := aosp_panther

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=panther \
    PRIVATE_BUILD_DESC="panther-user 14 UQ1A.231205.015 11084887 release-keys"

BUILD_FINGERPRINT := google/panther/panther:14/UQ1A.231205.015/11084887:user/release-keys

$(call inherit-product, vendor/google/panther/panther-vendor.mk)
