# Inherit common Lineage stuff
$(call inherit-product, vendor/lineage/config/common.mk)

ifneq ($(TARGET_EXCLUDE_LINEAGE_PACKAGES),true)
# Inherit Lineage atv device tree
$(call inherit-product, device/lineage/atv/lineage_atv.mk)
endif

# AOSP packages
PRODUCT_PACKAGES += \
    LeanbackIME

ifneq ($(TARGET_EXCLUDE_LINEAGE_PACKAGES),true)
# Lineage packages
PRODUCT_PACKAGES += \
    LineageCustomizer
endif

PRODUCT_PACKAGE_OVERLAYS += vendor/lineage/overlay/tv
