ifeq ($(TARGET_DEVICE),vigor)

LOCAL_PATH := $(call my-dir)

include $(call all-subdir-makefiles,$(LOCAL_PATH))

endif
