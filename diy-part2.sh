#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/10.10.10.5/g' package/base-files/files/bin/config_generate

# argon
sed -i s/luci-theme-bootstrap/luci-theme-argon/g feeds/luci/collections/luci/Makefile

# Mouse3701
sed -i s/OpenWrt /Mouse3701 compiled in $(TZ=UTC-8 date +%Y.%m.%d) @ OpenWrt /g
