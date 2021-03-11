// SSDT-KBD
// Swaps Command and Option buttons on laptop keyboard
DefinitionBlock ("", "SSDT", 2, "ACDT", "KBD", 0x00000000)
{
    External (_SB.PCI0.LPCB.PS2K, DeviceObj)

    Name (_SB.PCI0.LPCB.PS2K.RMCF, Package (0x02)
    {
        "Keyboard", 
        Package (0x02)
        {
            "Swap command and option", 
            ">y"
        }
    })
}
