#!/usr/bin/env bash

BASE_DIR="$(pwd)"
SOURCEDIR="${BASE_DIR}/work"

git config --global user.email "sreejithsss014@gmail.com" && git config --global user.name "sreejith7676"
mkdir -p "${SOURCEDIR}"
cd "${SOURCEDIR}"

git lfs install
repo init -u https://github.com/crdroidandroid/android.git -b 14.0 --git-lfs
repo sync 

git clone https://github.com/sreejith7676/device_motorola_cancunf.git device/motorola/cancunf
git clone -b fourteen https://github.com/sarthakroy2002/vendor_motorola_cancunf.git vendor/motorola/cancunf
git clone https://gitlab.com/sarthakroy2002/vendor_motorola_cancunf-motcamera.git vendor/motorola/cancunf-motcamera
git clone -b fourteen https://github.com/sarthakroy2002/device_motorola_cancunf-kernel.git device/motorola/cancunf-kernel
git clone https://github.com/LineageOS/android_device_mediatek_sepolicy_vndr.git -b lineage-21 device/mediatek/sepolicy_vndr
git clone https://github.com/LineageOS/android_hardware_mediatek.git -b lineage-21 hardware/mediatek

source build/envsetup.sh

brunch cancunf user
