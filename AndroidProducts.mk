#
# Copyright (C) 2023 The Minerva's Dome.
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/aosp_citrus.mk \
    $(LOCAL_DIR)/lineage_citrus.mk

COMMON_LUNCH_CHOICES := \
    aosp_citrus-user \
    aosp_citrus-userdebug \
    aosp_citrus-eng \
    lineage_citrus-user \
    lineage_citrus-userdebug \
    lineage_citrus-eng
