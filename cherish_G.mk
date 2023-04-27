#
# Copyright (C) 2021-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from G device
$(call inherit-product, device/10or/G/device.mk)

# CherishOS specific flags
TARGET_BOOT_ANIMATION_RES := 1080
CHERISH_BUILD_TYPE := OFFICIAL
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_STOCK_ARCORE := true
WITH_GMS := true
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.cherish.maintainer=Sourav Pal

# Inherit some common CherishOS stuff.
$(call inherit-product, vendor/cherish/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := 10.or
PRODUCT_DEVICE := G
PRODUCT_MANUFACTURER := 10.or
PRODUCT_NAME := lineage_G
PRODUCT_MODEL := 10.or G

PRODUCT_GMS_CLIENTID_BASE := android-huaqin
TARGET_VENDOR := 10.or
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="G-user 8.1.0 OPM1.171019.019 10or_G_V1_0_82 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := 10or/G/G:8.1.0/OPM1.171019.019/10or_G_V1_0_82:user/release-keys
