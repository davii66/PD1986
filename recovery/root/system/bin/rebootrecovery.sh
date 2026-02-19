MISC_PARTITION="/dev/block/by-name/misc"

echo -n "boot-recovery" > /tmp/bcb_command
dd if=/dev/zero bs=2048 count=1 2>/dev/null | dd of=$MISC_PARTITION bs=2048 count=1 2>/dev/null
dd if=/tmp/bcb_command of=$MISC_PARTITION bs=1 count=13 2>/dev/null
sync
# 然后reboot
/system/bin/reboot