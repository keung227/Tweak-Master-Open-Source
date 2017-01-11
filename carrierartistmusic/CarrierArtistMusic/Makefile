TARGET = iphone:clang:latest:latest
ARCHS = armv7 arm64

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = CarrierArtistMusic
CarrierArtistMusic_FILES = ACRootListController.m $(shell find $(THEOS)/include/SCLAlertView -name '*.m')
CarrierArtistMusic_INSTALL_PATH = /Library/PreferenceBundles
CarrierArtistMusic_FRAMEWORKS = UIKit MessageUI Social QuartzCore CoreGraphics Foundation AVFoundation Accelerate GLKit AudioToolbox
CarrierArtistMusic_CFLAGS = -fobjc-arc
CarrierArtistMusic_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/CarrierArtistMusic.plist$(ECHO_END)
