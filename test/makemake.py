import os


def main():
    for root, dirs, files in os.walk('.'):
        tests = []
        for test in [x for x in files if x.endswith('.pass.cpp')]:
            path = os.path.join(root, test)
            out_name = os.path.join('libc++tests', path)
            out_name = os.path.splitext(out_name)[0]  # trim .cpp
            out_name = os.path.splitext(out_name)[0]  # trim .pass
            out_name = os.path.normpath(out_name)
            tests.append((test, out_name))
        with open(os.path.join(root, 'Android.mk'), 'w') as makefile:
            makefile.write('LOCAL_PATH := $(call my-dir)\n')
            if len(tests) > 0:
                makefile.write('''
COMMON_C_INCLUDES := \\
    external/libcxx/test/support \\
    external/libcxx/include \\
    external/libcxxabi/include \\

COMMON_CPPFLAGS := -std=c++11 -fexceptions -frtti
''')
                for test, out_name in tests:
                    makefile.write('''
include $(CLEAR_VARS)
LOCAL_CLANG := true
LOCAL_C_INCLUDES := $(COMMON_C_INCLUDES)
LOCAL_CPPFLAGS := $(COMMON_CPPFLAGS)
LOCAL_SHARED_LIBRARIES := libc++ libcxxabi
LOCAL_SYSTEM_SHARED_LIBRARIES := libc libm
LOCAL_MODULE := {0}
LOCAL_SRC_FILES := {1}
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_CLANG := true
LOCAL_C_INCLUDES := $(COMMON_C_INCLUDES)
LOCAL_CPPFLAGS := $(COMMON_CPPFLAGS)
LOCAL_LDFLAGS := -nodefaultlibs
LOCAL_LDLIBS := -lc -lm -lpthread
LOCAL_SHARED_LIBRARIES := libc++ libcxxabi libcompiler_rt
LOCAL_MODULE := {0}
LOCAL_SRC_FILES := {1}
include $(BUILD_HOST_EXECUTABLE)
'''.format(out_name, test))
            makefile.write('include $(call all-makefiles-under,$(LOCAL_PATH))')


if __name__ == '__main__':
    main()
