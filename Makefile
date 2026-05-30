TARGET := iphone:clang:16.5:14.0
ARCHS = arm64e
PACKAGE_VERSION = $(THEOS_PACKAGE_BASE_VERSION)

GO_EASY_ON_ME = 1

include $(THEOS)/makefiles/common.mk

FRAMEWORK_NAME = MuffinStore

MuffinStore_FILES = $(wildcard *.m)
MuffinStore_FRAMEWORKS = UIKit CoreGraphics CoreServices SystemConfiguration
MuffinStore_PRIVATE_FRAMEWORKS = Preferences StoreKitUI
MuffinStore_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/framework.mk
