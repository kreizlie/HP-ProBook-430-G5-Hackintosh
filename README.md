# HP-ProBook-430G5-Hackintosh

OpenCore setup for HP ProBook 430 G5

###### macOS Version:
- macOS Catalina 10.15

###### Laptop Specifications:
- Intel Core i7 8550 Quad Core CPU (KabyLake R)
- Intel UHD 620 Graphics
- 16GB DDR4 2400MHz RAM
- 13.3 Full HD IPS Display
- Synaptics TouchPad (I2C)
- BCM94360CS2 Wi-Fi and Bluetooth Card (upgraded)
- 2 x USB-3.0 Ports, 1 x USB-C Port
- HDMI Display Port
- SD Card Reader
- Samsung 970 EVO NVME M.2 250GB SSD (upgraded)

###### BIOS Setup:
- Disable Vt-d
- Disable Secure Boot
- Disable Wake on LAN
- Disable Wake on USB
- Enable Hyperthreading

###### What works:
- Intel UHD 620 Graphics QE/CI
- HiDPI Scaled Resolution (Running 1440 x 810 @60Hz)
- USB-3.0 and USB-C Ports
- Ethernet (LAN)
- Audio (All Inputs & Outputs)
- Sleep and Wake
- HDMI and HDMI Audio
- Dual Band Wi-Fi 2.4GHz & 5GHz
- Bluetooth 4.x LE, AirDrop
- Battery, > 4 hours on regular browsing
- CPU Power Management
- Brightness Control
- Function Keys (Fn)
- Synaptics TouchPad, with full gestures
- Integrated Camera
- Rest of the things I cannot list here and that are not listed on "What doesn't work"

###### What doesn't work:
- FingerPrint Reader
- SD Card Reader

###### Remaining issues:
- Low battery warning notification appear while running on full battery
- External HDMI display not showing on boot, require re-plug

#### Bootloader
- OpenCore 0.5.8

#### Kexts
- Lilu
- WhateverGreen
- AppleALC
- NoTouchID
- VirtualSMC
- VoodooI2C
- VoodooPS2Controller (removed VoodooPS2Mouse, VoodooPS2Trackpad)
- CPUFriend
- AirportBrcmFixup
- BrcmPatchRAM
- RTL8111

#### Tools
- ProperTree
- GenSMBIOS
- gfxutil
- SSDTTime
- CPUFriendFriend
- MaciASL
- HexFiend binary editor

###### Thanks to:
- https://www.tonymacx86.com/threads/guide-lenovo-v330-15ikb-using-clover-uefi-hotpatch.265841/
- https://www.tonymacx86.com/threads/guide-hp-probook-elitebook-zbook-using-clover-uefi-hotpatch-10-11.189416/
