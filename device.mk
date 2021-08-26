#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm7125-common
$(call inherit-product, device/realme/sm7125-common/common.mk)

# Inherit proprietary targets
$(call inherit-product-if-exists, vendor/realme/RMX2061/RMX2061-vendor.mk)

# Prebuilts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/dtb.img:dtb.img

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Audio
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio/odm/,$(TARGET_COPY_OUT_ODM)/etc) \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio/vendor/,$(TARGET_COPY_OUT_VENDOR)/etc)

# Display
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/svi_config_19720.xml:$(TARGET_COPY_OUT_VENDOR)/etc/svi_config_19720.xml
