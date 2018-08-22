#
# Copyright 2014 The Android Open-Source Project
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

$(call inherit-product, $(LOCAL_PATH)/rk3399.mk)
$(call inherit-product, device/rockchip/common/tv/tv_base.mk)

PRODUCT_CHARACTERISTICS := box

PRODUCT_BRAND := rockchip
PRODUCT_MANUFACTURER := rockchip
PRODUCT_NAME := rk3399_firefly_mipi_box
PRODUCT_DEVICE := rk3399_firefly_mipi_box
PRODUCT_MODEL := firefly-rk3399

PRODUCT_FIREFLY_NAME := MIPI785

PRODUCT_AAPT_CONFIG := normal large mdpi tvdpi hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi


# debug-logs
ifneq ($(TARGET_BUILD_VARIANT),user)
MIXIN_DEBUG_LOGS := true
endif

#for drm widevine
BUILD_WITH_WIDEVINE := true

PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.screen.landscape.xml:system/etc/permissions/android.hardware.screen.landscape.xml \
	frameworks/native/data/etc/android.hardware.screen.portrait.xml:system/etc/permissions/android.hardware.screen.portrait.xml \
	frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml
