#!/bin/bash
# 修改默认IP
sed -i 's/192.168.1.1/192.168.199.220/g' package/base-files/files/bin/config_generate
# 修改默认主题
sed -i 's/luci-theme-bootstrap/luci-theme-infinityfreedom/g' feeds/luci/collections/luci/Makefile
#修改主机名
sed -i 's/OpenWrt/Abu3d-OP/g' package/base-files/files/bin/config_generate
#关闭自建私有源签名验证
sed -i '90d' package/system/opkg/Makefile
#修改在线安装插件私有源
sed -i '/lede/ { s/downloads/https\:\/\/downloads/g }' package/lean/default-settings/files/zzz-default-settings
sed -i '/lede/ { s/mirrors/https\:\/\/mirrors/g }' package/lean/default-settings/files/zzz-default-settings
sed -i '/lede/ { s/org/org\/snapshots/g }' package/lean/default-settings/files/zzz-default-settings
sed -i '/openwrt_luci/ { s/sed/# sed/g; }'  package/lean/default-settings/files/zzz-default-settings
sed -i 's#https://mirrors.cloud.tencent.com/lede#http://256pd.top:9666/懒人版/bin#g' package/lean/default-settings/files/zzz-default-settings
#修改固件名显示内核版本
sed -i 's/IMG_PREFIX:=/IMG_PREFIX:=k$(LINUX_VERSION)-/g' include/image.mk
