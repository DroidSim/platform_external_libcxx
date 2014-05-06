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
test_makefile := external/libcxx/test/containers/associative/multimap/Android.mk

test_name := containers/associative/multimap/iterator
test_src := iterator.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := containers/associative/multimap/size
test_src := size.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := containers/associative/multimap/max_size
test_src := max_size.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := containers/associative/multimap/scary
test_src := scary.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := containers/associative/multimap/types
test_src := types.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := containers/associative/multimap/empty
test_src := empty.pass.cpp
include external/libcxx/test/Android.build.mk

include $(call all-makefiles-under,$(LOCAL_PATH))