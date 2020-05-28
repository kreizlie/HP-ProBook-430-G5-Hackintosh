// Add _STA method to SLPB device
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
    
    // This is the original SLPB
    // Device (SLPB)
    // {
    //    Name (_HID, EisaId ("PNP0C0E"))  // _HID: Hardware ID
    // }
}
