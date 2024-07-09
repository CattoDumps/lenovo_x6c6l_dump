#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from X6C6L device
$(call inherit-product, device/lenovo/X6C6L/device.mk)

PRODUCT_DEVICE := X6C6L
PRODUCT_NAME := omni_X6C6L
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-X6C6L
PRODUCT_MANUFACTURER := lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo-rvo3

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_P98928FA1S-user 12 SP1A.210812.016 1rctb8786p164P37 release-keys"

BUILD_FINGERPRINT := Lenovo/LenovoTB-X6C6L/X6C6L:12/SP1A.210812.016/S026_240123_ROW:user/release-keys
