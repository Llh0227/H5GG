#ARCHS = arm64
#TARGET = iphone:13.7:11.4
#THEOS_DEVICE_IP = iphoneX.local
#THEOS_PLATFORM_DEB_COMPRESSION_TYPE = gzip
#DEBUG=0
#STRIP=1
#FINALPACKAGE=1
#include $(THEOS)/makefiles/common.mk
#TWEAK_NAME = H5GG
#H5GG_FILES = Tweak.mm ldid-master/ldid.cpp ldid-master/lookup2.c
#H5GG_CFLAGS = -fobjc-arc -fvisibility=hidden 
#H5GG_CCFLAGS = -fobjc-arc -fvisibility=hidden -std=c++11
#H5GG_LOGOS_DEFAULT_GENERATOR = internal
#include $(THEOS_MAKE_PATH)/tweak.mk
#clean::
#	rm -rf ./packages/*
ARCHS = arm64

TARGET = iphone:13.7:11.4

THEOS_DEVICE_IP = iphoneX.local

THEOS_PLATFORM_DEB_COMPRESSION_TYPE = gzip

DEBUG=0
STRIP=1
FINALPACKAGE=1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = H5GG

H5GG_FILES = Tweak.mm ldid-master/ldid.cpp ldid-master/lookup2.c
H5GG_CFLAGS = -fobjc-arc -fvisibility=hidden 
H5GG_CCFLAGS = -fobjc-arc -fvisibility=hidden -std=c++11

# 关键补充：C++ STL头文件路径
H5GG_CFLAGS += -I/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include/c++/v1
H5GG_CCFLAGS += -I/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include/c++/v1 -std=c++11 -stdlib=libc++
H5GG_CXXFLAGS += -I/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include/c++/v1 -stdlib=libc++

H5GG_LOGOS_DEFAULT_GENERATOR = internal

include $(THEOS_MAKE_PATH)/tweak.mk

clean::
	rm -rf ./packages/*
