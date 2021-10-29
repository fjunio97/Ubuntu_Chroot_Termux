## TERMUX UBUNTU CHROOT

Requirements: Termux Fdroid, Root and the Installed Magisk Busybox Module

##### **LINKS**
👉 [Termux F-Droid](https://f-droid.org/en/packages/com.termux/)

👉 [Toolchain Android](https://github.com/iHemal/AArch64_Clang/releases)

Thanks [mjuned47](https://github.com/mjuned47) for the scripts

================================
##### 📀 **INSTALL UBUNTU 20.04 LTS**
```
pkg update -y && pkg install wget curl -y && termux-setup-storage && wget https://github.com/fjunio97/Ubuntu_Chroot_Termux/raw/main/start20 && wget https://github.com/fjunio97/Ubuntu_Chroot_Termux/raw/main/install-ubuntu-20.04 && chmod +x start20 install-ubuntu-20.04
```
```
su
```
```
sh install-ubuntu-20.04
```
##### 📲 **START UBUNTU 20**
```
sh start20
```
================================
##### 📀 **INSTALL UBUNTU 21.04 HIRSUTE HIPPO**
```
pkg update -y && pkg install wget curl -y && termux-setup-storage && wget https://github.com/fjunio97/Ubuntu_Chroot_Termux/raw/main/start21 && wget https://github.com/fjunio97/Ubuntu_Chroot_Termux/raw/main/install-ubuntu-21.04 && chmod +x start21 install-ubuntu-21.04
```
```
su
```
```
sh install-ubuntu-21.04
```
##### 📲 **START UBUNTU 21**
```
sh start21
```
================================

##### **BASIC PACKAGES**
(git, axel, curl, wget, zip, unzip, p7zip-full, nano, bash, sudo, python3, brotli, libssl-dev, libxml2 libstdc++6)

```
apt-get update -y && apt-get upgrade -y && apt install git-core axel curl wget zip unzip p7zip-full -y && apt install nano bash sudo python3 brotli libssl-dev libxml2 libstdc++6 -y
```

##### **COMPILATION PACKAGES**

```
apt install gcc-arm-linux-gnueabi gcc g++ python make libncurses5-dev ccache grep bc build-essential -y
```
