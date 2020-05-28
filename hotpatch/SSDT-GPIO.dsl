// SSDT GPIO to enable I2C trackpad
DefinitionBlock("", "SSDT", 2, "ACDT", "_GPIO", 0)
{
    External(GPEN, FieldUnitObj)
    External(SBRG, FieldUnitObj)

    Scope (_SB)
    {
        GPEN = One
        SBRG = One
    }

    // Device (GPI0)
    // {
    //     Method (_STA, 0, NotSerialized)
    //     {
    //         If (LEqual (SBRG, Zero))
    //         {
    //             Return (Zero)
    //         }
    //
    //         If (LEqual (GPEN, Zero))
    //         {
    //             Return (Zero)
    //         }
    //
    //         Return (0x0F) -- we expect this
    //     }
    // }
}
