#! /vendor/bin/sh
#
# Copyright (C) 2021 Raphielscape LLC. and Haruka LLC.
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

wipe=$(getprop persist.vendor.sensors.wipe)

# Clean the file and regenerate
if [ ! "$wipe" ]; then
    sed -i '/^/d' /mnt/vendor/persist/sensors/sensors_list.txt
    sed -i '/^/d' /mnt/vendor/persist/sensors/cit_sensors_list.txt
fi

setprop persist.vendor.sensors.wipe true
