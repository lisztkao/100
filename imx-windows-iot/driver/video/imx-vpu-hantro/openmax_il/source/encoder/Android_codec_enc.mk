LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CFLAGS += $(IMX_VPU_CFLAGS)
LOCAL_CFLAGS += -DENCH1 -DOMX_ENCODER_VIDEO_DOMAIN -DH1V6


LOCAL_LDFLAGS += $(IMX_VPU_LDFLAGS)
LOCAL_CFLAGS_arm64 += -DUSE_64BIT_ENV

LOCAL_C_INCLUDES += $(IMX_VPU_ENC_INCLUDES)

LOCAL_SRC_FILES := \
    encoder_h264.c \
    encoder_vp8.c \
    ../OSAL.c

LOCAL_SHARED_LIBRARIES := liblog libcutils
LOCAL_SHARED_LIBRARIES += libhantro_h1

LOCAL_MODULE:= libcodec_enc
LOCAL_MODULE_TAGS := eng
LOCAL_VENDOR_MODULE := true
include $(BUILD_SHARED_LIBRARY)
