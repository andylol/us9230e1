#
# Copyright (C) 2013 The OmniROM Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common AOSP product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/xolo/us9230e1/us9230e1.mk)

# Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_us9230e1
PRODUCT_DEVICE := us9230e1
PRODUCT_BRAND := xolo
PRODUCT_MODEL := xolo-us9230e1
PRODUCT_MANUFACTURER := xolo

# Enable OmniTorch
PRODUCT_PACKAGES += OmniTorch

$(call inherit-product, vendor/xolo/us9230e1/us9230e1-vendor.mk)
