#         CONFIG
# -------------------------

#TODO change to your toolchain path
# Only choose one of these, depending on your build machine...
export TOOLCHAIN=/opt/toolchains/llvm/prebuilt/linux-x86_64
# Only choose one of these, depending on your device...
export TARGET=aarch64-linux-android
# Set this to your minSdkVersion.
export API=29
# Configure and build.
export AR=$TOOLCHAIN/bin/llvm-ar
export CC=$TOOLCHAIN/bin/$TARGET$API-clang
export AS=$CC
export CXX=$TOOLCHAIN/bin/$TARGET$API-clang++
export LD=$TOOLCHAIN/bin/ld
export RANLIB=$TOOLCHAIN/bin/llvm-ranlib
export STRIP=$TOOLCHAIN/bin/llvm-strip

# Branch to checkout from Android source code repo
branch=android-10.0.0_r1

# Makefile to use (will be automatically copied into system/core/adb)
makefile=makefile.sample

# MAKE
# -------------------------
make clean
make
echo -e "\n>> FINISH!\n"
