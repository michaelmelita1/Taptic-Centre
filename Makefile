ARCHS = arm64 arm64e
TARGET = iphone:clang:13.2

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TapticCentre
$(TWEAK_NAME)_FILES = Tweak.x
$(TWEAK_NAME)_CFLAGS += -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"

include $(THEOS_MAKE_PATH)/aggregate.mk
