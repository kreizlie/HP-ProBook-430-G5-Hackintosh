// SSDT SLPB
DefinitionBlock("", "SSDT", 2, "ACDT", "SLPB", 0)
{
    External (_SB.SLPB, DeviceObj)
    Scope (_SB.SLPB)
    {
        Method (_STA, 0, NotSerialized)
        {
            Return (0x0B)
        }
    }
    
    // Device (SLPB)
    // {
    //    Name (_HID, EisaId ("PNP0C0E"))
    //    -- define STA method
    // }
}
