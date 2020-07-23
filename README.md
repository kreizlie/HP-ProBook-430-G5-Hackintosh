# HP-ProBook-430G5-Hackintosh

OpenCore setup for running Hackintosh on HP ProBook 430 G5

##### Laptop Specifications:
- Intel Core i7 8550U CPU (KabyLake R)
- Intel UHD 620 Graphics
- 16GB DDR4 2400MHz RAM
- 13.3 Full HD IPS Display
- Synaptics I2C TouchPad
- BCM94360CS2 Wi-Fi and Bluetooth Card (upgraded)
- 2 USB 3.0 Ports, 1 USB Type-C Port
- HDMI Port
- SD Card Reader
- 250GB Samsung 970 EVO NVME M.2 SSD (upgraded)

##### BIOS Setup:
- Disable TPM Security
- Disable Physical Presence Interface
- Disable Intel SGX
- Enable System Management Command
- Disable Fast Boot
- Disable Network PXE Boot
- Disable Power On when AC Detected
- Disable Power On when Lid is Opened
- Disable Secure Boot
- Disable Legacy Boot
- Disable Intel Optane Controller
- Enable Turbo Boost
- Enable Hyperthreading
- Enable Multi Processor
- Enable VT-x
- Disable VT-d
- Enable Turbo Boost on DC
- Enable DPTF
- Disable Media Card Reader
- Enable Runtime Power Management
- Disable Extended Idle Power States
- Enable Deep Sleep
- Disable Wake when Lid is Opened
- Disable Wake when AC is detected
- Disable Wake on USB
- Enable Power Control

##### What works:
- macOS Catalina 10.15.6
- Intel HD QE/CI
- HiDPI Scaled Resolution (1440 x 810)
- USB 3.0 and USB Type-C Ports
- Ethernet
- Audio on internal speaker and headphone
- Sleep and Wake
- HDMI Video and Audio
- AirPort
- Bluetooth and AirDrop
- Battery Status
- CPU Power Management
- Brightness Control Hotkeys
- Audio Control Hotkeys
- Multi-Gesture Trackpad
- Integrated Camera

##### What doesn't work:
- FingerPrint Reader
- SD Card Reader

##### Thanks to:
- https://www.tonymacx86.com/threads/guide-lenovo-v330-15ikb-using-clover-uefi-hotpatch.265841/
- https://www.tonymacx86.com/threads/guide-hp-probook-elitebook-zbook-using-clover-uefi-hotpatch-10-11.189416/
