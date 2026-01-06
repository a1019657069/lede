# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

if("/home/yan/Downloads/openwrt/lede/build_dir/host/cmake-3.30.5/Tests/ExternalProjectLocal/Step1NoDir.tgz" STREQUAL "")
  message(FATAL_ERROR "LOCAL can't be empty")
endif()

if(NOT EXISTS "/home/yan/Downloads/openwrt/lede/build_dir/host/cmake-3.30.5/Tests/ExternalProjectLocal/Step1NoDir.tgz")
  message(FATAL_ERROR "File not found: /home/yan/Downloads/openwrt/lede/build_dir/host/cmake-3.30.5/Tests/ExternalProjectLocal/Step1NoDir.tgz")
endif()

if("SHA256" STREQUAL "")
  message(WARNING "File cannot be verified since no URL_HASH specified")
  return()
endif()

if("496229e2a5ed620a37c385ad9406004a18026beab8b55dd2c4565d4b7f1d5383" STREQUAL "")
  message(FATAL_ERROR "EXPECT_VALUE can't be empty")
endif()

message(VERBOSE "verifying file...
     file='/home/yan/Downloads/openwrt/lede/build_dir/host/cmake-3.30.5/Tests/ExternalProjectLocal/Step1NoDir.tgz'")

file("SHA256" "/home/yan/Downloads/openwrt/lede/build_dir/host/cmake-3.30.5/Tests/ExternalProjectLocal/Step1NoDir.tgz" actual_value)

if(NOT "${actual_value}" STREQUAL "496229e2a5ed620a37c385ad9406004a18026beab8b55dd2c4565d4b7f1d5383")
  message(FATAL_ERROR "error: SHA256 hash of
  /home/yan/Downloads/openwrt/lede/build_dir/host/cmake-3.30.5/Tests/ExternalProjectLocal/Step1NoDir.tgz
does not match expected value
  expected: '496229e2a5ed620a37c385ad9406004a18026beab8b55dd2c4565d4b7f1d5383'
    actual: '${actual_value}'
")
endif()

message(VERBOSE "verifying file... done")
