set -e

if [ $# -lt 1 ];then
    echo "usage: <kernel_root> <ndk_root>"
    exit
fi

KER_ROOT=$1
NDK_ROOT=$2

#进去后手动执行
#export PATH=$PATH:/opt/msm/toolchains/aarch64-linux-android-4.9/prebuilt/linux-x86_64/bin

docker run -it --rm -v $KER_ROOT:/opt/msm -v $NDK_ROOT:/opt/ndk --env ARCH=arm64 --env SUBARCH=arm64 --env CROSS_COMPILE=aarch64-linux-android- aosp_build:6.0

