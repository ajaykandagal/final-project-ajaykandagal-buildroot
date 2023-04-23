#!/bin/bash
#Script to run QEMU for buildroot as the default configuration qemu_aarch64_virt_defconfig
#Host forwarding: Host Port 10022 ->> QEMU Port 22 
#Author: Siddhant Jajoo.


# qemu-system-aarch64 \
#     -M raspi3  \
#     -cpu cortex-a72 -nographic -smp 4 \
#     -kernel buildroot/output/images/sdcard.img \
#     -append "rootwait root=/dev/vda console=ttyAMA0" \
#     -netdev user,id=eth0,hostfwd=tcp::10022-:22,hostfwd=tcp::9000-:9000 \
#     -device virtio-net-device,netdev=eth0 \
#     -drive file=buildroot/output/images/rootfs.ext4,if=none,format=raw,id=hd0 \
#     -device virtio-blk-device,drive=hd0 -device virtio-rng-pci

qemu-system-aarch64 \
   -machine raspi3 \
   -kernel buildroot/output/images/zImage \
   -sd buildroot/output/images/sdcard.img \
   -dtb buildroot/output/images/bcm2710-rpi-3-b-plus.dtb \
   -nographic -m 1024 \
#    -append "rw console=ttyAMA0,115200 root=/dev/mmcblk0 fsck.repair=yes rootwait" \
#    -device sd-card,drive=mycard -drive if=none,file=buildroot/output/images/rootfs.ext4,format=raw,id=mycard
