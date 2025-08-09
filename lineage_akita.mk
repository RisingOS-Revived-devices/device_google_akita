#
# SPDX-FileCopyrightText: 2021-2024 The LineageOS Project
# SPDX-FileCopyrightText: 2021-2024 The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common stuff
TARGET_DISABLE_EPPE := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
DEVICE_CODENAME := akita
DEVICE_PATH := device/google/akita
VENDOR_PATH := vendor/google/akita
$(call inherit-product, $(DEVICE_PATH)/aosp_$(DEVICE_CODENAME).mk)
$(call inherit-product, device/google/zuma/lineage_common.mk)
$(call inherit-product, $(DEVICE_PATH)/$(DEVICE_CODENAME)/device-lineage.mk)

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 8a
PRODUCT_NAME := lineage_$(DEVICE_CODENAME)

# Addons
TARGET_HAS_UDFPS := true
TARGET_PREBUILT_BCR := true

# Gms 
WITH_GMS := true

#Ship Pixel Overlays
WITH_PIXEL_OVERLAYS := false

RISING_MAINTAINER=EliteDarkKaiser
RISING_VERSION := 8.0
TARGET_FACE_UNLOCK_SUPPORTED := false

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="akita-user 16 BP2A.250705.008 13578956 release-keys" \
    BuildFingerprint=google/akita/akita:16/BP2A.250705.008/13578956:user/release-keys \
    DeviceProduct=$(DEVICE_CODENAME)

$(call inherit-product, $(VENDOR_PATH)/$(DEVICE_CODENAME)-vendor.mk)
