#
# Copyright (C) 2017 The LineageOS Open Source Project
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

# Inherit from common msm8953-common
-include device/bq/msm8953-common/BoardConfigCommon.mk

DEVICE_PATH := device/bq/bardockpro

# Asserts
TARGET_OTA_ASSERT_DEVICE := bardock-pro,BARDOCK-PRO,bardockpro,BARDOCKPRO

# Kernel
TARGET_KERNEL_CONFIG := lineage_bardockpro_defconfig
TARGET_KERNEL_SOURCE := kernel/bq/msm8953

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# SELinux (TODO: generate selinux with audit2allow)
#BOARD_SEPOLICY_DIRS += $(LOCAL_PATH)/sepolicy

# inherit from the proprietary version
-include vendor/bq/bardockpro/BoardConfigVendor.mk