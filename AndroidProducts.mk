#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/lineage_duchamp.mk \
    $(LOCAL_DIR)/evolution_duchamp.mk \
    $(LOCAL_DIR)/crdroid_duchamp.mk

COMMON_LUNCH_CHOICES := \
    lineage_duchamp-bp4a-userdebug \
    lineage_duchamp-bp4a-user \
    crdroid_duchamp-bp4a-userdebug \
    crdroid_duchamp-bp4a-user \
    evolution_duchamp-bp4a-userdebug \
    evolution_duchamp-bp4a-user
