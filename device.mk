#
# Copyright (C) 2023 The Minerva's Dome.
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from Xiaomi bengal
$(call inherit-product, device/xiaomi/sm6115-common/device.mk)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Overlays
PRODUCT_PACKAGES += \
    ApertureCitrus

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/citrus/citrus-vendor.mk)
