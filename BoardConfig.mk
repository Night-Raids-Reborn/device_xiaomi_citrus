#
# Copyright (C) 2023 The Minerva's Dome.
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/citrus

# Inherit from Xiaomi Minerva
include device/xiaomi/minerva/BoardConfig-common.mk

# Board
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt
