# Release name
PRODUCT_RELEASE_NAME := A200

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/acer/picasso_e/picasso_e.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := picasso_e
PRODUCT_NAME   := cm_picasso_e
PRODUCT_BRAND  := Acer
PRODUCT_MODEL  := A200
PRODUCT_MANUFACTURER := Acer

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=picasso_e \
    BUILD_FINGERPRINT="acer/a200/picasso_e:4.0.33/IMM76D/000001586:user/release-keys" \
    PRIVATE_BUILD_DESC="picasso_e-user 4.0.3 IMM76D 000001586 release-keys"

