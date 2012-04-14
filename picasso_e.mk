#
# Copyright (C) 2011 The Android Open-Source Project
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

# ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/ramdisk/init.picasso_e.rc:root/init.picasso_e.rc \
    $(LOCAL_PATH)/prebuilt/ramdisk/init.picasso_e.usb.rc:root/init.picasso_e.usb.rc \
    $(LOCAL_PATH)/prebuilt/ramdisk/ueventd.picasso_e.rc:root/ueventd.picasso_e.rc \

# kernel & modules
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/kernel:kernel \
    $(LOCAL_PATH)/prebuilt/modules/bcm4329.ko:system/lib/modules/bcm4329.ko \
    $(LOCAL_PATH)/prebuilt/modules/scsi_wait_scan.ko:system/lib/modules/scsi_wait_scan.ko \
    $(LOCAL_PATH)/prebuilt/modules/ufsd.ko:system/lib/modules/ufsd.ko \

# prebuilt configs
PRODUCT_COPY_FILES += \
    device/acer/picasso_e/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    device/acer/picasso_e/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/acer/picasso_e/prebuilt/usr/idc/acer-touch.idc:system/usr/idc/acer-touch.idc \



PRODUCT_PROPERTY_OVERRIDES += \
    ro.carrier=wifi-only

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_PACKAGES += \
    com.android.future.usb.accessory \
    libaudioutils \
    audio.primary.picasso_e

# inherit iconia-common
$(call inherit-product, device/acer/t20-common/t20-common.mk)

# inherit proprietary files
$(call inherit-product-if-exists, vendor/acer/picasso_e/picasso_e-vendor.mk)

# include iconia-common
$(call inherit-product, device/acer/t20-common/t20-common.mk)

$(call inherit-product, build/target/product/full_base.mk)

PRODUCT_DEVICE := picasso_e
PRODUCT_MODEL  := A200

