// SSDT Enable GPIO
DefinitionBlock ("", "SSDT", 2, "ACDT", "_GPIO", 0)
{
    External (GPEN, FieldUnitObj)
    External (SBRG, FieldUnitObj)

    Scope (\)
    {
        GPEN = One
        SBRG = One
    }
}
