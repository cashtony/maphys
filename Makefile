DEBUG = 0
FINALPACKAGE = 1
GO_EASY_ON_ME := 1
ARCHS = arm64 arm64e

TARGET := iphone:clang:14.0:10.0
MIN_IOS_SDK_VERSION = 7.0

THEOS_DEVICE_IP = 0.0.0.0 -p 2222

TOOL_NAME = maphys
$(TOOL_NAME)_FILES = maphys.c
$(TOOL_NAME)_FRAMEWORKS = IOKit CoreFoundation
$(TOOL_NAME)_CFLAGS = -objc-arc
$(TOOL_NAME)_CODESIGN_FLAGS = -Stfp0.plist

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tool.mk