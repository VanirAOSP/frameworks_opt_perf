#
# Copyright (C) 2010 The Android Open Source Project
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
include $(CLEAR_VARS)

LOCAL_MODULE := libperf_jni

LOCAL_SRC_FILES := \
	org_codeaurora_Performance.cpp \
	perf_jni.cpp

LOCAL_SHARED_LIBRARIES := \
	libnativehelper \
	libcutils \
	libutils \
	liblog

LOCAL_C_INCLUDES += \
	$(JNI_H_INCLUDE)

LOCAL_CFLAGS += -fvisibility=hidden

LOCAL_CFLAGS += -fno-strict-aliasing

include $(BUILD_SHARED_LIBRARY)
