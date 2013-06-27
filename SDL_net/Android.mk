LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := SDL-prebuilt
LOCAL_SRC_FILES := $(LOCAL_PATH)/ext/SDL/$(TARGET_ARCH_ABI)/libSDL.so
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/ext/include
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := SDL-NET
LOCAL_C_INCLUDES := $(LOCAL_PATH) $(LOCAL_PATH)/include 
LOCAL_CFLAGS := -O3 
LOCAL_SRC_FILES := \
        $(subst $(LOCAL_PATH)/,, \
        $(wildcard $(LOCAL_PATH)/*.c))
LOCAL_SHARED_LIBRARIES := SDL-prebuilt

include $(BUILD_SHARED_LIBRARY)
