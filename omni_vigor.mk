# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Specify phone tech before including full_phone
$(call inherit-product, vendor/omni/config/cdma.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/htc/vigor/vigor.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720
USE_LOWFPS_BOOTANI := true

# Device naming
PRODUCT_NAME := omni_vigor
PRODUCT_BRAND := htc
PRODUCT_DEVICE := vigor
PRODUCT_MODEL := ADR6425LVW
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_vigor BUILD_ID=IML74K BUILD_FINGERPRINT="verizon_wwe/htc_vigor/vigor:4.0.3/IML74K/570011.14:user/release-keys" PRIVATE_BUILD_DESC="4.05.605.14 CL570011 release-keys"

# Release name
PRODUCT_RELEASE_NAME := Vigor

$(call inherit-product-if-exists, vendor/htc/vigor/vigor-vendor.mk)

PRODUCT_PACKAGES += \
    CarHome2.2 \
    CarhomeLauncher


-include vendor/omni/config/common_versions.mk
