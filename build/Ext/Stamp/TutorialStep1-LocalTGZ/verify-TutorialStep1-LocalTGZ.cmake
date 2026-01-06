# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

if("/home/yan/Downloads/openwrt/lede/build_dir/host/cmake-3.30.5/Tests/ExternalProjectLocal/Step1.tgz" STREQUAL "")
  message(FATAL_ERROR "LOCAL can't be empty")
endif()

if(NOT EXISTS "/home/yan/Downloads/openwrt/lede/build_dir/host/cmake-3.30.5/Tests/ExternalProjectLocal/Step1.tgz")
  message(FATAL_ERROR "File not found: /home/yan/Downloads/openwrt/lede/build_dir/host/cmake-3.30.5/Tests/ExternalProjectLocal/Step1.tgz")
endif()

if("MD5" STREQUAL "")
  message(WARNING "File cannot be verified since no URL_HASH specified")
  return()
endif()

if("38c648e817339c356f6be00eeed79bd0" STREQUAL "")
  message(FATAL_ERROR "EXPECT_VALUE can't be empty")
endif()

message(VERBOSE "verifying file...
     file='/home/yan/Downloads/openwrt/lede/build_dir/host/cmake-3.30.5/Tests/ExternalProjectLocal/Step1.tgz'")

file("MD5" "/home/yan/Downloads/openwrt/lede/build_dir/host/cmake-3.30.5/Tests/ExternalProjectLocal/Step1.tgz" actual_value)

if(NOT "${actual_value}" STREQUAL "38c648e817339c356f6be00eeed79bd0")
  message(FATAL_ERROR "error: MD5 hash of
  /home/yan/Downloads/openwrt/lede/build_dir/host/cmake-3.30.5/Tests/ExternalProjectLocal/Step1.tgz
does not match expected value
  expected: '38c648e817339c356f6be00eeed79bd0'
    actual: '${actual_value}'
")
endif()

message(VERBOSE "verifying file... done")
