#
# Copyright (C) 2021-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from sweet device
$(call inherit-product, device/xiaomi/sweet/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

TARGET_INCLUDE_ACCORD := true
TARGET_BUILD_DEVICE_AS_WEBCAM := true
TARGET_SUPPORTS_64_BIT_APPS := true

PRODUCT_NAME := lineage_sweet
PRODUCT_DEVICE := sweet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 10 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="sweet_global-user 13 TKQ1.221013.002 V14.0.9.0.TKFMIXM release-keys" \
    BuildFingerprint=Redmi/sweet_global/sweet:13/TKQ1.221013.002/V14.0.9.0.TKFMIXM:user/release-keys
Add the following variables:

# Lunch banner maintainer variable
RISING_MAINTAINER="Dodo_Lx"

# Chipset/Maintainer properties (ro.rising.chipset/ro.rising.maintainer) 
# Set RISING_MAINTAINER for version control 
# (Optional if builder is setting properties via init_<device>.cpp)
PRODUCT_BUILD_PROP_OVERRIDES += \
    RisingChipset="Snapdragon® 732G" \
    RisingMaintainer="Dodo_Lx"

RISING_MAINTAINER := Dodo_Lx

# Disable/enable blur support, false by default
TARGET_ENABLE_BLUR := true

# Whether to ship aperture camera, false by default
PRODUCT_NO_CAMERA := true

# Whether to ship lawnchair launcher, false by default
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := false 
# GMS build flags, true by default
# Ship with GMS packages, replaces default AOSP packages with Google manufactured packages.
WITH_GMS := true/false

# CORE build flags
WITH_GMS := true
#TARGET_USES_PICO_GAPPS := true
#TARGET_INCLUDE_GOOGLE_DIALER := false
# VANILLA only build flags
#WITH_GMS := false

# VANILLA build with MICROG
#WITH_GMS := false
#WITH_MICROG := true
TARGET_INCLUDE_BCR := true
