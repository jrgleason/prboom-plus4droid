#!/bin/sh
ANDROID_ROOT="$HOME/toolchain" \
TOOLCHAIN_VER="4.6"  \
PLATFORM_VER="9" \
CROSS_COMPILE=arm-eabi- \
CPPFLAGS="-I$ANDROID_ROOT/sysroot/usr/include" \ 
LDFLAGS="-L$ANDROID_ROOT/sysroot/usr/lib" \
LIBS="-lc -ldl -lm -lGLESv1_CM -lGLESv2" \
CFLAGS="-fno-exceptions -Wno-multichar -mthumb -mthumb-interwork -nostdlib" \
./bootstrap
# ./configure CC=arm-linux-androideabi-gcc --prefix=/sdcard/doom --host=arm-linux --build=arm-linux --disable-gl --disable-nls CPPFLAGS="-I$ANDROID_ROOT/platforms/android-14/arch-arm/usr/include" 

