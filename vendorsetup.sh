#!/bin/bash
# Manual repo cloning for Xiaomi Sweet (SM6150)
# Based on provided manifest

#echo "Cloning device tree..."
#git clone -b rebase --depth=1 https://github.com/TheHewra/device_xiaomi_sweet device/xiaomi/sweet

echo "Cloning vendor tree..."
git clone --depth=1 https://github.com/Sweet-Reborn/vendor_xiaomi_sweet.git vendor/xiaomi/sweet

echo "Cloning sm6150-common device tree..."
git clone --depth=1 https://github.com/Sweet-Reborn/device_xiaomi_sm6150-common device/xiaomi/sm6150-common

echo "Cloning sm6150-common vendor tree..."
git clone --depth=1 https://github.com/Sweet-Reborn/vendor_xiaomi_sm6150-common.git vendor/xiaomi/sm6150-common

echo "Cloning kernel..."
git clone --depth=1 https://github.com/Sweet-Reborn/kernel_xiaomi_sm6150.git kernel/xiaomi/sm6150

echo "Cloning MiuiCamera trees..."
git clone --depth=1 https://github.com/Sweet-Reborn/device_xiaomi_miuicamera-sweet2.git device/xiaomi/miuicamera-sweet
git clone -b miuicamera --depth=1 https://github.com/Sweet-Reborn/vendor_xiaomi_miuicamera-sweet2.git vendor/xiaomi/miuicamera-sweet

echo "Cloning hardware repos..."
git clone -b bka-no-dolby --depth=1 https://github.com/Evolution-X-Devices/hardware_xiaomi hardware/xiaomi
git clone -b sony-1.4 --depth=1 https://github.com/swiitch-OFF-Lab/hardware_dolby hardware/dolby

echo "Cloning Viper4Android ..."
git clone https://github.com/AxionAOSP/android_packages_apps_ViPER4AndroidFX.git packages/apps/ViPER4AndroidFX

echo "✅ All repos cloned successfully!"
