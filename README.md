## TERMUX UBUNTU CHROOT

Requirements: Termux Fdroid, Root and the Installed Magisk Busybox Module

##### **LINKS**
👉 [Termux F-Droid](https://f-droid.org/en/packages/com.termux/)

👉 [Toolchain Android](https://github.com/iHemal/AArch64_Clang/releases)

Thanks [mjuned47](https://github.com/mjuned47) for the scripts

================================
##### 📀 **INSTALL UBUNTU 20.04 LTS**
```
pkg update -y && pkg install wget curl -y && termux-setup-storage && wget https://github.com/fjunio97/Ubuntu_Chroot_Termux/raw/main/start && wget https://github.com/fjunio97/Ubuntu_Chroot_Termux/raw/main/install-ubuntu && chmod +x start install-ubuntu
```
```
su
```
```
sh install-ubuntu
```
##### 📲 **START UBUNTU 20**
```
sh start
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
