// SSDT-ZPTS
// Simulates S5 call for proper shutdown
DefinitionBlock ("", "SSDT", 2, "ACDT", "ZPTS", 0x00000000)
{
    External (_SB.PCI0.XHC_.PMEE, FieldUnitObj)
    External (ZPTS, MethodObj)

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        ZPTS (Arg0)
        If (_OSI ("Darwin"))
        {
            If ((0x05 == Arg0))
            {
                \_SB.PCI0.XHC.PMEE = Zero
            }
        }
    }
}
