LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := MiuiCamera
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := MiuiCamera/MiuiCamera.apk
LOCAL_CERTIFICATE := platform
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
#if you don't want to remove snap,aosp cam disable line 13
LOCAL_OVERRIDES_PACKAGES := SnapdragonCamera Snap Camera2
include $(BUILD_PREBUILT)
