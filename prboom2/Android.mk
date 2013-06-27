

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE := SDL-prebuilt
LOCAL_SRC_FILES := $(LOCAL_PATH)/ext/SDL/$(TARGET_ARCH_ABI)/libSDL.so
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/ext/include
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := SDL-NET-prebuilt
LOCAL_SRC_FILES := $(LOCAL_PATH)/ext/SDL-NET/$(TARGET_ARCH_ABI)/libSDL-NET.so
include $(PREBUILT_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE    := doom
LOCAL_C_INCLUDES := $(LOCAL_PATH)/ext/include $(LOCAL_PATH)/src $(LOCAL_PATH)/src/TEXTSCREEN $(LOCAL_PATH)/src/MUSIC $(LOCAL_PATH)/src/PCSOUND $(LOCAL_PATH)/src/SDL/include
LOCAL_CFLAGS := -DGL_VERSION_1_5 -DUSE_SDL_NET -DHAVE_CONFIG_H -DNORMALUNIX -DLINUX -O3 -ffast-math -fexpensive-optimizations 
LOCAL_SRC_FILES := \
        $(subst $(LOCAL_PATH)/,, \
        $(wildcard $(LOCAL_PATH)/src/SDL/*.c) \
        $(wildcard $(LOCAL_PATH)/src/TEXTSCREEN/*.c) \
        $(wildcard $(LOCAL_PATH)/src/MUSIC/*.c) \
        $(wildcard $(LOCAL_PATH)/src/PCSOUND/*.c) \
        $(wildcard $(LOCAL_PATH)/src/*.c))
LOCAL_LDLIBS := -lm -llog -ldl -lGLESv1_CM -lGLESv2
LOCAL_SHARED_LIBRARIES := SDL-prebuilt SDL-NET-prebuilt
include $(BUILD_SHARED_LIBRARY)
