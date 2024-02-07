
PWD=$(shell pwd)
AAP_JUCE_DIR=$(PWD)/external/aap-juce

APP_NAME=AudioPluginHost

APP_BUILD_DIR=$(PWD)
APP_SRC_DIR=$(PWD)/external/JUCE/extras/AudioPluginHost
JUCE_DIR=$(PWD)/external/JUCE

APP_SHARED_CODE_LIBS="Source/$(APP_NAME)_artefacts/lib$(APP_NAME)_SharedCode.a


#PATCH_FILE=$(PWD)/aap-juce-support.patch
#PATCH_DEPTH=1

AAP_JUCE_CMAKE_PATCH_HOSTING=1

# JUCE patches if any
JUCE_PATCHES= \
	$(PWD)/aap-juce-support.patch \
	$(PWD)/juce-modules.patch \
	$(PWD)/external/aap-juce/juce-patches/7.0.6/export-jni-symbols.patch \
	$(PWD)/external/aap-juce/juce-patches/7.0.6/thread-via-dalvik.patch
JUCE_PATCH_DEPTH=1

include $(AAP_JUCE_DIR)/Makefile.cmake-common
