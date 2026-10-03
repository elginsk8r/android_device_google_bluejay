#
# SPDX-FileCopyrightText: 2020 The Android Open-Source Project
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-FileCopyrightText: The Calyx Institute
# SPDX-License-Identifier: Apache-2.0
#

TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt
TARGET_BOOTLOADER_BOARD_NAME := $(DEVICE_CODENAME)
TARGET_SCREEN_DENSITY := 420

# Security - must be defined before including BoardConfig-common.mk
BOOT_SECURITY_PATCH := 2026-10-05
VENDOR_SECURITY_PATCH := $(BOOT_SECURITY_PATCH)

include device/google/gs101/BoardConfig-common.mk

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += \
    $(DEVICE_PATH)/sepolicy/vendor \
    hardware/google/pixel-sepolicy/vibrator/common \
    hardware/google/pixel-sepolicy/vibrator/cs40l26

# WiFi
include device/google/gs101/wifi/BoardConfig-wifi.mk

include $(VENDOR_PATH)/BoardConfigVendor.mk
