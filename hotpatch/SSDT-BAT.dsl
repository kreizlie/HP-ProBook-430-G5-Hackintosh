// SSDT-BAT
// For battery status
DefinitionBlock ("", "SSDT", 2, "ACDT", "BAT", 0x00001000)
{
    External (_SB.PCI0.LPCB.EC0, DeviceObj)
    External (_SB.PCI0.LPCB.EC0.BSEL, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC0.BST, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC0.BSTA, MethodObj)    // 1 Arguments
    External (_SB.PCI0.LPCB.EC0.BTDR, MethodObj)    // 1 Arguments
    External (_SB.PCI0.LPCB.EC0.BTMX, MutexObj)
    External (_SB.PCI0.LPCB.EC0.ECMX, MutexObj)
    External (_SB.PCI0.LPCB.EC0.ECRG, IntObj)
    External (_SB.PCI0.LPCB.EC0.GACS, MethodObj)    // 0 Arguments
    External (_SB.PCI0.LPCB.EC0.GBSS, MethodObj)    // 2 Arguments
    External (_SB.PCI0.LPCB.EC0.NBGX, IntObj)
    External (_SB.PCI0.LPCB.EC0.NDCB, IntObj)
    External (_SB.PCI0.LPCB.EC0.NGBF, IntObj)
    External (_SB.PCI0.LPCB.EC0.NGBT, IntObj)
    External (_SB.PCI0.LPCB.EC0.NLB1, IntObj)
    External (_SB.PCI0.LPCB.EC0.NLO2, IntObj)
    
    External (_SB.NBST, PkgObj)
    External (_SB.NBTE, PkgObj)
    External (_SB.NBTI, PkgObj)
    External (_SB.NDBS, PkgObj)
    
    External (BST, IntObj)
    External (ECRG, IntObj)
    External (NBGX, IntObj)
    External (NDBS, IntObj)
    External (NGBF, IntObj)
    External (NGBT, IntObj)

    // Renamed methods in config.plist
    External (_SB.PCI0.LPCB.EC0.XTIF, MethodObj)    // 1 Arguments
    External (_SB.PCI0.LPCB.EC0.XTST, MethodObj)    // 2 Arguments
    External (_SB.PCI0.LPCB.EC0.ZTIX, MethodObj)    // 1 Arguments
    
    Scope (_SB.PCI0.LPCB.EC0)
    {
        // Replace >= 8 bits registers
        OperationRegion (ECRR, EmbeddedControl, Zero, 0xFF)
        Field (ECRR, ByteAcc, NoLock, Preserve)
        {
            Offset (0x89), 
            BDC1,   8, // BDC
            BDC2,   8, 
            Offset (0x8D), 
            BFC1,   8, // BFC
            BFC2,   8, 
            Offset (0x95), 
            BDV1,   8, // BDV
            BDV2,   8, 
            Offset (0x9D), 
            BPR1,   8, // BPR
            BPR2,   8, 
            Offset (0xA1), 
            BRC1,   8, // BRC
            BRC2,   8, 
            BCC1,   8, // BCC
            BCC2,   8, 
            BPV1,   8, // BPV
            BPV2,   8, 
            Offset (0xC9), 
            BSN1,   8, // BSN
            BSN2,   8, 
            BDA1,   8, // BDAT
            BDA2,   8, 
            Offset (0xFF)
        }

        Method (BTIF, 1, Serialized)
        {
            If (_OSI ("Darwin"))
            {
                Local7 = (One << Arg0)
                BTDR (One)
                If ((BSTA (Local7) == 0x0F))
                {
                    Return (0xFF)
                }

                Acquire (BTMX, 0xFFFF)
                Local0 = NGBF /* External reference */
                Release (BTMX)
                If (((Local0 & Local7) == Zero))
                {
                    Return (Zero)
                }

                NBST [Arg0] = NDBS /* External reference */
                Acquire (BTMX, 0xFFFF)
                NGBT |= Local7
                Release (BTMX)
                Acquire (ECMX, 0xFFFF)
                If (ECRG)
                {
                    BSEL = Arg0
                    DerefOf (NBTI [Arg0]) [One] = B1B2 (BDC1, BDC2)
                    DerefOf (NBTI [Arg0]) [0x02] = B1B2 (BFC1, BFC2)
                    DerefOf (NBTI [Arg0]) [0x04] = B1B2 (BDV1, BDV2)
                    Local0 = (B1B2 (BFC1, BFC2) * NLB1) /* External reference */
                    Local4 = (Local0 / 0x64)
                    DerefOf (NBTI [Arg0]) [0x05] = Local4
                    Local0 = (B1B2 (BFC1, BFC2) * NLO2) /* External reference */
                    Local4 = (Local0 / 0x64)
                    DerefOf (NBTI [Arg0]) [0x06] = Local4
                    Local0 = B1B2 (BSN1, BSN2)
                    Local1 = B1B2 (BDA1, BDA2)
                }

                Release (ECMX)
                Local2 = GBSS (Local0, Local1)
                DerefOf (NBTI [Arg0]) [0x0A] = Local2
                Acquire (BTMX, 0xFFFF)
                NGBF &= ~Local7
                Release (BTMX)
                Return (Zero)
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.EC0.XTIF (Arg0))
            }
        }

        Method (BTIX, 1, Serialized)
        {
            If (_OSI ("Darwin"))
            {
                Local7 = (One << Arg0)
                BTDR (One)
                If ((BSTA (Local7) == 0x0F))
                {
                    Return (0xFF)
                }

                Acquire (BTMX, 0xFFFF)
                Local0 = NBGX /* External reference */
                Release (BTMX)
                If (((Local0 & Local7) == Zero))
                {
                    Return (Zero)
                }

                NBST [Arg0] = NDBS /* External reference */
                Acquire (BTMX, 0xFFFF)
                NGBT |= Local7
                Release (BTMX)
                Acquire (ECMX, 0xFFFF)
                If (ECRG)
                {
                    BSEL = Arg0
                    DerefOf (NBTE [Arg0]) [0x02] = B1B2 (BDC1, BDC2)
                    DerefOf (NBTE [Arg0]) [0x03] = B1B2 (BFC1, BFC2)
                    DerefOf (NBTE [Arg0]) [0x05] = B1B2 (BDV1, BDV2)
                    Local0 = (B1B2 (BFC1, BFC2) * NLB1) /* External reference */
                    Local4 = (Local0 / 0x64)
                    DerefOf (NBTE [Arg0]) [0x06] = Local4
                    Local0 = (B1B2 (BFC1, BFC2) * NLO2) /* External reference */
                    Local4 = (Local0 / 0x64)
                    DerefOf (NBTE [Arg0]) [0x07] = Local4
                    DerefOf (NBTE [Arg0]) [0x08] = B1B2 (BCC1, BCC2)
                    Local0 = B1B2 (BSN1, BSN2)
                    Local1 = B1B2 (BDA1, BDA2)
                }

                Release (ECMX)
                Local2 = GBSS (Local0, Local1)
                DerefOf (NBTE [Arg0]) [0x11] = Local2
                Acquire (BTMX, 0xFFFF)
                NBGX &= ~Local7
                Release (BTMX)
                Return (Zero)
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.EC0.ZTIX (Arg0))
            }
        }

        Method (BTST, 2, Serialized)
        {
            If (_OSI ("Darwin"))
            {
                Local7 = (One << Arg0)
                BTDR (One)
                If ((BSTA (Local7) == 0x0F))
                {
                    NBST [Arg0] = Package (0x04)
                        {
                            Zero, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        }
                    Return (0xFF)
                }

                Acquire (BTMX, 0xFFFF)
                If (Arg1)
                {
                    NGBT = 0xFF
                }

                Local0 = NGBT /* External reference */
                Release (BTMX)
                If (((Local0 & Local7) == Zero))
                {
                    Return (Zero)
                }

                Acquire (ECMX, 0xFFFF)
                If (ECRG)
                {
                    BSEL = Arg0
                    Local0 = BST /* External reference */
                    Local3 = B1B2 (BPR1, BPR2)
                    DerefOf (NBST [Arg0]) [0x02] = B1B2 (BRC1, BRC2)
                    DerefOf (NBST [Arg0]) [0x03] = B1B2 (BPV1, BPV2)
                }

                Release (ECMX)
                If ((GACS () == One))
                {
                    Local0 &= 0xFFFFFFFFFFFFFFFE
                }
                Else
                {
                    Local0 &= 0xFFFFFFFFFFFFFFFD
                }

                If ((Local0 & One))
                {
                    Acquire (BTMX, 0xFFFF)
                    NDCB = Local7
                    Release (BTMX)
                }

                DerefOf (NBST [Arg0]) [Zero] = Local0
                If ((Local0 & One))
                {
                    If (((Local3 < 0x0190) || (Local3 > 0x1964)))
                    {
                        Local5 = DerefOf (DerefOf (NBST [Arg0]) [One])
                        If (((Local5 < 0x0190) || (Local5 > 0x1964)))
                        {
                            Local3 = 0x0D7A
                        }
                        Else
                        {
                            Local3 = Local5
                        }
                    }

                    Local3 = 0xFFFFFFFF
                }
                ElseIf (((Local0 & 0x02) == Zero))
                {
                    Local3 = Zero
                }

                DerefOf (NBST [Arg0]) [One] = Local3
                Acquire (BTMX, 0xFFFF)
                NGBT &= ~Local7
                Release (BTMX)
                Return (Zero)
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.EC0.XTST (Arg0, Arg1))
            }
        }
    }

    Method (B1B2, 2, NotSerialized)
    {
        Local0 = (Arg1 << 0x08)
        Local0 |= Arg0
        Return (Local0)
    }
}

