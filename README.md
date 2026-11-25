# OneCloud FanchmWrt

玩客云（Thunder OneCloud，Amlogic S805 / meson8b，32 位）的 FanchmWrt 固件云编译仓库。

源码是 [fanchmwrt/fanchmwrt](https://github.com/fanchmwrt/fanchmwrt) 的 `fanchmwrt-25.12.6` 分支
（OpenWrt 25.12 基础 + `package/fcm` 行为管理引擎 + fanchmwrt 主题）。
该源码树没有 S805 的 target，设备支持（设备树、6.12 内核补丁、镜像打包）由本仓库的
`target/linux/amlogic` 提供，取自 [neomikanagi/onecloud-openwrt](https://github.com/neomikanagi/onecloud-openwrt)。

## 产物

| 文件 | 用途 |
| --- | --- |
| `*-emmc.burn.img.xz` | 第一次刷机 / 救砖（Amlogic USB Burning Tool 线刷） |
| `*-sysupgrade.img.gz` | 已装好后的升级 |

## 默认配置

| 项 | 值 |
| --- | --- |
| LAN | `192.168.5.254/24`（DHCP 服务器已关闭，不与主路由冲突） |
| 用户名 / 密码 | `root` / `password` |
| 时区 | `Asia/Shanghai` |
| 主题 | fanchmwrt |

## 自己编译

Actions → **Build FanchmWrt OneCloud** → Run workflow，可改 LAN IP。

## 致谢

- [neomikanagi/onecloud-openwrt](https://github.com/neomikanagi/onecloud-openwrt) — S805 target 与打包流程
- [fanchmwrt/fanchmwrt](https://github.com/fanchmwrt/fanchmwrt) — 上游系统
- [hzyitc/u-boot-onecloud](https://github.com/hzyitc/u-boot-onecloud)、[hzyitc/AmlImg](https://github.com/hzyitc/AmlImg)

GPL-2.0
