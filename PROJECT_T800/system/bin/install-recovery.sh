#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY:7647232:fa7c74bff7fc3c771271455b2acdc9d0950a9635; then
  applypatch EMMC:/dev/block/platform/dw_mmc.0/by-name/BOOT:7434240:2255815dc1c8b35725bc3b4fc85bdb6027c977c8 EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY fa7c74bff7fc3c771271455b2acdc9d0950a9635 7647232 2255815dc1c8b35725bc3b4fc85bdb6027c977c8:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
