ARCHS = armv7 arm64
include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = VivaVideoVIP
VivaVideoVIP_FILES = VivaVideoVIP.mm
VivaVideoVIP_INSTALL_PATH = /Library/PreferenceBundles
VivaVideoVIP_FRAMEWORKS = UIKit
VivaVideoVIP_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/VivaVideoVIP.plist$(ECHO_END)
