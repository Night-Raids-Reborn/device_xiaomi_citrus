#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/havoc/config/common_full_phone.mk)

# Inherit from citrus device
$(call inherit-product, device/xiaomi/citrus/device.mk)

PRODUCT_NAME := havoc_citrus
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
WITH_GMS := true
WITH_GAPPS := true
TARGET_CORE_GMS := false
USE_PIXEL_CHARGING := true
TARGET_USES_BLUR := false

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true
