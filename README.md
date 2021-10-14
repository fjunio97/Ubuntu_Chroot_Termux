## TERMUX UBUNTU CHROOT

Requirements: Termux Fdroid, Root and the Installed Magisk Busybox Module

##### **LINKS**
👉 [Termux F-Droid](https://f-droid.org/en/packages/com.termux/)

👉 [Toolchain Android](https://github.com/fjunio97/Ubuntu-Chroot-Termux/blob/main/Toolchain-Android.md)

##### 📀 **INSTALL UBUNTU 20.04 LTS**
```
pkg update -y && pkg install wget curl -y && termux-setup-storage && wget https://github.com/fjunio97/Ubuntu_Chroot_Termux/raw/main/start20.sh && wget https://github.com/fjunio97/Ubuntu_Chroot_Termux/raw/main/install-ubuntu-20.04.sh && chmod +x start20.sh install-ubuntu-20.04.sh
```
```
su
```
```
sh install-ubuntu-20.04.sh
```
##### 📲 **START UBUNTU 20.04 LTS**
```
sh start20.sh
```
=====================================

##### 📀 **INSTALL UBUNTU 21.04 HIRSUTE HIPPO**
```
pkg update -y && pkg install wget curl -y && termux-setup-storage && wget https://github.com/fjunio97/Ubuntu_Chroot_Termux/raw/main/start21.sh && wget https://github.com/fjunio97/Ubuntu_Chroot_Termux/raw/main/install-ubuntu-21.04.sh && chmod +x start21.sh install-ubuntu-21.04.sh
```
```
su
```
```
sh install-ubuntu-21.04.sh
```
##### 📲 **START UBUNTU 21.04 HIRSUTE HIPPO**
```
sh start21.sh
```
=====================================

##### **BASIC PACKAGES**
(git, axel, curl, wget, zip, unzip, p7zip-full, nano, bash, sudo, python3, brotli, libssl-dev, libxml2 libstdc++6)

```
apt-get update -y && apt-get upgrade -y && apt install git axel curl wget zip unzip p7zip-full -y && apt install nano bash sudo python3 brotli libssl-dev libxml2 libstdc++6 -y
```

##### **KERNEL COMPILATION PACKAGES**

```
apt install gcc-arm-linux-gnueabi gcc g++ python make libncurses5-dev ccache grep bc git build-essential -y
```

