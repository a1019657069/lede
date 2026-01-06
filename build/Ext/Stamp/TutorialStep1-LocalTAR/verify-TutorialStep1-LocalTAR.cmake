# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

if("/home/yan/Downloads/openwrt/lede/build_dir/host/cmake-3.30.5/Tests/ExternalProjectLocal/Step1.tar" STREQUAL "")
  message(FATAL_ERROR "LOCAL can't be empty")
endif()

if(NOT EXISTS "/home/yan/Downloads/openwrt/lede/build_dir/host/cmake-3.30.5/Tests/ExternalProjectLocal/Step1.tar")
  message(FATAL_ERROR "File not found: /home/yan/Downloads/openwrt/lede/build_dir/host/cmake-3.30.5/Tests/ExternalProjectLocal/Step1.tar")
endif()

if("MD5" STREQUAL "")
  message(WARNING "File cannot be verified since no URL_HASH specified")
  return()
endif()

if("a87c5b47c0201c09ddfe1d5738fdb1e3" STREQUAL "")
  message(FATAL_ERROR "EXPECT_VALUE can't be empty")
endif()

message(VERBOSE "verifying file...
     file='/home/yan/Downloads/openwrt/lede/build_dir/host/cmake-3.30.5/Tests/ExternalProjectLocal/Step1.tar'")

file("MD5" "/home/yan/Downloads/openwrt/lede/build_dir/host/cmake-3.30.5/Tests/ExternalProjectLocal/Step1.tar" actual_value)

if(NOT "${actual_value}" STREQUAL "a87c5b47c0201c09ddfe1d5738fdb1e3")
  message(FATAL_ERROR "error: MD5 hash of
  /home/yan/Downloads/openwrt/lede/build_dir/host/cmake-3.30.5/Tests/ExternalProjectLocal/Step1.tar
does not match expected value
  expected: 'a87c5b47c0201c09ddfe1d5738fdb1e3'
    actual: '${actual_value}'
")
endif()

message(VERBOSE "verifying file... done")
