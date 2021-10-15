# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from alioth device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := alioth
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_alioth
PRODUCT_MODEL := K40

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := alioth
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="hentai_alioth-user 12 SP1A.210812.016 20211009 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Redmi/hentai_alioth/alioth:12/SP1A.210812.016/20211009:user/release-keys
