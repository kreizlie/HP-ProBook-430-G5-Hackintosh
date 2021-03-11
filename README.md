# HP-ProBook-430-G5-Hackintosh

OpenCore setup for running macOS Big Sur on HP ProBook 430 G5

##### Laptop Specifications:
- Intel Core i7 8550U CPU (KabyLake R)
- Intel UHD 620 Graphics
- 8GB DDR4 2400MHz RAM
- 13.3 Full HD IPS Display
- Synaptics I2C TouchPad
- BCM94360CS2 Wi-Fi and Bluetooth Card (upgraded)
- 2 USB 3.0 Ports, 1 USB Type-C Port
- HDMI Port
- SD Card Reader
- 250GB Samsung 860 EVO SATA M.2 SSD (upgraded)
- BIOS Version 01.09.10

##### BIOS Setup:
- Disable Intel SGX
- Enable System Management Command
- Disable Fast Boot
- Enable USB Storage Boot
- Disable Network PXE Boot
- Disable Power On when AC Detected
- Disable Power On when Lid is Opened
- Enable UEFI Boot Order
- Disable Legacy Boot Order
- Disable Legacy Boot
- Disable Secure Boot
- Disable MS UEFI CA key
- Disable Intal Optane
- Enable Turbo Boost
- Enable Hyperthreading
- Enable Multi Processor
- Enable Virtualization Technology (VTx)
- Disable Virtualization Technology for Directed I/O (VTd)
- Enable Turbo Boost on DC
- Enable Dynamic Platform and Thermal Framework (DPTF)
- Enable HP Application Driver
- Enable LAN Controller
- Disable Wake on LAN
- Set Video memory size to 512MB
- Enable Audio Device
- Enable Microphone
- Enable Internal Speakers
- Enable Headphone Output
- Disable Lock Wireless Button
- Enable Wireless Network Device (WLAN)
- Enable Bluetooth
- Disable LAN/WAN Auto Switching
- Disable Wake on WLAN
- Disable Wake on LAN in Battery Mode
- Enable Boost Converter
- Enable Integrated Camera
- Disable Media Card Reader
- Enable Left USB Ports
- Enable Right USB Ports
- Enable Right USB Port 1
- Enable Right USB Port 2
- Allow all USB Devices
- Disable USB-C Controller Firmware Update
- Enable Runtime Power Management
- Enable Extended Idle Power States
- Enable Deep Sleep
- Disable Wake when Lid is Opened
- Disable Wake when AC is Detected
- Disable Wake on USB
- Enable Power Control

##### What works:
- macOS Big Sur
- Intel HD QE/CI
- HiDPI Scaled Resolution (1520 x 855)
- USB 3.0 and USB Type-C Ports
- Ethernet
- Audio on internal speaker, bluetooth and headphone jack
- Sleep and Wake, work normal on battery and AC power
- HDMI Video and Audio
- Wi-Fi/AirPort
- Bluetooth and AirDrop
- Battery Status
- CPU Power Management
- Brightness Control with Keyboard
- Audio Control with Keyboard
- Multi-Gestures Trackpad
- Integrated Camera
- Apple Account (FaceTime, iMessage, App Store)

##### What doesn't work:
- FingerPrint Reader
- SD Card Reader
