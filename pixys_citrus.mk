#
# Copyright (C) 2023 The Minerva's Dome.
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common pixys stuff.
$(call inherit-product, vendor/pixys/config/common_full_phone.mk)

# Enable AOSP recovery flashing
TARGET_USES_AOSP_RECOVERY := true

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Pixel customization
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_USE_PIXEL_FINGERPRINT := true
TARGET_SUPPORTS_QUICK_TAP := true
WITH_GMS := false
WITH_GAPPS := false
TARGET_CORE_GMS := false
TARGET_SUPPORTS_CALL_RECORDING := true

# Inherit from citrus device
$(call inherit-product, device/xiaomi/citrus/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := pixys_citrus
PRODUCT_DEVICE := citrus
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO M3

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
