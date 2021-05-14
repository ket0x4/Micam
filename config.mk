VENDOR_PATH := vendor/Micam

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/etc,system/etc)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/lib,system/lib)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/lib64,system/lib64)

#PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/vendor,vendor)

#PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(VENDOR_PATH)/system/priv-app,system/priv-app)

PRODUCT_PACKAGES += \
    Micam

# MiuiCamera
PRODUCT_PROPERTY_OVERRIDES += \
    camera.shutter_sound.blacklist=com.android.camera
    persist.vendor.camera.dual.camera=1
