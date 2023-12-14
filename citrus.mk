#
# Copyright (C) 2023 The Minerva's Dome.
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Evolution-X stuff
$(call inherit-product, vendor/leaf/config/common_full_phone.mk)

# Enable lineage recovery flashing
TARGET_USES_lineage_RECOVERY := true

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit from citrus device
$(call inherit-product, device/xiaomi/citrus/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := citrus
PRODUCT_DEVICE := citrus
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO M3

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_DESCRIPTION := husky-user 14 UD1A.230803.022.B1 10726908 release-keys
BUILD_FINGERPRINT := "google/husky/husky:14/UD1A.230803.022.B1/10726908:user/release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="$(BUILD_DESCRIPTION)"

# Pixel customization
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_USE_PIXEL_FINGERPRINT := true
TARGET_SUPPORTS_QUICK_TAP := true
WITH_GMS := false
TARGET_CORE_GMS := false

# # Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true