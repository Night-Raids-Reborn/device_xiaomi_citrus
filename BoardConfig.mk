#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/citrus

# Inherit from sm6115-common
include device/xiaomi/sm6115-common/BoardConfigCommon.mk

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt

# Display
TARGET_SCREEN_DENSITY := 440

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_xiaomi_citrus
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_citrus

# Inherit from the proprietary version
include vendor/xiaomi/citrus/BoardConfigVendor.mk
