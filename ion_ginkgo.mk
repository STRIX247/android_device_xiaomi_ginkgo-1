#
# Copyright (C) 2020 The ion OS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Inherit from ginkgo device
$(call inherit-product, device/xiaomi/ginkgo/device.mk)

# Inherit some common ion stuff.
$(call inherit-product, vendor/ion/config/common_full_phone.mk)

#Inherit MI camera port
$(call inherit-product, vendor/miuicamera/common/common-vendor.mk)

#GAPPS
TARGET_GAPPS_ARCH := arm64

#Boot_res
TARGET_BOOT_ANIMATION_RES := 1080

# ion OS OFFICIAL
ION_BUILD_TYPE := OFFICIAL
ION_RELEASE_TYPE := Release

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.ion.maintainer=STRIX247

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := ion_ginkgo
PRODUCT_DEVICE := ginkgo
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 8
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
