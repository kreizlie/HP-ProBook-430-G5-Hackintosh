// SSDT Fake ALS
DefinitionBlock ("", "SSDT", 2, "ACDT", "_ALS0", 0)
{
    Scope (\)
    {
        Device (_SB.ALS0)
        {
            Name (_HID, "ACPI0008")
            Name (_CID, "smc-als")
            Name (_ALI, 300)
            
            Name (_ALR, Package()
            {
                //Package () { 70, 0 },
                //Package () { 73, 10 },
                //Package () { 85, 80 },
                Package () { 100, 300 },
                //Package () { 150, 1000 },
            })
            
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }
}
