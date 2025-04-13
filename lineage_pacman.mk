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
    BuildDesc="sys_mssi_64_ww_armv82-user 14 UP1A.231005.007 2408281906 release-keys" \
    BuildFingerprint=Nothing/PacmanIND/Pacman:13/TP1A.220624.014/2408281906:user/release-keys \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

PRODUCT_GMS_CLIENTID_BASE := android-nothing
