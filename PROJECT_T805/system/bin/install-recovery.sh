#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY:7698432:00a76959b946430120eb0faf0c6b8af23b4bc204; then
  applypatch EMMC:/dev/block/platform/dw_mmc.0/by-name/BOOT:7485440:6717b4d9c0d1a6750a7c9626dce8843178270d8a EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY 00a76959b946430120eb0faf0c6b8af23b4bc204 7698432 6717b4d9c0d1a6750a7c9626dce8843178270d8a:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
