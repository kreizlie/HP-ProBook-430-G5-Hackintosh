// SSDT PWRB
DefinitionBlock("", "SSDT", 2, "ACDT", "PWRB", 0)
{
    External (_SB.PWRB, DeviceObj)
    Scope (_SB.PWRB)
    {
        Method (_STA, 0, NotSerialized)
        {
            Return (0x0F)
        }
    }
}
