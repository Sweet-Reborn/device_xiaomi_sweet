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

# Axion Os
TARGET_DISABLE_EPPE := true
TARGET_ENABLE_BLUR := true
# Lunaris Os Flags
WITH_GMS := true
WITH_GAPPS := true
TARGET_USES_CORE_GAPPS := true
#TARGET_USES_OMNI_GAPPS :=true
TARGET_BOOT_ANIMATION_RES := 1080
BYPASS_CHARGE_SUPPORTED := true
WITH_BCR := true

LUNARIS_BUILD_TYPE := UNOFFICIAL
TARGET_OPTIMIZED_DEXOPT := true

TARGET_INCLUDE_ACCORD := false
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
