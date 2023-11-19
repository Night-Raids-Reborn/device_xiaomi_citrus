#
# Copyright (C) 2023 The Minerva's Dome.
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/citrus

# Inherit from Xiaomi bengal
include device/xiaomi/bengal/BoardConfig-bengal.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := citrus,bengal,juice

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

PRODUCT_HARDWARE := citrus

# Kernel
TARGET_FORCE_PREBUILT_KERNEL := true
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img

# Inherit the proprietary files
include vendor/xiaomi/citrus/BoardConfigVendor.mk
