// SSDT Fix HPET
DefinitionBlock ("", "SSDT", 2, "ACDT", "_HPE0", 0)
{
    External (_SB.PCI0.LPCB, DeviceObj)
    External (_SB.PCI0.LPCB.HPET, DeviceObj)
    External (HPTE, IntObj)
    
    // Disable HPET
    Scope (_SB.PCI0.LPCB.HPET)
    {
        Method (_INI, 0, Serialized)
        {
            HPTE = Zero
        }
        
        // Device (HPET)
        // {
        //     Method (_STA, 0, NotSerialized)
        //     {
        //         If (HPTE)
        //         {
        //             Return (0x0F)
        //         }
        //         Return (Zero) -- we expect this
        //     }
        // }
    }

    Scope (_SB.PCI0.LPCB)
    {
        // Fake HPE0
        Device (HPE0)
        {
            Name (_HID, EisaId ("PNP0103"))
            Name (_UID, Zero)
            
            Name (BUF0, ResourceTemplate ()
            {
                IRQNoFlags() { 0, 8 }
                Memory32Fixed (ReadWrite,
                    0xFED00000,
                    0x00000400,
                    )
            })
            
            Method (_STA, 0, NotSerialized)
            {
                Return (0x0F)
            }
            
            Method (_CRS, 0, Serialized)
            {
                Return (BUF0)
            }
        }
    }
}
