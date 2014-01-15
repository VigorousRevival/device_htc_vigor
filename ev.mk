# Specify phone tech before including full_phone
$(call inherit-product, vendor/ev/config/cdma.mk)


# Inherit some common evervolv stuff.
$(call inherit-product, vendor/ev/config/common_full_phone.mk)
$(call inherit-product, vendor/ev/product/lite_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/htc/vigor/vigor.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Copy compatible prebuilt files
PRODUCT_COPY_FILES += \
    vendor/ev/prebuilt/720p/media/bootanimation.zip:system/media/bootanimation.zip

# Device naming
PRODUCT_NAME := ev_vigor
PRODUCT_BRAND := htc
PRODUCT_DEVICE := vigor
PRODUCT_MODEL := ADR6425LVW
PRODUCT_MANUFACTURER := HTC

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_vigor BUILD_ID=IML74K BUILD_FINGERPRINT="verizon_wwe/htc_vigor/vigor:4.0.3/IML74K/570011.14:user/release-keys" PRIVATE_BUILD_DESC="4.05.605.14 CL570011 release-keys"

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := $(shell date +%Y%m%d)-kitkat
PRODUCT_VERSION_DEVICE_SPECIFIC := b1

PRODUCT_PACKAGES += \
    CarHome2.2 \
    CarhomeLauncher

