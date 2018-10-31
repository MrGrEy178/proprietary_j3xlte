#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/sdio_emmc/by-name/RECOVERY:15101952:ef2a6c8a20e3730c7b970ffb5e4049989f7d1592; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/sdio_emmc/by-name/KERNEL:14116864:0828e6d3cc93fc6155135fd308cc16b27313cfea EMMC:/dev/block/platform/sdio_emmc/by-name/RECOVERY ef2a6c8a20e3730c7b970ffb5e4049989f7d1592 15101952 0828e6d3cc93fc6155135fd308cc16b27313cfea:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
