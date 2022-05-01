#!/bin/sh
echo -e ""
echo -e "\x1b[32m================================"
echo -e "\x1b[32m    Starting Ubuntu 22.04 LTS    "
echo -e "\x1b[32m================================"
export PATH=/sbin:/usr/bin:/usr/sbin:/system/bin:/system/xbin:$PATH
export USER=root
export HOME=/root
export LANGUAGE=C
export LANG=C
folder=/data/data/com.termux/files/home/ubuntu-22.04
echo -e "\x1b[33m [ Mounting system folders ]"
echo "   [ Mounting /dev ... ]"
busybox mount --bind /dev $folder/dev
echo "   [ Mounting /sys ... ]"
busybox mount --bind /sys $folder/sys
echo "   [ Mounting /proc ... ]"
busybox mount --bind /proc $folder/proc
echo "   [ Mounting /dev/pts ... ]"
busybox mount --bind /dev/pts $folder/dev/pts
echo "   [ Mounting /sdcard ... ]"
busybox mount --bind /sdcard $folder/sdcard
echo -e "\x1b[32m [ Mounting Done ! ]"

echo -e "\x1b[32m [ Chrooting ... ]\e[0m"
busybox chroot $folder /bin/su - root

echo -e "\033[1m\x1b[33m [ Unmounting dev/pts ... ]"
busybox umount $folder/dev/pts
echo -e " [ Unmounting /dev ... ]"
busybox umount $folder/dev
echo -e " [ Unmounting /proc ... ]"
busybox umount $folder/proc
echo -e " [ Unmounting sdcard ... ]"
busybox umount $folder/sdcard
echo -e " [ Unmounting /sys ... ]"
busybox umount $folder/sys
echo -e " \x1b[32m[ Unmounted ]\e[0m"
