# Boot animation
TARGET_SCREEN_HEIGHT := 3120
TARGET_SCREEN_WIDTH := 1440
TARGET_BOOT_ANIMATION_RES := 1440

# Inherit some common AncientOS stuff.
$(call inherit-product, vendor/ancient/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/pantah/aosp_cheetah.mk)
include device/google/pantah/device-aosp.mk

# AncientOS Xtras
ANCIENT_GAPPS := true
ANCIENT_OFFICIAL := true
TARGET_SUPPORTS_QUICK_TAP := true
EXTRA_UDFPS_ANIMATIONS := true
TARGET_INCLUDE_PIXEL_FRAMEWORK := true
TARGET_SUPPORTS_NEXT_GEN_ASSISTANT := true
TARGET_USES_GOOGLE_DIALER_CARRIER_SETTINGS := true

# Parts
$(call inherit-product-if-exists, vendor/google/pixelparts/pixelparts.mk)

# Face unlock
include vendor/google/faceunlock/device.mk

# PowerShare
include hardware/google/pixel/powershare/device.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := ancient_cheetah
PRODUCT_MODEL := Pixel 7 Pro
PRODUCT_BRAND := google
PRODUCT_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=cheetah \
    PRIVATE_BUILD_DESC="cheetah-user 13 TQ3A.230901.001 10750268 release-keys"

BUILD_FINGERPRINT := google/cheetah/cheetah:13/TQ3A.230901.001/10750268:user/release-keys
