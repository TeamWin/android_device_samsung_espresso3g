#
# Copyright (C) 2013 OmniROM Project
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit Omni GSM telephony parts
$(call inherit-product, vendor/omni/config/gsm.mk)

# Bootanimation
TARGET_BOOTANIMATION_SIZE := 480x320

# Inherit common Omni configuration
$(call inherit-product, vendor/omni/config/common_tablet.mk)

# OmniRom specific overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/espresso3g/overlay/custom
DEVICE_PACKAGE_OVERLAYS += device/samsung/espressowifi/overlay/custom-common

# Inherit device specific configuration
$(call inherit-product, device/samsung/espresso3g/aosp_espresso3g.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_espresso3g
