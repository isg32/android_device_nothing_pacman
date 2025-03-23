#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from pacman device
$(call inherit-product, device/nothing/pacman/device.mk)

PRODUCT_NAME := lineage_pacman
PRODUCT_DEVICE := pacman
PRODUCT_MANUFACTURER := Nothing
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A142

PRODUCT_SYSTEM_NAME := pacman_global
PRODUCT_SYSTEM_DEVICE := pacman

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_mssi_64_ww_armv82-user 15 AP3A.240617.008 2409232135 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Nothing/PacmanIND/Pacman:15/AP3A.240617.008/2409232135:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-nothing
