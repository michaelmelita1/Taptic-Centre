ARCHS = arm64
TARGET = iphone:clang:13.2:13.2

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Taptic Centre
$(TWEAK_NAME)_FILES = Tweak.x
$(TWEAK_NAME)_CFLAGS += -fobjc-arc
$(TWEAK_NAME)_FRAMEWORKS += UIKit AudioToolbox

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"

include $(THEOS_MAKE_PATH)/aggregate.mk
