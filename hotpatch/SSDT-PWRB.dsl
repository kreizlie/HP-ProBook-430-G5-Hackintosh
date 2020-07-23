// SSDT PWRB
DefinitionBlock ("", "SSDT", 2, "ACDT", "PWRB", 0)
{
    External (_SB.PWRB, DeviceObj)
    External (_SB.PWRB.XSTA, MethodObj)
    
    Scope (_SB.PWRB)
    {
        Method (_STA, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                Return (0x0F)
            }
            Else
            {
                Return (\_SB.PWRB.XSTA ())
            }
        }
    }
}
