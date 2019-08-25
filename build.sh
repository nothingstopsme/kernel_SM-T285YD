git clone https://github.com/MoKee/android_prebuilts_gcc_linux-x86_arm_arm-eabi-4.8 -b mko-mr1 ~/Toolchainarm
export ARCH=arm
export CROSS_COMPILE=~/Toolchainarm/bin/arm-eabi-
export KBUILD_BUILD_USER=RevanthTolety
export KBUILD_BUILD_HOST=RT-buildserver
mkdir output
make -C $(pwd) O=output gtexslte_rev04_defconfig
make -j32 -C $(pwd) O=output
cd output/arch/arm/boot
