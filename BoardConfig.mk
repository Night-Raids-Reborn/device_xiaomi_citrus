#
# Copyright (C) 2023 The Minerva's Dome.
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/citrus

# Inherit from Xiaomi SM6115
include device/xiaomi/chime/BoardConfigCommon.mk

# Inherit the proprietary files
include vendor/xiaomi/citrus/BoardConfigVendor.mk
