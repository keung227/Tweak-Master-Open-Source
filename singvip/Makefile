ARCHS = armv7 arm64
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SingVIP
SingVIP_FILES = Tweak.xm
SingVIP_FRAMEWORKS = UIKit
SingVIP_LDFLAGS += -Wl,-segalign,4000


include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
