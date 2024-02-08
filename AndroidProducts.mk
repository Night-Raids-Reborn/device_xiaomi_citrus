#
# Copyright (C) 2023 The Minerva's Dome.
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/aosp_citrus.mk \
    $(LOCAL_DIR)/lineage_citrus.mk \
    $(LOCAL_DIR)/nad_citrus.mk \
    $(LOCAL_DIR)/havoc_citrus.mk \
    $(LOCAL_DIR)/blaze_citrus.mk \
    $(LOCAL_DIR)/evolution_citrus.mk \
    $(LOCAL_DIR)/cherish_citrus.mk \
    $(LOCAL_DIR)/spark_citrus.mk \
    $(LOCAL_DIR)/derp_citrus.mk \
    $(LOCAL_DIR)/cipher_citrus.mk \
    $(LOCAL_DIR)/afterlife_citrus.mk \
    $(LOCAL_DIR)/arrow_citrus.mk

COMMON_LUNCH_CHOICES := \
    aosp_citrus-user \
    aosp_citrus-userdebug \
    aosp_citrus-eng \
    lineage_citrus-user \
    lineage_citrus-userdebug \
    lineage_citrus-eng \
    nad_citrus-user \
    nad_citrus-userdebug \
    nad_citrus-eng \
    havoc_citrus-user \
    havoc_citrus-userdebug \
    havoc_citrus-eng \
    blaze_citrus-user \
    blaze_citrus-userdebug \
    blaze_citrus-eng \
    evolution_citrus-user \
    evolution_citrus-userdebug \
    evolution_citrus-eng \
    cherish_citrus-user \
    cherish_citrus-userdebug \
    cherish_citrus-eng \
    spark_citrus-user \
    spark_citrus-userdebug \
    spark_citrus-eng \
    derp_citrus-userdebug \
    derp_citrus-eng \
    derp_citrus-user \
    cipher_citrus-userdebug \
    cipher_citrus-eng \
    cipher_citrus-user \
    afterlife_citrus-userdebug \
    afterlife_citrus-eng \
    afterlife_citrus-user \
    arrow_citrus-user \
    arrow_citrus-userdebug \
    arrow_citrus-eng

