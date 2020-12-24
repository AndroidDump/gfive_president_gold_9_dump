#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:12741536:941a224219e95e96283039f2cc1779bb0ce844fc; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:7699360:10f85f72d994dba6c02ac8eab477b5b26ea7ee3e EMMC:/dev/block/platform/bootdevice/by-name/recovery 941a224219e95e96283039f2cc1779bb0ce844fc 12741536 10f85f72d994dba6c02ac8eab477b5b26ea7ee3e:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
