##### **AOSP/LLVM CLANG**
👉 [Download](https://github.com/iHemal/AArch64_Clang/releases)

##### **AOSP GCC**
👉 [Download](https://github.com/iHemal/prebuilt_gcc-4.9)

**AOSP Clang-r416183c: for Android 9,10,11**
**AOSP Clang-13: for Android 12 (wait for release)**

**AOSP GCC-4.9: for all version Android if your Kernel Supports**

**LLVM CLANG: Android 9,10,11**

##### **HOW TO USE AOSP CLANG**
if your kernel is arm64 based, download both arm64, arm gcc

**ARM GCC**
```
git clone https://github.com/iHemal/prebuilt_gcc-4.9 -b ARM
```

**ARM64 GCC**
```
git clone https://github.com/iHemal/prebuilt_gcc-4.9 -b arm64
```

download aosp clang r416183c from above link

**SETUP TOOLCHAIN:**
```
export PATH=<path of clang>/bin:<path of arm64 gcc>/bin:<path of arm gcc>/bin:$PATH
```

**PASS THIS TO MAKE COMMANDS:**
```
make CC=clang CROSS_COMPILE=aarch64-linux-android- CROSS_COMPILE_ARM32=arm-linux-androidebai- <other arguments>
```

==============================

##### **LLVM CLANG**
you don't need gcc if you use llvm clang. it has binutils prebuilt

**SETUP TOOLCHAIN:**
```
export PATH=<path of clang>/bin:$PATH
```

**PASS THIS TO MAKE COMMANDS:**
```
make CC=clang CROSS_COMPILE=aarch64-linux-gnu- CROSS_COMPILE_ARM32=arm-linux-gnueabi- <other arguments>
```
