#
# Copyright (C) 2025 The Evolution X Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/xiaomi/duchamp/device.mk)

# Inherit some common Evolution X stuff.
# vendor/evolution path'i vendor/lineage olarak sync ediliyor (snippets/evolution.xml)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := evolution_duchamp
PRODUCT_DEVICE := duchamp
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 2311DRK48G
PRODUCT_SYSTEM_NAME := duchamp_global
PRODUCT_SYSTEM_DEVICE := duchamp
PRODUCT_SYSTEM_BRAND := Redmi

PRODUCT_CHARACTERISTICS := nosdcard
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Evolution X specific
EVO_BUILD_TYPE := Unofficial

# EvolutionX: GMS/Gapps varsayılan olarak kapalı (AOSP build)
# WITH_GMS := true yapılırsa vabc_features.mk ve erofs kullanılır (device.mk'da tanımlı)

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=Redmi/duchamp/duchamp:16/BP2A.250605.031.A3/OS3.0.3.0.WNLCNXM:user/release-keys \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)
