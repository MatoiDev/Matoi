BUNDLE_NAME = MatoiPreferences

MatoiPreferences_FILES = $(wildcard *.m)
MatoiPreferences_FRAMEWORKS = UIKit
MatoiPreferences_PRIVATE_FRAMEWORKS = Preferences
MatoiPreferences_INSTALL_PATH = /Library/PreferenceBundles
MatoiPreferences_CFLAGS = -fobjc-arc
MatoiPreferences_EXTRA_FRAMEWORKS = Cephei CepheiPrefs
MatoiPreferences_LIBRARIES = gcuniversal

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/bundle.mk
