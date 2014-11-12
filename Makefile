ARCHS = armv7 arm64
include theos/makefiles/common.mk

TWEAK_NAME = SpinSettings
SpinSettings_FILES = Tweak.xm
SpinSettings_FRAMEWORKS = UIKit Foundation CoreGraphics
SpinSettings_CFLAGS = -Wno-error
export GO_EASY_ON_ME := 1
include $(THEOS_MAKE_PATH)/tweak.mk

SUBPROJECTS += SpinSettingsSettings
include $(THEOS_MAKE_PATH)/aggregate.mk

after-install::
	install.exec "killall -9 backboardd"
