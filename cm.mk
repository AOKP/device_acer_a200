# Release name
PRODUCT_RELEASE_NAME := A200

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/acer/a200/a200.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := a200
PRODUCT_NAME   := cm_a200
PRODUCT_BRAND  := Acer
PRODUCT_MODEL  := A200
PRODUCT_MANUFACTURER := Acer

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=picasso_e \
    BUILD_FINGERPRINT="acer/a200/picasso_e:4.0.33/IMM76D/000001586:user/release-keys" \
    PRIVATE_BUILD_DESC="picasso_e-user 4.0.3 IMM76D 000001586 release-keys"

