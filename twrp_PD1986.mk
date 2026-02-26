#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from PD1986 device
$(call inherit-product, device/vivo/PD1986/device.mk)

PRODUCT_DEVICE := PD1986
PRODUCT_NAME := twrp_PD1986
PRODUCT_BRAND := vivo
PRODUCT_MODEL := V1986A
PRODUCT_MANUFACTURER := vivo

PRODUCT_GMS_CLIENTID_BASE := android-vivo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k6889v1_64-user 12 SP1A.210812.003 compiler04041646 release-keys"

BUILD_FINGERPRINT := vivo/PD1986/PD1986:12/SP1A.210812.003/compiler04041646:user/release-keys
