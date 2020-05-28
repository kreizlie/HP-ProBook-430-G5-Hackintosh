# HP-ProBook-430G5-Hackintosh

OpenCore setup for HP ProBook 430G5

###### Laptop specifications:
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

###### What works:
- Intel UHD 620 Graphics QE/CI
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
- Low battery warning notification appear while running on battery with percentage > 5%
- External HDMI display not showing on boot, require re-plug

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
