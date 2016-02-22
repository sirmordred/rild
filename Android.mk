$(shell mkdir -p $(OUT)/obj/SHARED_LIBRARIES/libril_intermediates/)
$(shell touch $(OUT)/obj/SHARED_LIBRARIES/libril_intermediates/export_includes)

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := rild

LOCAL_SRC_FILES:= \
	rild.c


LOCAL_SHARED_LIBRARIES := \
	liblog \
	libcutils \
	libril \
	libdl

LOCAL_CLANG := false

LOCAL_CFLAGS := -DRIL_SHLIB
LOCAL_MODULE_TAGS := optional

include $(BUILD_EXECUTABLE)
