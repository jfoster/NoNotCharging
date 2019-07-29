GO_EASY_ON_ME = 1
ARCHS = armv6 armv7 arm64
TARGET = iphone:clang:latest:latest
CFLAGS = -fobjc-arc

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NoNotCharging64
NoNotCharging64_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 backboardd"
