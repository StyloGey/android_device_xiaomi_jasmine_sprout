#!/sbin/sh
suffix=$(getprop ro.boot.slot_suffix)
if [ -z "$suffix" ]; then
    suf=$(getprop ro.boot.slot)
    suffix="_$suf"
fi

syspath="/dev/block/bootdevice/by-name/system$suffix"
mkdir /s
mount -t ext4 -o ro "$syspath" /s

if [ -f /s/system/build.prop ]; then
    # TODO: It may be better to try to read these from the boot image than from /system
    osver=$(grep -i 'ro.build.version.release' /s/system/build.prop  | cut -f2 -d'=')
    patchlevel=$(grep -i 'ro.build.version.security_patch' /s/system/build.prop  | cut -f2 -d'=')
    resetprop ro.build.version.release "$osver"
    resetprop ro.build.version.security_patch "$patchlevel"
fi

umount /s
rmdir /s
setprop crypto.ready 1
