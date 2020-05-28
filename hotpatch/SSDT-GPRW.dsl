// SSDT GPRW
DefinitionBlock ("", "SSDT", 2, "ACDT", "GPRW", 0)
{
    // Rename original GPRW to XPRW
    External(XPRW, MethodObj)

    Method (GPRW, 2, NotSerialized)
    {
        If (0x6D == Arg0)
        {
            // Second argument must be 0
            Return (Package () { 0x6D, Zero })
        }
        If (0x0D == Arg0)
        {
            // Second argument must be 0
            Return (Package () { 0x0D, Zero })
        }
        Return (XPRW (Arg0, Arg1))
    }
}
