ARCHS = armv7 arm64
TARGET = iphone:clang:latest:latest
#CFLAGS = -fobjc-arc
#THEOS_PACKAGE_DIR_NAME = debs

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CarrierArtistMusic
CarrierArtistMusic_FILES = Tweak.xm ACDataServer.m
CarrierArtistMusic_FRAMEWORKS = UIKit
CarrierArtistMusic_LDFLAGS += -Wl,-segalign,4000

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += CarrierArtistMusic
include $(THEOS_MAKE_PATH)/aggregate.mk
