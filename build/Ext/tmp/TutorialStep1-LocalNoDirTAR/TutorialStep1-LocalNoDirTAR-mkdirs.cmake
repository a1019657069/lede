# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/home/yan/Downloads/openwrt/lede/build/Ext/Source/TutorialStep1-LocalNoDirTAR")
  file(MAKE_DIRECTORY "/home/yan/Downloads/openwrt/lede/build/Ext/Source/TutorialStep1-LocalNoDirTAR")
endif()
file(MAKE_DIRECTORY
  "/home/yan/Downloads/openwrt/lede/build/Ext/Build/TutorialStep1-LocalNoDirTAR"
  "/home/yan/Downloads/openwrt/lede/build/Ext/Install/TutorialStep1-LocalNoDirTAR"
  "/home/yan/Downloads/openwrt/lede/build/Ext/tmp/TutorialStep1-LocalNoDirTAR"
  "/home/yan/Downloads/openwrt/lede/build/Ext/Stamp/TutorialStep1-LocalNoDirTAR"
  "/home/yan/Downloads/openwrt/lede/build/Ext/Download/TutorialStep1-LocalNoDirTAR"
  "/home/yan/Downloads/openwrt/lede/build/Ext/Stamp/TutorialStep1-LocalNoDirTAR"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/yan/Downloads/openwrt/lede/build/Ext/Stamp/TutorialStep1-LocalNoDirTAR/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/yan/Downloads/openwrt/lede/build/Ext/Stamp/TutorialStep1-LocalNoDirTAR${cfgdir}") # cfgdir has leading slash
endif()
