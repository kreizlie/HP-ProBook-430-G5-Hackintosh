// SSDT SLPB
DefinitionBlock ("", "SSDT", 2, "ACDT", "SLPB", 0)
{
    External (_SB.SLPB, DeviceObj)
    
    Scope (_SB.SLPB)
    {
        Method (_STA, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                Return (0x0B)
            }
            Else
            {
                Return (0x0F)
            }
        }
    }
}
