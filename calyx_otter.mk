#
# SPDX-FileCopyrightText: 2023-2024 The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common stuff
$(call inherit-product, vendor/calyx/config/common_phone.mk)

# Inherit from otter device
$(call inherit-product, device/shift/otter/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := calyx_otter
PRODUCT_DEVICE := otter
PRODUCT_BRAND := SHIFT
PRODUCT_MODEL := SHIFTphone 8
PRODUCT_MANUFACTURER := SHIFT

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=SHIFT/otter/otter:14/SOS.6.2.20250624/20250624:user/release-keys \
    DeviceProduct=otter
