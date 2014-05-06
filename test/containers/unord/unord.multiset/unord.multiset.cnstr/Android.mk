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

test_name := containers/unord/unord.multiset/unord.multiset.cnstr/default
test_src := default.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := containers/unord/unord.multiset/unord.multiset.cnstr/size_hash
test_src := size_hash.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := containers/unord/unord.multiset/unord.multiset.cnstr/range_size_hash_equal_allocator
test_src := range_size_hash_equal_allocator.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := containers/unord/unord.multiset/unord.multiset.cnstr/init_size
test_src := init_size.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := containers/unord/unord.multiset/unord.multiset.cnstr/move_noexcept
test_src := move_noexcept.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := containers/unord/unord.multiset/unord.multiset.cnstr/size_hash_equal
test_src := size_hash_equal.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := containers/unord/unord.multiset/unord.multiset.cnstr/range_size_hash
test_src := range_size_hash.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := containers/unord/unord.multiset/unord.multiset.cnstr/default_noexcept
test_src := default_noexcept.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := containers/unord/unord.multiset/unord.multiset.cnstr/init_size_hash_equal
test_src := init_size_hash_equal.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := containers/unord/unord.multiset/unord.multiset.cnstr/copy
test_src := copy.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := containers/unord/unord.multiset/unord.multiset.cnstr/init
test_src := init.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := containers/unord/unord.multiset/unord.multiset.cnstr/assign_copy
test_src := assign_copy.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := containers/unord/unord.multiset/unord.multiset.cnstr/init_size_hash_equal_allocator
test_src := init_size_hash_equal_allocator.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := containers/unord/unord.multiset/unord.multiset.cnstr/move
test_src := move.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := containers/unord/unord.multiset/unord.multiset.cnstr/move_assign_noexcept
test_src := move_assign_noexcept.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := containers/unord/unord.multiset/unord.multiset.cnstr/copy_alloc
test_src := copy_alloc.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := containers/unord/unord.multiset/unord.multiset.cnstr/size
test_src := size.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := containers/unord/unord.multiset/unord.multiset.cnstr/init_size_hash
test_src := init_size_hash.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := containers/unord/unord.multiset/unord.multiset.cnstr/range_size
test_src := range_size.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := containers/unord/unord.multiset/unord.multiset.cnstr/allocator
test_src := allocator.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := containers/unord/unord.multiset/unord.multiset.cnstr/range
test_src := range.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := containers/unord/unord.multiset/unord.multiset.cnstr/size_hash_equal_allocator
test_src := size_hash_equal_allocator.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := containers/unord/unord.multiset/unord.multiset.cnstr/dtor_noexcept
test_src := dtor_noexcept.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := containers/unord/unord.multiset/unord.multiset.cnstr/assign_move
test_src := assign_move.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := containers/unord/unord.multiset/unord.multiset.cnstr/assign_init
test_src := assign_init.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := containers/unord/unord.multiset/unord.multiset.cnstr/range_size_hash_equal
test_src := range_size_hash_equal.pass.cpp
include external/libcxx/test/Android.build.mk

test_name := containers/unord/unord.multiset/unord.multiset.cnstr/move_alloc
test_src := move_alloc.pass.cpp
include external/libcxx/test/Android.build.mk

include $(call all-makefiles-under,$(LOCAL_PATH))