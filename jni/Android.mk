# Copyright (C) 2009 The Android Open Source Project
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

LOCAL_CPPFLAGS += -fvisibility-inlines-hidden -fvisibility=hidden

LOCAL_LDLIBS := -pie -fPIE

LOCAL_CFLAGS += -DTUP_LOG -std=c99
LOCAL_ARM_MODE := arm

LOCAL_MODULE    := axel
LOCAL_SRC_FILES := axel.c conf.c conn.c ftp.c http.c search.c tcp.c text.c

include $(BUILD_EXECUTABLE)

