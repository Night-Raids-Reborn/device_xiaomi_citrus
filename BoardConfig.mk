#
# Copyright (C) 2023 The Minerva's Dome.
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/citrus

# Inherit from Xiaomi SM6115
include device/xiaomi/sm6115-common/BoardConfigCommon.mk

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

PRODUCT_HARDWARE := citrus



# Display
TARGET_SCREEN_DENSITY := 440

# Kernel
TARGET_FORCE_PREBUILT_KERNEL := true
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_xiaomi_citrus
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_citrus

# Inherit the proprietary files
include vendor/xiaomi/citrus/BoardConfigVendor.mk
