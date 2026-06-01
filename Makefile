TARGET := iphone:clang:16.5:14.0
ARCHS = arm64e
PACKAGE_VERSION = $(THEOS_PACKAGE_BASE_VERSION)

GO_EASY_ON_ME = 1

include $(THEOS)/makefiles/common.mk

LIBRARY_NAME = libmuffinstore

libmuffinstore_FILES = $(wildcard *.m)
libmuffinstore_FRAMEWORKS = UIKit CoreGraphics CoreServices SystemConfiguration
libmuffinstore_PRIVATE_FRAMEWORKS = Preferences StoreKitUI
libmuffinstore_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/library.mk
