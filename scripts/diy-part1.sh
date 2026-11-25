#!/bin/bash
# Runs inside the OpenWrt tree before `feeds update`.
# Official feeds only - nothing to do.
set -e
# OpenClash: clone the luci app into the tree (not in official feeds)
rm -rf package/luci-app-openclash
git clone --depth=1 https://github.com/vernesong/OpenClash.git /tmp/openclash
cp -a /tmp/openclash/luci-app-openclash package/luci-app-openclash
rm -rf /tmp/openclash
echo "diy-part1: stock feeds + OpenClash app injected"
