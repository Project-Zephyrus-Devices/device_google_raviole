# Boot animation
TARGET_SCREEN_HEIGHT := 2280
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

CUSTOM_BUILD_TYPE := Official
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_USES_BLUR := true
WITH_GMS := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
USE_PIXEL_CHARGER_IMAGES := true
TARGET_SUPPORTS_CALL_RECORDING := true

# Inherit device configuration
$(call inherit-product, device/google/raviole/aosp_oriole_64.mk)
$(call inherit-product, device/google/raviole/device-raviole.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := oriole
PRODUCT_MODEL := Pixel 6
PRODUCT_BRAND := google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=oriole \
    PRIVATE_BUILD_DESC="oriole-user 12 SQ3A.220705.003 8671607 release-keys"

BUILD_FINGERPRINT := google/oriole/oriole:12/SQ3A.220705.003/8671607:user/release-keys

$(call inherit-product, vendor/google/oriole/oriole-vendor.mk)
