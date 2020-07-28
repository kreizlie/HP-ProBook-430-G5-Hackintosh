// SSDT BATTERY
DefinitionBlock ("", "SSDT", 2, "ACDT", "BATT", 0)
{
    External (_SB.PCI0.LPCB.EC, DeviceObj)
    External (_SB.PCI0.LPCB.EC.XTIF, MethodObj)
    External (_SB.PCI0.LPCB.EC.XTST, MethodObj)
    External (_SB.PCI0.LPCB.EC.XTLB, MethodObj)
    External (_SB.PCI0.LPCB.EC.XBTI, MethodObj)
    External (_SB.PCI0.LPCB.EC.XBTC, MethodObj)
    External (_SB.PCI0.LPCB.EC.SXTC, MethodObj)
    External (_SB.PCI0.LPCB.EC.XBAW, MethodObj)
    External (_SB.PCI0.LPCB.EC.XACW, MethodObj)    
    External (_TZ.XCGC, MethodObj)

    External (_SB.PCI0.LPCB.EC.BTDR, MethodObj)
    External (_SB.PCI0.LPCB.EC.BSTA, MethodObj)
    External (_SB.PCI0.LPCB.EC.BTMX, MutexObj)
    External (_SB.PCI0.LPCB.EC.NGBF, IntObj)
    External (_SB.PCI0.LPCB.EC.ECMX, MutexObj)
    External (_SB.PCI0.LPCB.EC.ECRG, IntObj)
    External (_SB.NDBS, PkgObj)
    External (_SB.NBST, PkgObj)
    External (_SB.PCI0.LPCB.EC.BSEL, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC.NGBT, IntObj)
    External (_SB.NBTI, PkgObj)
    External (_SB.PCI0.LPCB.EC.NLB1, IntObj)
    External (_SB.PCI0.LPCB.EC.NLO2, IntObj)
    External (_SB.PCI0.LPCB.EC.GBSS, MethodObj)
    External (_SB.PCI0.LPCB.EC.BST, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC.GACS, MethodObj)
    External (_SB.PCI0.LPCB.EC.NDCB, IntObj)
    External (_SB.PCI0.LPCB.EC.NLB2, IntObj)
    External (_SB.PCI0.LPCB.EC.LB1, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC.LB2, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC.BATP, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC.GBMF, MethodObj)
    External (_SB.PCI0.LPCB.EC.GCTL, MethodObj)
    External (_SB.PCI0.LPCB.EC.GDNM, MethodObj)
    External (_SB.PCI0.LPCB.EC.GDCH, MethodObj)
    External (_SB.PCI0.LPCB.EC.BRCC, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC.BRCV, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC.BATN, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC.INAC, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC.INCH, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC.IDIS, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC.PSSB, FieldUnitObj)
    
    Method (B1B2, 2, NotSerialized)
    {
        ShiftLeft (Arg1, 8, Local0)
        Or (Arg0, Local0, Local0)
        Return (Local0)
    }
    
    Scope (_TZ)
    {
        Method (GCGC, 0, Serialized)
        {
            If (_OSI ("Darwin"))
            {
                Name (LTMP, Buffer (0x02){})
                If (\_SB.PCI0.LPCB.EC.ECRG)
                {
                    Acquire (\_SB.PCI0.LPCB.EC.ECMX, 0xFFFF)
                    Store (B1B2 (\_SB.PCI0.LPCB.EC.BPR1, \_SB.PCI0.LPCB.EC.BPR2), LTMP)
                    Release (\_SB.PCI0.LPCB.EC.ECMX)
                }

                Return (LTMP)
            }
            Else
            {
                Return (\_TZ.XCGC ())
            }
        }
    }
    
    Scope (_SB.PCI0.LPCB.EC)
    {
        OperationRegion (ECR2, EmbeddedControl, Zero, 0xFF)
        Field (ECR2, ByteAcc, NoLock, Preserve)
        {
            /* PMCD */,   32, 
            /* S0FL */,   8, 
            /* SXF0 */,   8, 
            /* SXF1 */,   8, 
            /* CPWR */,   16,
            /* CVLT */,   16,
            /* CCUR */,   16, 
            /* DIDX */,   8, 
            /* CIDX */,   8, 
            /* PMCC */,   8, 
            /* PMEP */,   8, 
            Offset (0x22), 
            /* CRZN */,   8, 
            /* THTA */,   8, 
            /* HYST */,   8, 
            /* CRIT */,   8, 
            /* TEMP */,   8, 
            /* TENA */,   8, 
            Offset (0x29), 
            /* TOAD */,   8, 
            /* PHTP */,   8, 
            /* THEM */,   8, 
            /* TMPO */,   8, 
            /* AFAN */,   8, 
            /* FRDC */,   8, 
            /* FTGC */,   8, 
            /* PLTP */,   8, 
            Offset (0x32), 
            /* DTMP */,   8, 
            Offset (0x35), 
            /* FR2C */,   8, 
            /* FT2C */,   8, 
            /* BCVD */,   8, 
            Offset (0x3F), 
            /* SNMD */,   8, 
            /* ABDI */,   8, 
            /* ABAD */,   8, 
            /* ABIX */,   8, 
            /* ABDA */,   8, 
            /* ABST */,   8, 
            /* PORI */,   8, 
            Offset (0x4C), 
            /* PSSB */,   8, 
            Offset (0x4E), 
            /* SLID */,   8, 
            /* SLDT */,   8, 
            Offset (0x5E), 
            /* PPST */,   8, 
            /* PPVP */,   8, 
            /* UCHC */,   8, 
            /* UCHS */,   8, 
            /* UCDB */,   8, 
            /* UCCS */,   8, 
            /* UCPN */,   8, 
            Offset (0x70), 
            /* WKTR */,   16, 
            /* S5TR */,   16, 
            /* AS4F */,   8, 
            Offset (0x78), 
                      ,   7, 
            /* BCML */,   1, 
            /* BRIM */,   1, 
                      ,   1, 
            /* LPMS */,   1, 
                      ,   1, 
            /* EXTP */,   1, 
            /* BKDT */,   1, 
            /* BOTP */,   1, 
            Offset (0x7A), 
                      ,   3, 
            /* CCFG */,   1, 
            Offset (0x7B), 
                      ,   1, 
            /* PPUI */,   1, 
            Offset (0x80), 
            /* ESID */,   8, 
                      ,   4, 
            /* SLPT */,   4, 
            /* FNSW */,   1, 
            /* SFNC */,   1, 
            /* ACPI */,   1, 
                      ,   1, 
                      ,   1, 
                      ,   1, 
                      ,   1, 
            /* DETF */,   1, 
            /* LIDS */,   1, 
            /* TBLT */,   1, 
                      ,   1, 
            /* LIDN */,   1, 
                      ,   1, 
            /* COMM */,   1, 
            /* PME  */,   1, 
            /* SBVD */,   1, 
            /* ADP  */,   1, 
            /* ADID */,   2, 
            /* LCTV */,   1, 
            /* BATP */,   4, 
            /* BPU  */,   1, 
            Offset (0x86), 
            /* BSEL */,   4, 
            Offset (0x87), 
            /* LB1  */,   8, 
            /* LB2  */,   8, 
            /* BDC    ,   16, */
            BDC1      ,   8,
            BDC2      ,   8,
            Offset (0x8D), 
            /* BFC    ,   16, */ 
            BFC1      ,   8,
            BFC2      ,   8,
            /* BRTE   ,   16, */
            RTE1      ,   8,
            RTE2      ,   8,
            /* BTC  */,   1, 
            Offset (0x92), 
            /* BME    ,   16, */
            BME1      ,   8,
            BME2      ,   8,
            /* BDN  */,   8, 
            /* BDV    ,   16, */
            BDV1      ,   8, 
            BDV2      ,   8,
            /* BCV1   ,   16, */
            CV11      ,   8,
            CV12      ,   8,
            /* BST  */,   4, 
            Offset (0x9B), 
            /* BATE   ,   16, */
            ATE1      ,   8,
            ATE2      ,   8,
            /* BPR    ,   16, */
            BPR1      ,   8,
            BPR2      ,   8,
            /* BCR    ,   16, */
            BCR1      ,   8,
            BCR2      ,   8,
            /* BRC    ,   16, */
            BRC1      ,   8,
            BRC2      ,   8,
            /* BCC    ,   16, */
            BCC1      ,   8,
            BCC2      ,   8,
            /* BPV    ,   16, */
            BPV1      ,   8,
            BPV2      ,   8,
            /* BCV2   ,   16, */
            CV21      ,   8,
            CV22      ,   8,
            /* BCV3   ,   16, */
            CV31      ,   8,
            CV32      ,   8,
            /* BCV4   ,   16, */
            CV41      ,   8,
            CV42      ,   8,
            /* BCW */ ,   16, 
            /* BATF   ,   16, */
            ATF1      ,   8,
            ATF2      ,   8,
            /* BCL */ ,   16, 
            /* MAXC   ,   16, */
            MAX1      ,   8,
            MAX2      ,   8,
            /* BCG1 */,   8, 
            /* BT1I */,   1, 
            /* BT2I */,   1, 
                      ,   2, 
            /* BATN */,   4, 
            /* BSTS   ,   16, */
            STS1      ,   8,
            STS2      ,   8,
            /* BCG2 */,   8, 
            Offset (0xBD), 
            /* BMO  */,   8, 
            Offset (0xBF), 
            /* BRCV */,   8, 
            Offset (0xC1), 
            /* BIF  */,   8, 
            /* BRCC */,   8, 
            Offset (0xC4), 
            /* CPSN */,   8, 
            /* SCPS */,   8, 
            Offset (0xC7), 
            /* MXCG */,   8, 
            /* MNCG */,   8, 
            /* BSN    ,   16, */
            BSN1      ,   8,
            BSN2      ,   8,
            /* BDAT   ,   16, */
            BDA1      ,   8,
            BDA2      ,   8,
            /* BMF  */,   8, 
            Offset (0xCF), 
            /* CTLB */,   8, 
            Offset (0xD1), 
            /* BTY  */,   8, 
            Offset (0xD5), 
            /* MFAC */,   8, 
            /* CFAN */,   8, 
            /* PFAN */,   8, 
            /* OCPS */,   8, 
            /* OCPR */,   8, 
            /* OCPE */,   8, 
            /* TMP1 */,   8, 
            /* TMP2 */,   8, 
            /* NABT */,   4, 
            /* BCM  */,   4, 
            /* CCBQ */,   16, 
            /* CBT    ,   16, */
            CBT1      ,   8, 
            CBT2      ,   8,
            Offset (0xE3), 
            /* OST  */,   4, 
            Offset (0xE4), 
            /* RWTM */,   8, 
            /* TPTE */,   1, 
            /* TBBN */,   1, 
                      ,   1, 
            /* FCDE */,   1, 
                      ,   1, 
            /* TP   */,   1, 
            Offset (0xE6), 
            /* SHK  */,   8, 
            /* AUDS */,   1, 
            /* SPKR */,   1, 
            Offset (0xE8), 
            /* HSEN */,   4, 
            /* HSST */,   4, 
            Offset (0xEA), 
                      ,   2, 
            /* WWP  */,   1, 
            /* WLP  */,   1, 
                      ,   1, 
            /* WWS3 */,   1, 
            /* WLS3 */,   1, 
            Offset (0xEC), 
                      ,   4, 
            /* PTEN */,   1, 
            /* ERWB */,   1, 
                      ,   1, 
            Offset (0xED), 
            Offset (0xEF), 
            /* INCH */,   2, 
            /* IDIS */,   2, 
            /* INAC */,   1, 
            Offset (0xF3), 
            /* COL1 */,   3, 
                      ,   2, 
            /* LDCD */,   3, 
            /* LEDS */,   2, 
            /* LEDF */,   6, 
            Offset (0xF6), 
            /* AAPI */,   8, 
            /* ACSE */,   8, 
            /* ACIX */,   8, 
            /* ACPR   ,   16, */
            CPR1      ,   8,
            CPR2      ,   8,
            Offset (0xFD), 
            Offset (0xFF)
        }
        
        Method (BTIF, 1, Serialized)
        {
            If (_OSI ("Darwin"))
            {
                ShiftLeft (One, Arg0, Local7)
                BTDR (One)
                If (LEqual (BSTA (Local7), 0x0F))
                {
                    Return (0xFF)
                }

                Acquire (BTMX, 0xFFFF)
                Store (NGBF, Local0)
                Release (BTMX)
                If (LEqual (And (Local0, Local7), Zero))
                {
                    Return (Zero)
                }

                Store (NDBS, Index (NBST, Arg0))
                Acquire (BTMX, 0xFFFF)
                Or (NGBT, Local7, NGBT)
                Release (BTMX)
                Acquire (ECMX, 0xFFFF)
                If (ECRG)
                {
                    Store (Arg0, BSEL)
                    Store (B1B2 (BFC1, BFC2), Local0)
                    Store (Local0, Index (DerefOf (Index (NBTI, Arg0)), One))
                    Store (Local0, Index (DerefOf (Index (NBTI, Arg0)), 0x02))
                    Store (B1B2 (BDV1, BDV2), Index (DerefOf (Index (NBTI, Arg0)), 0x04))
                    Multiply (B1B2 (BFC1, BFC2), NLB1, Local0)
                    Divide (Local0, 0x64, , Local4)
                    Store (Local4, Index (DerefOf (Index (NBTI, Arg0)), 0x05))
                    Multiply (B1B2 (BFC1, BFC2), NLO2, Local0)
                    Divide (Local0, 0x64, , Local4)
                    Store (Local4, Index (DerefOf (Index (NBTI, Arg0)), 0x06))
                    Store (B1B2 (BSN1, BSN2), Local0)
                    Store (B1B2 (BDA1, BDA2), Local1)
                }

                Release (ECMX)
                Store (GBSS (Local0, Local1), Local2)
                Store (Local2, Index (DerefOf (Index (NBTI, Arg0)), 0x0A))
                Acquire (BTMX, 0xFFFF)
                And (NGBF, Not (Local7), NGBF)
                Release (BTMX)
                Return (Zero)
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.EC.XTIF (Arg0))
            }
        }

        Method (BTST, 2, Serialized)
        {
            If (_OSI ("Darwin"))
            {
                ShiftLeft (One, Arg0, Local7)
                BTDR (One)
                If (LEqual (BSTA (Local7), 0x0F))
                {
                    Store (Package (0x04)
                        {
                            Zero, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF
                        }, Index (NBST, Arg0))
                    Return (0xFF)
                }

                Acquire (BTMX, 0xFFFF)
                If (Arg1)
                {
                    Store (0xFF, NGBT)
                }

                Store (NGBT, Local0)
                Release (BTMX)
                If (LEqual (And (Local0, Local7), Zero))
                {
                    Return (Zero)
                }

                Acquire (ECMX, 0xFFFF)
                If (ECRG)
                {
                    Store (Arg0, BSEL)
                    Store (BST, Local0)
                    Store (B1B2 (BPR1, BPR2), Local3)
                    Store (B1B2 (BRC1, BRC2), Index (DerefOf (Index (NBST, Arg0)), 0x02))
                    Store (B1B2 (BPV1, BPV2), Index (DerefOf (Index (NBST, Arg0)), 0x03))
                }

                Release (ECMX)
                If (LEqual (GACS (), One))
                {
                    And (0xFFFFFFFFFFFFFFFE, Local0, Local0)
                }
                Else
                {
                    And (0xFFFFFFFFFFFFFFFD, Local0, Local0)
                }

                If (And (Local0, One))
                {
                    Acquire (BTMX, 0xFFFF)
                    Store (Local7, NDCB)
                    Release (BTMX)
                }

                Store (Local0, Index (DerefOf (Index (NBST, Arg0)), Zero))
                //If (And (Local0, One))
                //{
                //    If (LOr (LLess (Local3, 0x0190), LGreater (Local3, 0x1964)))
                //    {
                //        Store (DerefOf (Index (DerefOf (Index (NBST, Arg0)), One)), Local5)
                //        If (LOr (LLess (Local5, 0x0190), LGreater (Local5, 0x1964)))
                //        {
                //            Store (0x0D7A, Local3)
                //        }
                //        Else
                //        {
                //            Store (Local5, Local3)
                //        }
                //    }
                //
                //    Store (0xFFFFFFFF, Local3)
                //}
                //ElseIf (LEqual (And (Local0, 0x02), Zero))
                //{
                //    Store (Zero, Local3)
                //}

                Store (Zero, Local3)
                Store (Local3, Index (DerefOf (Index (NBST, Arg0)), One))
                
                Acquire (BTMX, 0xFFFF)
                And (NGBT, Not (Local7), NGBT)
                Release (BTMX)
                Return (Zero)
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.EC.XTST (Arg0, Arg1))
            }
        }

        Method (ITLB, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                Multiply (B1B2 (BFC1, BFC2), NLB1, Local0)
                Divide (Local0, 0x64, , Local4)
                Divide (Add (Local4, 0x09), 0x0A, Local0, Local1)
                Multiply (B1B2 (BFC1, BFC2), NLB2, Local0)
                Divide (Local0, 0x64, , Local4)
                Divide (Add (Local4, 0x09), 0x0A, Local0, Local2)
                If (ECRG)
                {
                    Store (Local1, LB1)
                    Store (Local2, LB2)
                }
            }
            Else
            {
                \_SB.PCI0.LPCB.EC.XTLB ()
            }
        }

        Method (GBTI, 1, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                Store ("Enter getbattinfo", Debug)
                Acquire (ECMX, 0xFFFF)
                If (ECRG)
                {
                    If (And (BATP, ShiftLeft (One, Arg0)))
                    {
                        Store (Arg0, BSEL)
                        Store (Package (0x02)
                            {
                                Zero, 
                                Buffer (0x6B){}
                            }, Local0)
                        Store (B1B2 (BDC1, BDC2), Index (DerefOf (Index (Local0, One)), Zero))
                        Store (ShiftRight (B1B2 (BDC1, BDC2), 0x08), Index (DerefOf (Index (Local0, One)), One))
                        Store (B1B2 (BFC1, BFC2), Index (DerefOf (Index (Local0, One)), 0x02))
                        Store (ShiftRight (B1B2 (BFC1, BFC2), 0x08), Index (DerefOf (Index (Local0, One)), 0x03))
                        Store (B1B2 (BRC1, BRC2), Index (DerefOf (Index (Local0, One)), 0x04))
                        Store (ShiftRight (B1B2 (BRC1, BRC2), 0x08), Index (DerefOf (Index (Local0, One)), 0x05))
                        Store (B1B2 (BME1, BME2), Index (DerefOf (Index (Local0, One)), 0x06))
                        Store (ShiftRight (B1B2 (BME1, BME2), 0x08), Index (DerefOf (Index (Local0, One)), 0x07))
                        Store (B1B2 (BCC1, BCC2), Index (DerefOf (Index (Local0, One)), 0x08))
                        Store (ShiftRight (B1B2 (BCC1, BCC2), 0x08), Index (DerefOf (Index (Local0, One)), 0x09))
                        Store (B1B2 (CBT1, CBT2), Local1)
                        Subtract (Local1, 0x0AAC, Local1)
                        Divide (Local1, 0x0A, Local2, Local3)
                        Store (Local3, Index (DerefOf (Index (Local0, One)), 0x0A))
                        Store (ShiftRight (Local3, 0x08), Index (DerefOf (Index (Local0, One)), 0x0B))
                        Store (B1B2 (BPV1, BPV2), Index (DerefOf (Index (Local0, One)), 0x0C))
                        Store (ShiftRight (B1B2 (BPV1, BPV2), 0x08), Index (DerefOf (Index (Local0, One)), 0x0D))
                        Store (B1B2 (BPR1, BPR2), Local1)
                        If (Local1)
                        {
                            If (And (B1B2 (STS1, STS2), 0x40))
                            {
                                Add (Not (Local1), One, Local1)
                                And (Local1, 0xFFFF, Local1)
                            }
                        }

                        Store (Local1, Index (DerefOf (Index (Local0, One)), 0x0E))
                        Store (ShiftRight (Local1, 0x08), Index (DerefOf (Index (Local0, One)), 0x0F))
                        Store (B1B2 (BDV1, BDV2), Index (DerefOf (Index (Local0, One)), 0x10))
                        Store (ShiftRight (B1B2 (BDV1, BDV2), 0x08), Index (DerefOf (Index (Local0, One)), 0x11))
                        Store (B1B2 (STS1, STS2), Index (DerefOf (Index (Local0, One)), 0x12))
                        Store (ShiftRight (B1B2 (STS1, STS2), 0x08), Index (DerefOf (Index (Local0, One)), 0x13))
                        Store (B1B2 (CV11, CV12), Index (DerefOf (Index (Local0, One)), 0x14))
                        Store (ShiftRight (B1B2 (CV11, CV12), 0x08), Index (DerefOf (Index (Local0, One)), 0x15))
                        Store (B1B2 (CV21, CV22), Index (DerefOf (Index (Local0, One)), 0x16))
                        Store (ShiftRight (B1B2 (CV21, CV22), 0x08), Index (DerefOf (Index (Local0, One)), 0x17))
                        Store (B1B2 (CV31, CV32), Index (DerefOf (Index (Local0, One)), 0x18))
                        Store (ShiftRight (B1B2 (CV31, CV32), 0x08), Index (DerefOf (Index (Local0, One)), 0x19))
                        Store (B1B2 (CV41, CV42), Index (DerefOf (Index (Local0, One)), 0x1A))
                        Store (ShiftRight (B1B2 (CV41, CV42), 0x08), Index (DerefOf (Index (Local0, One)), 0x1B))
                        CreateField (DerefOf (Index (Local0, One)), 0xE0, 0x80, BTSN)
                        Store (GBSS (B1B2 (BSN1, BSN2), B1B2 (BDA1, BDA2)), BTSN)
                        Store (GBMF (), Local1)
                        Store (SizeOf (Local1), Local2)
                        CreateField (DerefOf (Index (Local0, One)), 0x0160, Multiply (Local2, 0x08), BMAN)
                        Store (Local1, BMAN)
                        Add (Local2, 0x2C, Local2)
                        CreateField (DerefOf (Index (Local0, One)), Multiply (Local2, 0x08), 0x80, CLBL)
                        Store (GCTL (Zero), CLBL)
                        Add (Local2, 0x11, Local2)
                        CreateField (DerefOf (Index (Local0, One)), Multiply (Local2, 0x08), 0x38, DNAM)
                        Store (GDNM (Zero), DNAM)
                        Add (Local2, 0x07, Local2)
                        CreateField (DerefOf (Index (Local0, One)), Multiply (Local2, 0x08), 0x20, DCHE)
                        Store (GDCH (Zero), DCHE)
                        Add (Local2, 0x04, Local2)
                        CreateField (DerefOf (Index (Local0, One)), Multiply (Local2, 0x08), 0x10, BMAC)
                        Store (Zero, BMAC)
                        Add (Local2, 0x02, Local2)
                        CreateField (DerefOf (Index (Local0, One)), Multiply (Local2, 0x08), 0x10, BMAD)
                        Store (B1B2 (BDA1, BDA2), BMAD)
                        Add (Local2, 0x02, Local2)
                        CreateField (DerefOf (Index (Local0, One)), Multiply (Local2, 0x08), 0x10, BCCU)
                        Store (BRCC, BCCU)
                        Add (Local2, 0x02, Local2)
                        CreateField (DerefOf (Index (Local0, One)), Multiply (Local2, 0x08), 0x10, BCVO)
                        Store (BRCV, BCVO)
                        Add (Local2, 0x02, Local2)
                        CreateField (DerefOf (Index (Local0, One)), Multiply (Local2, 0x08), 0x10, BAVC)
                        Store (B1B2 (BCR1, BCR2), Local1)
                        If (Local1)
                        {
                            If (And (B1B2 (STS1, STS2), 0x40))
                            {
                                Add (Not (Local1), One, Local1)
                                And (Local1, 0xFFFF, Local1)
                            }
                        }

                        Store (Local1, BAVC)
                        Add (Local2, 0x02, Local2)
                        CreateField (DerefOf (Index (Local0, One)), Multiply (Local2, 0x08), 0x10, RTTE)
                        Store (B1B2 (RTE1, RTE2), RTTE)
                        Add (Local2, 0x02, Local2)
                        CreateField (DerefOf (Index (Local0, One)), Multiply (Local2, 0x08), 0x10, ATTE)
                        Store (B1B2 (ATE1, ATE2), ATTE)
                        Add (Local2, 0x02, Local2)
                        CreateField (DerefOf (Index (Local0, One)), Multiply (Local2, 0x08), 0x10, ATTF)
                        Store (B1B2 (ATF1, ATF2), ATTF)
                        Add (Local2, 0x02, Local2)
                        CreateField (DerefOf (Index (Local0, One)), Multiply (Local2, 0x08), 0x08, NOBS)
                        Store (BATN, NOBS)
                    }
                    Else
                    {
                        Store (Package (0x01)
                            {
                                0x34
                            }, Local0)
                    }
                }
                Else
                {
                    Store (Package (0x01)
                        {
                            0x0D
                        }, Local0)
                }

                Release (ECMX)
                Return (Local0)
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.EC.XBTI (Arg0))
            }
        }

        Method (GBTC, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                Store ("Enter GetBatteryControl", Debug)
                Acquire (ECMX, 0xFFFF)
                If (ECRG)
                {
                    Store (Package (0x02)
                        {
                            Zero, 
                            Buffer (0x04){}
                        }, Local0)
                    If (And (BATP, One))
                    {
                        Store (Zero, BSEL)
                        Store (Zero, Index (DerefOf (Index (Local0, One)), Zero))
                        If (LAnd (LAnd (LEqual (INAC, Zero), LEqual (INCH, Zero)), LEqual (IDIS, Zero)))
                        {
                            Store (Zero, Index (DerefOf (Index (Local0, One)), Zero))
                        }
                        ElseIf (LAnd (LAnd (LAnd (LEqual (INAC, Zero), LEqual (INCH, 0x02)), LEqual (IDIS, One)), LEqual (B1B2 (MAX1, MAX2), Zero)))
                        {
                            Store (One, Index (DerefOf (Index (Local0, One)), Zero))
                        }
                        ElseIf (LAnd (LEqual (INAC, One), LEqual (IDIS, 0x02)))
                        {
                            Store (0x02, Index (DerefOf (Index (Local0, One)), Zero))
                        }
                        ElseIf (LAnd (LAnd (LAnd (LEqual (INAC, Zero), LEqual (INCH, 0x02)), LEqual (IDIS, One)), LEqual (B1B2 (MAX1, MAX2), 0xFA)))
                        {
                            Store (0x03, Index (DerefOf (Index (Local0, One)), Zero))
                        }
                        ElseIf (LAnd (LEqual (INAC, Zero), LEqual (INCH, 0x03)))
                        {
                            Store (0x04, Index (DerefOf (Index (Local0, One)), Zero))
                        }
                    }
                    Else
                    {
                        Store (0xFF, Index (DerefOf (Index (Local0, One)), Zero))
                    }

                    If (And (BATP, 0x02))
                    {
                        Store (One, BSEL)
                        Store (Zero, Index (DerefOf (Index (Local0, One)), One))
                        If (LAnd (LAnd (LEqual (INAC, Zero), LEqual (INCH, Zero)), LEqual (IDIS, Zero)))
                        {
                            Store (Zero, Index (DerefOf (Index (Local0, One)), One))
                        }
                        ElseIf (LAnd (LAnd (LAnd (LEqual (INAC, Zero), LEqual (INCH, One)), LEqual (IDIS, 0x02)), LEqual (B1B2 (MAX1, MAX2), Zero)))
                        {
                            Store (One, Index (DerefOf (Index (Local0, One)), One))
                        }
                        ElseIf (LAnd (LEqual (INAC, One), LEqual (IDIS, One)))
                        {
                            Store (0x02, Index (DerefOf (Index (Local0, One)), One))
                        }
                        ElseIf (LAnd (LAnd (LAnd (LEqual (INAC, Zero), LEqual (INCH, One)), LEqual (IDIS, 0x02)), LEqual (B1B2 (MAX1, MAX2), 0xFA)))
                        {
                            Store (0x03, Index (DerefOf (Index (Local0, One)), One))
                        }
                        ElseIf (LAnd (LEqual (INAC, Zero), LEqual (INCH, 0x03)))
                        {
                            Store (0x04, Index (DerefOf (Index (Local0, One)), One))
                        }
                    }
                    Else
                    {
                        Store (0xFF, Index (DerefOf (Index (Local0, One)), One))
                    }
                }
                Else
                {
                    Store (Package (0x02)
                        {
                            0x35, 
                            Zero
                        }, Local0)
                }

                Release (ECMX)
                Return (Local0)
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.EC.XBTC ())
            }
        }

        Method (SBTC, 3, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                Store ("Enter SetBatteryControl", Debug)
                Store (Arg0, Debug)
                Store (Arg1, Debug)
                Store (Arg2, Debug)
                Acquire (ECMX, 0xFFFF)
                If (ECRG)
                {
                    Store (Arg2, Local0)
                    Store (Local0, Debug)
                    Store (Package (0x01)
                        {
                            0x06
                        }, Local4)
                    Store (Zero, Local1)
                    Store (Zero, Local2)
                    Store (DerefOf (Index (Local0, Zero)), Local1)
                    If (LEqual (Local1, Zero))
                    {
                        Store ("battery 0", Debug)
                        If (And (BATP, One))
                        {
                            Store (DerefOf (Index (Local0, One)), Local2)
                            If (LEqual (Local2, Zero))
                            {
                                Store (Zero, INCH)
                                Store (Zero, IDIS)
                                Store (Zero, INAC)
                                Store (Zero, MAX1)
                                Store (Zero, MAX2)
                                Store (One, PSSB)
                                Store (Package (0x01)
                                    {
                                        Zero
                                    }, Local4)
                            }

                            If (LEqual (Local2, One))
                            {
                                Store (Zero, INAC)
                                Store (0x02, INCH)
                                Store (One, IDIS)
                                Store (Zero, MAX1)
                                Store (Zero, MAX2)
                                Store (Zero, PSSB)
                                Store (Package (0x01)
                                    {
                                        Zero
                                    }, Local4)
                            }

                            If (LEqual (Local2, 0x02))
                            {
                                Store (One, INAC)
                                Store (One, INCH)
                                Store (0x02, IDIS)
                                Store (Zero, PSSB)
                                Store (Package (0x01)
                                    {
                                        Zero
                                    }, Local4)
                            }

                            If (LEqual (Local2, 0x03))
                            {
                                Store (0x02, INCH)
                                Store (One, IDIS)
                                Store (Zero, INAC)
                                Store (0xFA, MAX1)
                                Store (Zero, MAX2)
                                Store (Zero, PSSB)
                                Store (Package (0x01)
                                    {
                                        Zero
                                    }, Local4)
                            }

                            If (LEqual (Local2, 0x04))
                            {
                                Store (0xFA, MAX1)
                                Store (Zero, MAX2)
                                Store (Package (0x01)
                                    {
                                        Zero
                                    }, Local4)
                            }

                            If (LEqual (Local2, 0x05))
                            {
                                Store (Zero, INAC)
                                Store (0x03, INCH)
                                Store (Package (0x01)
                                    {
                                        Zero
                                    }, Local4)
                            }
                        }
                        Else
                        {
                            Store (Package (0x01)
                                {
                                    0x34
                                }, Local4)
                        }
                    }

                    If (LEqual (Local1, One))
                    {
                        If (And (BATP, 0x02))
                        {
                            Store ("battery 1", Debug)
                            Store (DerefOf (Index (Local0, One)), Local2)
                            If (LEqual (Local2, Zero))
                            {
                                Store (Zero, INCH)
                                Store (Zero, IDIS)
                                Store (Zero, INAC)
                                Store (Zero, MAX1)
                                Store (Zero, MAX2)
                                Store (One, PSSB)
                                Store (Package (0x01)
                                    {
                                        Zero
                                    }, Local4)
                            }

                            If (LEqual (Local2, One))
                            {
                                Store (Zero, INAC)
                                Store (One, INCH)
                                Store (0x02, IDIS)
                                Store (Zero, MAX1)
                                Store (Zero, MAX2)
                                Store (Zero, PSSB)
                                Store (Package (0x01)
                                    {
                                        Zero
                                    }, Local4)
                            }

                            If (LEqual (Local2, 0x02))
                            {
                                Store (One, INAC)
                                Store (0x02, INCH)
                                Store (One, IDIS)
                                Store (Zero, PSSB)
                                Store (Package (0x01)
                                    {
                                        Zero
                                    }, Local4)
                            }

                            If (LEqual (Local2, 0x03))
                            {
                                Store (One, INCH)
                                Store (0x02, IDIS)
                                Store (Zero, INAC)
                                Store (0xFA, MAX1)
                                Store (Zero, MAX2)
                                Store (Zero, PSSB)
                                Store (Package (0x01)
                                    {
                                        Zero
                                    }, Local4)
                            }

                            If (LEqual (Local2, 0x04))
                            {
                                Store (Zero, INCH)
                                Store (Zero, IDIS)
                                Store (Zero, INAC)
                                Store (Package (0x01)
                                    {
                                        Zero
                                    }, Local4)
                            }

                            If (LEqual (Local2, 0x05))
                            {
                                Store (Zero, INAC)
                                Store (0x03, INCH)
                                Store (Package (0x01)
                                    {
                                        Zero
                                    }, Local4)
                            }
                        }
                        Else
                        {
                            Store (Package (0x01)
                                {
                                    0x34
                                }, Local4)
                        }
                    }
                }

                Release (ECMX)
                Return (Local4)
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.EC.SXTC (Arg0, Arg1, Arg2))
            }
        }

        Method (GBAW, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                Store (Zero, Local0)
                Acquire (ECMX, 0xFFFF)
                If (ECRG)
                {
                    Store (B1B2 (BDV1, BDV2), Local1)
                    Store (B1B2 (BDC1, BDC2), Local2)
                    Multiply (Local1, Local2, Local0)
                    Divide (Local0, 0x000F4240, Local3, Local0)
                    If (LGreaterEqual (Local3, 0x0007A120))
                    {
                        Increment (Local0)
                    }
                }

                Release (ECMX)
                Return (Local0)
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.EC.XBAW ())
            }
        }

        Method (GACW, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                Store (Zero, Local0)
                Acquire (ECMX, 0xFFFF)
                If (ECRG)
                {
                    Store (B1B2 (CPR1, CPR2), Local0)
                }

                Release (ECMX)
                Return (Local0)
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.EC.XACW ())
            }
        }
    }
}
