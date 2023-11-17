#!/bin/bash
#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

export DEVICE=citrus
export DEVICE_COMMON=minerva
export VENDOR=xiaomi

"./../../${VENDOR}/${DEVICE_COMMON}/self-extractors/setup-makefiles.sh" "$@"
