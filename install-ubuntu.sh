#!/bin/sh

clear

echo -e "\x1b[32m=================================="

echo -e "\x1b[32m    Installing Ubuntu 22.04 LTS    "

echo -e "\x1b[32m=================================="

sleep 1

folder="/data/data/com.termux/files/home/ubuntu-22.04"

file="$folder/ubuntu-22.04-$arch.tar.gz"

if [ -d "$folder" ];

then

        first=1

        echo -e "\x1b[32m [ $folder already exist ]" && sleep 0.5

else

        sleep 1 && echo -e " [ Creating $folder ]"

        mkdir $folder

fi

if [ -f "$file" ] ; then

    sleep 1

    echo -e "\x1b[32m [ rootfs file exists ! ] " && sleep 1

    echo -e "\x1b[32m [ Deleting file ... ] "

    rm "$file" && sleep 1

    echo -e "\x1b[32m [ Done ! ]"

fi

cd $folder

arch=`uname -m`

case "$arch" in

    aarch64|armv8l) arch="arm64" ;;

    armv7l|arm|armhf) arch="armhf" ;;

		*)			echo -e "\x1b[33m [ Unknown architecture ]"; exit 1 ;;

		esac

echo " [ Device architecture is $arch ]"

sleep 1

echo -e "\x1b[33m [ Downloading Ubuntu 22.04 $arch ... ]"

wget https://github.com/fjunio97/Ubuntu_Chroot_Termux/raw/main/rootfs/ubuntu-22.04-$arch.tar.gz

echo -e "\x1b[33m [ Downloaded ! ]"

sleep 1

echo -e "\x1b[33m [ Unpacking File ... ]"

tar xzf ubuntu-22.04-$arch.tar.gz

echo -e "\x1b[32m [ Unpacked! ]"

mkdir $folder/sdcard

echo -e "\x1b[33m [ Fixing Required Key Not available Error ]"

awk '/^session    optional   pam_keyinit.so force revoke/ { $0 = "#" $0 }; 1' $folder/etc/pam.d/login > $folder/etc/pam.d/login1

awk '/^session    optional   pam_keyinit.so force revoke/ { $0 = "#" $0 }; 1' $folder/etc/pam.d/runuser > $folder/etc/pam.d/runuser1

awk '/^session    optional   pam_keyinit.so force revoke/ { $0 = "#" $0 }; 1' $folder/etc/pam.d/runuser-l > $folder/etc/pam.d/runuser-l1

awk '/^session    optional   pam_keyinit.so force revoke/ { $0 = "#" $0 }; 1' $folder/etc/pam.d/su-l > $folder/etc/pam.d/su-l1

rm $folder/etc/pam.d/login $folder/etc/pam.d/su-l $folder/etc/pam.d/runuser-l $folder/etc/pam.d/runuser

mv $folder/etc/pam.d/login1 $folder/etc/pam.d/login && mv $folder/etc/pam.d/su-l1 $folder/etc/pam.d/su-l && mv $folder/etc/pam.d/runuser-l1 $folder/etc/pam.d/runuser-l && mv $folder/etc/pam.d/runuser1 $folder/etc/pam.d/runuser

echo -e "\x1b[33m [ Fixing Internet ... ]"

busybox chroot $folder /bin/su - root -c '

echo "nameserver 1.1.1.1" > /etc/resolv.conf

echo "nameserver 1.0.0.1" >> /etc/resolv.conf

groupadd -g 3003 aid_inet

groupadd -g 3004 aid_net_raw

groupadd -g 1003 aid_graphics

usermod -g 3003 -G 3003,3004 -a _apt

usermod -G 3003 -a root
'
sleep 1 && echo -e "\x1b[33m [ Done ! ]"

sleep 1

echo -e "\x1b[32m [ Installation Completed,You can mount Ubuntu system ]"

echo -e " [ Ubuntu is installed at $folder ]\e[0m"

rm /data/data/com.termux/files/home/ubuntu-20.04/ubuntu-22.04-$arch.tar.gz

sleep 1
