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

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_platform_info_idp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_idp.xml \
    $(LOCAL_PATH)/audio/audio_platform_info_intcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_intcodec.xml \
    $(LOCAL_PATH)/audio/audio_platform_info_scubaidp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_scubaidp.xml \
    $(LOCAL_PATH)/audio/audio_platform_info_scubaqrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_scubaqrd.xml \
    $(LOCAL_PATH)/audio/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/audio/mixer_paths_idp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_idp.xml \
    $(LOCAL_PATH)/audio/mixer_paths_scubaidp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_scubaidp.xml \
    $(LOCAL_PATH)/audio/mixer_paths_scubaqrd.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_scubaqrd.xml \
    $(LOCAL_PATH)/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

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
