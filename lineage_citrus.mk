#
# Copyright (C) 2023 The Minerva's Dome.
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Enable lineage recovery flashing
TARGET_USES_lineage_RECOVERY := true

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit from citrus device
$(call inherit-product, device/xiaomi/citrus/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_citrus
PRODUCT_DEVICE := citrus
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO M3

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := POCO/citrus_global/citrus:12/RKQ1.211130.001/V13.0.3.0.SJFMIXM:user/release-keys

RISING_CHIPSET := "Snapdragon 662"
RISING_MAINTAINER := "Darknius"

# Pixel customization
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_USE_PIXEL_FINGERPRINT := true
TARGET_SUPPORTS_QUICK_TAP := true

# # Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Matrixx 
MATRIXX_BUILD_TYPE := Unofficial
MATRIXX_MAINTAINER := Darknius
MATRIXX_CHIPSET := Bengal
MATRIXX_BATTERY := 6000mAh
MATRIXX_DISPLAY := 1080X2340
