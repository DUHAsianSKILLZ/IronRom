#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY:7647232:fd41b14184e3ae011cb0e0cebe4126992a8e6ce1; then
  applypatch EMMC:/dev/block/platform/dw_mmc.0/by-name/BOOT:7434240:1c3544212073594a48bcfcffe0695cf5b25783e6 EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY fd41b14184e3ae011cb0e0cebe4126992a8e6ce1 7647232 1c3544212073594a48bcfcffe0695cf5b25783e6:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
