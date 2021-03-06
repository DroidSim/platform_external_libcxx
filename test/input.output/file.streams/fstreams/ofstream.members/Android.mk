#
# Copyright (C) 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := $(call my-dir)
test_makefile := external/libcxx/test/input.output/file.streams/fstreams/ofstream.members/Android.mk

test_name := input.output/file.streams/fstreams/ofstream.members/open_pointer
test_src := open_pointer.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := input.output/file.streams/fstreams/ofstream.members/open_string
test_src := open_string.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := input.output/file.streams/fstreams/ofstream.members/rdbuf
test_src := rdbuf.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := input.output/file.streams/fstreams/ofstream.members/close
test_src := close.pass.cpp
include external/libcxx/test/Android.build.mk

include $(call all-makefiles-under,$(LOCAL_PATH))