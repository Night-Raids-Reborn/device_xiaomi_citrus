#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the SparkOS configuration.
$(call inherit-product, vendor/spark/config/common_full_phone.mk)

# Inherit from citrus device
$(call inherit-product, device/xiaomi/citrus/device.mk)

PRODUCT_NAME := spark_citrus
PRODUCT_DEVICE := citrus
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := M2010J19CG

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Pixel customization
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_USE_PIXEL_FINGERPRINT := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true
WITH_GMS := false
WITH_GAPPS := false
TARGET_CORE_GMS := false
USE_PIXEL_CHARGING := true
TARGET_USE_PIXEL_CHARGER := true
TARGET_USES_BLUR := false
TARGET_SUPPORTS_BLUR := false
BLAZE_MAINTAINER := Darknius
TARGET_BOOT_ANIMATION_RES := 1080

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true
