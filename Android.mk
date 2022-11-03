LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_PRELINK_MODULE := false


LOCAL_SRC_FILES := \
	src/tcc_dxb_multi2_sw.c

LOCAL_C_INCLUDES := \
	$(LOCAL_PATH)/include

LOCAL_SHARED_LIBRARIES := \
	libc \
	libutils \
	libcutils \
	liblog

LOCAL_LDLIBS += \
	-lpthread \
	-ldl

LOCAL_ARM_MODE := arm

LOCAL_CFLAGS := $(TCC_OMX_FLAGS) \
	-O1

LOCAL_MODULE := libTCCSWMulti2
LOCAL_MODULE_TAGS := eng debug

include $(BUILD_STATIC_LIBRARY)

