# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/home/yan/Downloads/openwrt/lede/build/Ext/Source/TutorialStep1-LocalZIP")
  file(MAKE_DIRECTORY "/home/yan/Downloads/openwrt/lede/build/Ext/Source/TutorialStep1-LocalZIP")
endif()
file(MAKE_DIRECTORY
  "/home/yan/Downloads/openwrt/lede/build/Ext/Build/TutorialStep1-LocalZIP"
  "/home/yan/Downloads/openwrt/lede/build/Ext/Install/TutorialStep1-LocalZIP"
  "/home/yan/Downloads/openwrt/lede/build/Ext/tmp/TutorialStep1-LocalZIP"
  "/home/yan/Downloads/openwrt/lede/build/Ext/Stamp/TutorialStep1-LocalZIP"
  "/home/yan/Downloads/openwrt/lede/build/Ext/Download/TutorialStep1-LocalZIP"
  "/home/yan/Downloads/openwrt/lede/build/Ext/Stamp/TutorialStep1-LocalZIP"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/yan/Downloads/openwrt/lede/build/Ext/Stamp/TutorialStep1-LocalZIP/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/yan/Downloads/openwrt/lede/build/Ext/Stamp/TutorialStep1-LocalZIP${cfgdir}") # cfgdir has leading slash
endif()
