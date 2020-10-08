#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' openwrt/package/base-files/files/bin/config_generate
sed -i 's/192.168/10.0/g' package/base-files/files/bin/config_generate
# Add Some Package
mkdir -p package/custom && cd package/custom
src-git helloworld https://github.com/fw876/helloworld
src-git jerryk https://github.com/jerrykuku/openwrt-package
src-git lienol https://github.com/Lienol/openwrt-package
src-git infinityfreedom https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom.git
