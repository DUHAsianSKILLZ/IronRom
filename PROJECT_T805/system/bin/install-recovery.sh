#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY:7698432:4024ed9e82c8516d09a0a200c879254c5ed3e458; then
  applypatch EMMC:/dev/block/platform/dw_mmc.0/by-name/BOOT:7487488:08c994a39e0c2e281eacc2f8a9f08a9e14725a4f EMMC:/dev/block/platform/dw_mmc.0/by-name/RECOVERY 4024ed9e82c8516d09a0a200c879254c5ed3e458 7698432 08c994a39e0c2e281eacc2f8a9f08a9e14725a4f:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
