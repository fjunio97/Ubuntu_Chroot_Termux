## TERMUX UBUNTU CHROOT

Requirements: Termux Fdroid, Root and the Installed Magisk Busybox Module

##### **LINKS**
👉 [Termux F-Droid](https://f-droid.org/en/packages/com.termux/)

👉 [Toolchain Android](https://github.com/fjunio97/Ubuntu-Chroot-Termux/blob/main/Toolchain-Android.md)


##### **INSTALLATION**

Open Termux and Give the Commands

```
pkg update -y && pkg install wget curl -y && termux-setup-storage && wget https://github.com/fjunio97/Ubuntu-Chroot-Termux/raw/main/start.sh && wget https://github.com/fjunio97/Ubuntu-Chroot-Termux/raw/main/install-ubuntu.sh && chmod +x start.sh install-ubuntu.sh
```

```
su
```

```
sh install-ubuntu.sh && rm install-ubuntu.sh
```

##### **START UBUNTU**

```
sh start.sh
```

##### **BASIC PACKAGES**
(git, axel, curl, wget, zip, unzip, p7zip-full, nano, bash, sudo, python3, brotli, libssl-dev, libxml2 libstdc++6)

```
apt-get update -y && apt-get upgrade -y && apt install git axel curl wget zip unzip p7zip-full -y && apt install nano bash sudo python3 brotli libssl-dev libxml2 libstdc++6 -y
```

##### **KERNEL COMPILATION PACKAGES**

```
apt install gcc-arm-linux-gnueabi gcc g++ python make libncurses5-dev ccache grep bc git build-essential -y
```

# Ubuntu_Chroot_Termux
