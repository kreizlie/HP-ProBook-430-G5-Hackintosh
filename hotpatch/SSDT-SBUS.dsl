// SSDT SBUS
DefinitionBlock ("", "SSDT", 2, "ACDT", "_SBUS", 0)
{
    External (_SB.PCI0, DeviceObj)
    External (_SB.PCI0.SBUS, DeviceObj)

    Scope (_SB.PCI0)
    {
        Device (MCHC)
        {
            Name (_ADR, Zero)
        }
    }

    Scope (_SB.PCI0.SBUS)
    {
        Device (BUS0)
        {
            Name (_CID, "smbus")
            Name (_ADR, Zero)
            
            Device (DVL0)
            {
                Name (_ADR, 0x57)
                Name (_CID, "diagsvault")
                
                Method (_DSM, 4, NotSerialized)
                {
                    If (Arg2 == Zero)
                    {
                        Return (Buffer () { 0x57 })
                    }
                    Return (Package () { "address", 0x57 })
                }
            }
        }
    }

    Method (DTGP, 5, NotSerialized)
    {
        If (Arg0 == ToUUID ("a0b5b7c6-1318-441c-b0c9-fe695eaf949b"))
        {
            If (Arg1 == One)
            {
                If (Arg2 == Zero)
                {
                    Arg4 = Buffer () { 0x03 }
                    Return (One)
                }
                
                If (Arg2 == One)
                {
                    Return (One)
                }
            }
        }
        
        Arg4 = Buffer () { 0x00 }
        Return (Zero)
    }
}
