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

test_name := algorithms/alg.sorting/alg.merge/merge_comp
test_src := merge_comp.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := algorithms/alg.sorting/alg.merge/inplace_merge_comp
test_src := inplace_merge_comp.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := algorithms/alg.sorting/alg.merge/merge
test_src := merge.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := algorithms/alg.sorting/alg.merge/inplace_merge
test_src := inplace_merge.pass.cpp
include external/libcxx/test/Android.build.mk

include $(call all-makefiles-under,$(LOCAL_PATH))