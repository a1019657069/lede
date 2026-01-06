# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

if("/home/yan/Downloads/openwrt/lede/build_dir/host/cmake-3.30.5/Tests/ExternalProjectLocal/Step1NoDir.tar" STREQUAL "")
  message(FATAL_ERROR "LOCAL can't be empty")
endif()

if(NOT EXISTS "/home/yan/Downloads/openwrt/lede/build_dir/host/cmake-3.30.5/Tests/ExternalProjectLocal/Step1NoDir.tar")
  message(FATAL_ERROR "File not found: /home/yan/Downloads/openwrt/lede/build_dir/host/cmake-3.30.5/Tests/ExternalProjectLocal/Step1NoDir.tar")
endif()

if("MD5" STREQUAL "")
  message(WARNING "File cannot be verified since no URL_HASH specified")
  return()
endif()

if("d09e3d370c5c908fa035c30939ee438e" STREQUAL "")
  message(FATAL_ERROR "EXPECT_VALUE can't be empty")
endif()

message(VERBOSE "verifying file...
     file='/home/yan/Downloads/openwrt/lede/build_dir/host/cmake-3.30.5/Tests/ExternalProjectLocal/Step1NoDir.tar'")

file("MD5" "/home/yan/Downloads/openwrt/lede/build_dir/host/cmake-3.30.5/Tests/ExternalProjectLocal/Step1NoDir.tar" actual_value)

if(NOT "${actual_value}" STREQUAL "d09e3d370c5c908fa035c30939ee438e")
  message(FATAL_ERROR "error: MD5 hash of
  /home/yan/Downloads/openwrt/lede/build_dir/host/cmake-3.30.5/Tests/ExternalProjectLocal/Step1NoDir.tar
does not match expected value
  expected: 'd09e3d370c5c908fa035c30939ee438e'
    actual: '${actual_value}'
")
endif()

message(VERBOSE "verifying file... done")
