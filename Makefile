export ARCHS = arm64 arm64e
export TARGET = iphone:clang:14.6
export SYSROOT = $(THEOS)/sdks/iPhoneOS14.5.sdk

INSTALL_TARGET_PROCESSES = SpringBoard

TWEAK_NAME = Matoi

Matoi_FILES = Matoi.xm
Matoi_CFLAGS = -fobjc-arc
Matoi_FRAMEWORKS = UIKit
Matoi_EXTRA_FRAMEWORKS += Cephei
Matoi_LIBRARIES = gcuniversal

SUBPROJECTS += matoipreferences

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/tweak.mk
include $(THEOS_MAKE_PATH)/aggregate.mk
