#
# Copyright (C) 2023 The Minerva's Dome.
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Superior Extended stuff.
$(call inherit-product, vendor/superior/config/common.mk)

# Inherit from citrus device
$(call inherit-product, device/xiaomi/citrus/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := superior_citrus
PRODUCT_DEVICE := citrus
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO M3

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

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
TARGET_CORE_GMS := false

# Superior Extended
TARGET_INCLUDE_MATLOG := false
TARGET_SUPPORTS_FACE_UNLOCK := true
USE_MOTO_CALCULATOR := true
TARGET_SUPPORTS_BLUR := false
USE_MOTO_CLOCK := true
SYSTEM_OPTIMIZE_JAVA := true
SYSTEMUI_OPTIMIZE_JAVA := true
USE_QUICKPIC := false
USE_DUCKDUCKGO := false
TARGET_INCLUDE_BACKUP_TOOL := false
