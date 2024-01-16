#
# Copyright (C) 2023 The Minerva's Dome.
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from Xiaomi SM6115
$(call inherit-product, device/xiaomi/sm6115-common/bengal.mk)

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 29

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Camera
PRODUCT_PACKAGES += \
    libpiex_shim

# Overlays
PRODUCT_PACKAGES += \
    ApertureCitrus \
    FrameworksResTarget \
    SettingsProviderResTarget \
    SystemUIResTarget \
    WifiResTarget

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/citrus/citrus-vendor.mk)
