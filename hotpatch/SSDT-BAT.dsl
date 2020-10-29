// SSDT-BAT
DefinitionBlock ("", "SSDT", 2, "ACDT", "BAT", 0)
{
    External (_SB.PCI0.LPCB.EC0, DeviceObj)
    External (_SB.PCI0.LPCB.EC0.BTDR, MethodObj)
    External (_SB.PCI0.LPCB.EC0.BSTA, MethodObj)
    External (_SB.PCI0.LPCB.EC0.BTMX, MutexObj)
    External (_SB.PCI0.LPCB.EC0.NGBF, IntObj)
    External (_SB.NDBS, PkgObj)
    External (_SB.NBST, PkgObj)
    External (_SB.PCI0.LPCB.EC0.NGBT, IntObj)
    External (_SB.PCI0.LPCB.EC0.ECMX, MutexObj)
    External (_SB.PCI0.LPCB.EC0.ECRG, IntObj)
    External (_SB.NBTI, PkgObj)
    External (_SB.PCI0.LPCB.EC0.NLB1, IntObj)
    External (_SB.PCI0.LPCB.EC0.NLO2, IntObj)
    External (_SB.PCI0.LPCB.EC0.GBSS, MethodObj)
    External (_SB.PCI0.LPCB.EC0.GACS, MethodObj)
    External (_SB.PCI0.LPCB.EC0.NDCB, IntObj)
    External (_SB.PCI0.LPCB.EC0.NLB2, IntObj)
    External (_SB.PCI0.LPCB.EC0.GBMF, MethodObj)
    External (_SB.PCI0.LPCB.EC0.GCTL, MethodObj)
    External (_SB.PCI0.LPCB.EC0.GDNM, MethodObj)
    External (_SB.PCI0.LPCB.EC0.GDCH, MethodObj)
    
    // Renamed methods
    External (_SB.PCI0.LPCB.EC0.XTIF, MethodObj)
    External (_SB.PCI0.LPCB.EC0.ECST, MethodObj)
    External (_SB.PCI0.LPCB.EC0.XTLB, MethodObj)
    External (_SB.PCI0.LPCB.EC0.XBTI, MethodObj)
    External (_SB.PCI0.LPCB.EC0.GXTC, MethodObj)
    External (_SB.PCI0.LPCB.EC0.SXTC, MethodObj)
    External (_SB.PCI0.LPCB.EC0.XBAW, MethodObj)
    External (_SB.PCI0.LPCB.EC0.XACW, MethodObj)
    External (_SB.SBST, MethodObj)
    External (_TZ.XCGC, MethodObj)
    
    // Keep <= 8 bits registers
    External (_SB.PCI0.LPCB.EC0.BSEL, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC0.BST, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC0.LB1, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC0.LB2, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC0.BATP, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC0.BRCC, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC0.BRCV, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC0.BATN, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC0.INAC, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC0.INCH, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC0.IDIS, FieldUnitObj)
    External (_SB.PCI0.LPCB.EC0.PSSB, FieldUnitObj)
    
    // Replace >= 16 bits registers
 /* External (_SB.PCI0.LPCB.EC0.BFC, FieldUnitObj) */  // BFC1, BFC2
 /* External (_SB.PCI0.LPCB.EC0.BDV, FieldUnitObj) */  // BDV1, BDV2
 /* External (_SB.PCI0.LPCB.EC0.BSN, FieldUnitObj) */  // BSN1, BSN2
 /* External (_SB.PCI0.LPCB.EC0.BDAT, FieldUnitObj) */ // BDA1, BDA2
 /* External (_SB.PCI0.LPCB.EC0.BPR, FieldUnitObj) */  // BPR1, BPR2
 /* External (_SB.PCI0.LPCB.EC0.BRC, FieldUnitObj) */  // BRC1, BRC2
 /* External (_SB.PCI0.LPCB.EC0.BPV, FieldUnitObj) */  // BPV1, BPV2
 /* External (_SB.PCI0.LPCB.EC0.BDC, FieldUnitObj) */  // BDC1, BDC2
 /* External (_SB.PCI0.LPCB.EC0.BME, FieldUnitObj) */  // BME1, BME2
 /* External (_SB.PCI0.LPCB.EC0.BCC, FieldUnitObj) */  // BCC1, BCC2
 /* External (_SB.PCI0.LPCB.EC0.CBT, FieldUnitObj) */  // CBT1, CBT2
 /* External (_SB.PCI0.LPCB.EC0.BSTS, FieldUnitObj) */ // STS1, STS2
 /* External (_SB.PCI0.LPCB.EC0.BCV1, FieldUnitObj) */ // CV11, CV12
 /* External (_SB.PCI0.LPCB.EC0.BCV2, FieldUnitObj) */ // CV21, CV22
 /* External (_SB.PCI0.LPCB.EC0.BCV3, FieldUnitObj) */ // CV31, CV32
 /* External (_SB.PCI0.LPCB.EC0.BCV4, FieldUnitObj) */ // CV41, CV42
 /* External (_SB.PCI0.LPCB.EC0.BCR, FieldUnitObj) */  // BCR1, BCR2
 /* External (_SB.PCI0.LPCB.EC0.BRTE, FieldUnitObj) */ // RTE1, RTE2
 /* External (_SB.PCI0.LPCB.EC0.BATE, FieldUnitObj) */ // ATE1, ATE2
 /* External (_SB.PCI0.LPCB.EC0.BATF, FieldUnitObj) */ // ATF1, ATF2
 /* External (_SB.PCI0.LPCB.EC0.MAXC, FieldUnitObj) */ // MAX1, MAX2
 /* External (_SB.PCI0.LPCB.EC0.ACPR, FieldUnitObj) */ // CPR1, CPR2
    
    Scope (_SB.PCI0.LPCB.EC0)
    {
        // Replace registers
        OperationRegion (ECRR, EmbeddedControl, Zero, 0xFF)
        Field (ECRR, ByteAcc, NoLock, Preserve)
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
            /* BDC    ,   16, */ BDC1, 8, BDC2, 8,
            Offset (0x8D), 
            /* BFC    ,   16, */ BFC1, 8, BFC2, 8,
            /* BRTE   ,   16, */ RTE1, 8, RTE2, 8,
            /* BTC  */,   1, 
            Offset (0x92), 
            /* BME    ,   16, */ BME1, 8, BME2, 8,
            /* BDN  */,   8, 
            /* BDV    ,   16, */ BDV1, 8, BDV2, 8,
            /* BCV1   ,   16, */ CV11, 8, CV12, 8,
            /* BST  */,   4, 
            Offset (0x9B), 
            /* BATE   ,   16, */ ATE1, 8, ATE2, 8,
            /* BPR    ,   16, */ BPR1, 8, BPR2, 8,
            /* BCR    ,   16, */ BCR1, 8, BCR2, 8,
            /* BRC    ,   16, */ BRC1, 8, BRC2, 8,
            /* BCC    ,   16, */ BCC1, 8, BCC2, 8,
            /* BPV    ,   16, */ BPV1, 8, BPV2, 8,
            /* BCV2   ,   16, */ CV21, 8, CV22, 8,
            /* BCV3   ,   16, */ CV31, 8, CV32, 8,
            /* BCV4   ,   16, */ CV41, 8, CV42, 8,
            /* BCW  */,   16, 
            /* BATF   ,   16, */ ATF1, 8, ATF2, 8,
            /* BCL  */,   16, 
            /* MAXC   ,   16, */ MAX1, 8, MAX2, 8,
            /* BCG1 */,   8, 
            /* BT1I */,   1, 
            /* BT2I */,   1, 
                      ,   2, 
            /* BATN */,   4, 
            /* BSTS   ,   16, */ STS1, 8, STS2, 8,
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
            /* BSN    ,   16, */ BSN1, 8, BSN2, 8,
            /* BDAT   ,   16, */ BDA1, 8, BDA2, 8,
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
            /* CBT    ,   16, */ CBT1, 8, CBT2, 8,
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
            /* ACPR   ,   16, */ CPR1, 8, CPR2, 8,
            Offset (0xFD), 
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
                Local0 = NGBF /* \_SB_.PCI0.LPCB.EC0_.NGBF */
                Release (BTMX)
                If (((Local0 & Local7) == Zero))
                {
                    Return (Zero)
                }

                NBST [Arg0] = NDBS /* \_SB_.NDBS */
                Acquire (BTMX, 0xFFFF)
                NGBT |= Local7
                Release (BTMX)
                Acquire (ECMX, 0xFFFF)
                If (ECRG)
                {
                    BSEL = Arg0
                    Local0 = B1B2 (BFC1, BFC2) /* \_SB_.PCI0.LPCB.EC0_.BFC_ */
                    DerefOf (NBTI [Arg0]) [One] = Local0
                    DerefOf (NBTI [Arg0]) [0x02] = Local0
                    DerefOf (NBTI [Arg0]) [0x04] = B1B2 (BDV1, BDV2) /* \_SB_.PCI0.LPCB.EC0_.BDV_ */
                    Local0 = (B1B2 (BFC1, BFC2) * NLB1) /* \_SB_.PCI0.LPCB.EC0_.NLB1 */
                    Local4 = (Local0 / 0x64)
                    DerefOf (NBTI [Arg0]) [0x05] = Local4
                    Local0 = (B1B2 (BFC1, BFC2) * NLO2) /* \_SB_.PCI0.LPCB.EC0_.NLO2 */
                    Local4 = (Local0 / 0x64)
                    DerefOf (NBTI [Arg0]) [0x06] = Local4
                    Local0 = B1B2 (BSN1, BSN2) /* \_SB_.PCI0.LPCB.EC0_.BSN_ */
                    Local1 = B1B2 (BDA1, BDA2) /* \_SB_.PCI0.LPCB.EC0_.BDAT */
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

                Local0 = NGBT /* \_SB_.PCI0.LPCB.EC0_.NGBT */
                Release (BTMX)
                If (((Local0 & Local7) == Zero))
                {
                    Return (Zero)
                }

                Acquire (ECMX, 0xFFFF)
                If (ECRG)
                {
                    BSEL = Arg0
                    Local0 = BST /* \_SB_.PCI0.LPCB.EC0_.BST_ */
                    Local3 = B1B2 (BPR1, BPR2) /* \_SB_.PCI0.LPCB.EC0_.BPR_ */
                    DerefOf (NBST [Arg0]) [0x02] = B1B2 (BRC1, BRC2) /* \_SB_.PCI0.LPCB.EC0_.BRC_ */
                    DerefOf (NBST [Arg0]) [0x03] = B1B2 (BPV1, BPV2) /* \_SB_.PCI0.LPCB.EC0_.BPV_ */
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
                Return (\_SB.PCI0.LPCB.EC0.ECST (Arg0, Arg1))
            }
        }

        Method (ITLB, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                Local0 = (B1B2 (BFC1, BFC2) * NLB1) /* \_SB_.PCI0.LPCB.EC0_.NLB1 */
                Local4 = (Local0 / 0x64)
                Divide ((Local4 + 0x09), 0x0A, Local0, Local1)
                Local0 = (B1B2 (BFC1, BFC2) * NLB2) /* \_SB_.PCI0.LPCB.EC0_.NLB2 */
                Local4 = (Local0 / 0x64)
                Divide ((Local4 + 0x09), 0x0A, Local0, Local2)
                If (ECRG)
                {
                    LB1 = Local1
                    LB2 = Local2
                }
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.XTLB ()
            }
        }

        Method (GBTI, 1, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                Debug = "Enter getbattinfo"
                Acquire (ECMX, 0xFFFF)
                If (ECRG)
                {
                    If ((BATP & (One << Arg0)))
                    {
                        BSEL = Arg0
                        Local0 = Package (0x02)
                            {
                                Zero, 
                                Buffer (0x6B){}
                            }
                        DerefOf (Local0 [One]) [Zero] = B1B2 (BDC1, BDC2) /* \_SB_.PCI0.LPCB.EC0_.BDC_ */
                        DerefOf (Local0 [One]) [One] = (B1B2 (BDC1, BDC2) >> 0x08
                            )
                        DerefOf (Local0 [One]) [0x02] = B1B2 (BFC1, BFC2) /* \_SB_.PCI0.LPCB.EC0_.BFC_ */
                        DerefOf (Local0 [One]) [0x03] = (B1B2 (BFC1, BFC2) >> 0x08
                            )
                        DerefOf (Local0 [One]) [0x04] = B1B2 (BRC1, BRC2) /* \_SB_.PCI0.LPCB.EC0_.BRC_ */
                        DerefOf (Local0 [One]) [0x05] = (B1B2 (BRC1, BRC2) >> 0x08
                            )
                        DerefOf (Local0 [One]) [0x06] = B1B2 (BME1, BME2) /* \_SB_.PCI0.LPCB.EC0_.BME_ */
                        DerefOf (Local0 [One]) [0x07] = (B1B2 (BME1, BME2) >> 0x08
                            )
                        DerefOf (Local0 [One]) [0x08] = B1B2 (BCC1, BCC2) /* \_SB_.PCI0.LPCB.EC0_.BCC_ */
                        DerefOf (Local0 [One]) [0x09] = (B1B2 (BCC1, BCC2) >> 0x08
                            )
                        Local1 = B1B2 (CBT1, CBT2) /* \_SB_.PCI0.LPCB.EC0_.CBT_ */
                        Local1 -= 0x0AAC
                        Divide (Local1, 0x0A, Local2, Local3)
                        DerefOf (Local0 [One]) [0x0A] = Local3
                        DerefOf (Local0 [One]) [0x0B] = (Local3 >> 0x08
                            )
                        DerefOf (Local0 [One]) [0x0C] = B1B2 (BPV1, BPV2) /* \_SB_.PCI0.LPCB.EC0_.BPV_ */
                        DerefOf (Local0 [One]) [0x0D] = (B1B2 (BPV1, BPV2) >> 0x08
                            )
                        Local1 = B1B2 (BPR1, BPR2) /* \_SB_.PCI0.LPCB.EC0_.BPR_ */
                        If (Local1)
                        {
                            If ((B1B2 (STS1, STS2) & 0x40))
                            {
                                Local1 = (~Local1 + One)
                                Local1 &= 0xFFFF
                            }
                        }

                        DerefOf (Local0 [One]) [0x0E] = Local1
                        DerefOf (Local0 [One]) [0x0F] = (Local1 >> 0x08
                            )
                        DerefOf (Local0 [One]) [0x10] = B1B2 (BDV1, BDV2) /* \_SB_.PCI0.LPCB.EC0_.BDV_ */
                        DerefOf (Local0 [One]) [0x11] = (B1B2 (BDV1, BDV2) >> 0x08
                            )
                        DerefOf (Local0 [One]) [0x12] = B1B2 (STS1, STS2) /* \_SB_.PCI0.LPCB.EC0_.BSTS */
                        DerefOf (Local0 [One]) [0x13] = (B1B2 (STS1, STS2) >> 0x08
                            )
                        DerefOf (Local0 [One]) [0x14] = B1B2 (CV11, CV12) /* \_SB_.PCI0.LPCB.EC0_.BCV1 */
                        DerefOf (Local0 [One]) [0x15] = (B1B2 (CV11, CV12) >> 0x08
                            )
                        DerefOf (Local0 [One]) [0x16] = B1B2 (CV21, CV22) /* \_SB_.PCI0.LPCB.EC0_.BCV2 */
                        DerefOf (Local0 [One]) [0x17] = (B1B2 (CV21, CV22) >> 0x08
                            )
                        DerefOf (Local0 [One]) [0x18] = B1B2 (CV31, CV32) /* \_SB_.PCI0.LPCB.EC0_.BCV3 */
                        DerefOf (Local0 [One]) [0x19] = (B1B2 (CV31, CV32) >> 0x08
                            )
                        DerefOf (Local0 [One]) [0x1A] = B1B2 (CV41, CV42) /* \_SB_.PCI0.LPCB.EC0_.BCV4 */
                        DerefOf (Local0 [One]) [0x1B] = (B1B2 (CV41, CV42) >> 0x08
                            )
                        CreateField (DerefOf (Local0 [One]), 0xE0, 0x80, BTSN)
                        BTSN = GBSS (B1B2 (BSN1, BSN2), B1B2 (BDA1, BDA2))
                        Local1 = GBMF ()
                        Local2 = SizeOf (Local1)
                        CreateField (DerefOf (Local0 [One]), 0x0160, (Local2 * 0x08), BMAN)
                        BMAN = Local1
                        Local2 += 0x2C
                        CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x80, CLBL)
                        CLBL = GCTL (Zero)
                        Local2 += 0x11
                        CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x38, DNAM)
                        DNAM = GDNM (Zero)
                        Local2 += 0x07
                        CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x20, DCHE)
                        DCHE = GDCH (Zero)
                        Local2 += 0x04
                        CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x10, BMAC)
                        BMAC = Zero
                        Local2 += 0x02
                        CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x10, BMAD)
                        BMAD = B1B2 (BDA1, BDA2) /* \_SB_.PCI0.LPCB.EC0_.BDAT */
                        Local2 += 0x02
                        CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x10, BCCU)
                        BCCU = BRCC /* \_SB_.PCI0.LPCB.EC0_.BRCC */
                        Local2 += 0x02
                        CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x10, BCVO)
                        BCVO = BRCV /* \_SB_.PCI0.LPCB.EC0_.BRCV */
                        Local2 += 0x02
                        CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x10, BAVC)
                        Local1 = B1B2 (BCR1, BCR2) /* \_SB_.PCI0.LPCB.EC0_.BCR_ */
                        If (Local1)
                        {
                            If ((B1B2 (STS1, STS2) & 0x40))
                            {
                                Local1 = (~Local1 + One)
                                Local1 &= 0xFFFF
                            }
                        }

                        BAVC = Local1
                        Local2 += 0x02
                        CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x10, RTTE)
                        RTTE = B1B2 (RTE1, RTE2) /* \_SB_.PCI0.LPCB.EC0_.BRTE */
                        Local2 += 0x02
                        CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x10, ATTE)
                        ATTE = B1B2 (ATE1, ATE2) /* \_SB_.PCI0.LPCB.EC0_.BATE */
                        Local2 += 0x02
                        CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x10, ATTF)
                        ATTF = B1B2 (ATF1, ATF2) /* \_SB_.PCI0.LPCB.EC0_.BATF */
                        Local2 += 0x02
                        CreateField (DerefOf (Local0 [One]), (Local2 * 0x08), 0x08, NOBS)
                        NOBS = BATN /* \_SB_.PCI0.LPCB.EC0_.BATN */
                    }
                    Else
                    {
                        Local0 = Package (0x01)
                            {
                                0x34
                            }
                    }
                }
                Else
                {
                    Local0 = Package (0x01)
                        {
                            0x0D
                        }
                }

                Release (ECMX)
                Return (Local0)
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.EC0.XBTI (Arg0))
            }
        }

        Method (GBTC, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                Debug = "Enter GetBatteryControl"
                Acquire (ECMX, 0xFFFF)
                If (ECRG)
                {
                    Local0 = Package (0x02)
                        {
                            Zero, 
                            Buffer (0x04){}
                        }
                    If ((BATP & One))
                    {
                        BSEL = Zero
                        DerefOf (Local0 [One]) [Zero] = Zero
                        If ((((INAC == Zero) && (INCH == Zero)) && (IDIS == Zero)))
                        {
                            DerefOf (Local0 [One]) [Zero] = Zero
                        }
                        ElseIf (((((INAC == Zero) && (INCH == 0x02)) && (
                            IDIS == One)) && (B1B2 (MAX1, MAX2) == Zero)))
                        {
                            DerefOf (Local0 [One]) [Zero] = One
                        }
                        ElseIf (((INAC == One) && (IDIS == 0x02)))
                        {
                            DerefOf (Local0 [One]) [Zero] = 0x02
                        }
                        ElseIf (((((INAC == Zero) && (INCH == 0x02)) && (
                            IDIS == One)) && (B1B2 (MAX1, MAX2) == 0xFA)))
                        {
                            DerefOf (Local0 [One]) [Zero] = 0x03
                        }
                        ElseIf (((INAC == Zero) && (INCH == 0x03)))
                        {
                            DerefOf (Local0 [One]) [Zero] = 0x04
                        }
                    }
                    Else
                    {
                        DerefOf (Local0 [One]) [Zero] = 0xFF
                    }

                    If ((BATP & 0x02))
                    {
                        BSEL = One
                        DerefOf (Local0 [One]) [One] = Zero
                        If ((((INAC == Zero) && (INCH == Zero)) && (IDIS == Zero)))
                        {
                            DerefOf (Local0 [One]) [One] = Zero
                        }
                        ElseIf (((((INAC == Zero) && (INCH == One)) && (
                            IDIS == 0x02)) && (B1B2 (MAX1, MAX2) == Zero)))
                        {
                            DerefOf (Local0 [One]) [One] = One
                        }
                        ElseIf (((INAC == One) && (IDIS == One)))
                        {
                            DerefOf (Local0 [One]) [One] = 0x02
                        }
                        ElseIf (((((INAC == Zero) && (INCH == One)) && (
                            IDIS == 0x02)) && (B1B2 (MAX1, MAX2) == 0xFA)))
                        {
                            DerefOf (Local0 [One]) [One] = 0x03
                        }
                        ElseIf (((INAC == Zero) && (INCH == 0x03)))
                        {
                            DerefOf (Local0 [One]) [One] = 0x04
                        }
                    }
                    Else
                    {
                        DerefOf (Local0 [One]) [One] = 0xFF
                    }
                }
                Else
                {
                    Local0 = Package (0x02)
                        {
                            0x35, 
                            Zero
                        }
                }

                Release (ECMX)
                Return (Local0)
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.EC0.GXTC ())
            }
        }

        Method (SBTC, 3, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                Debug = "Enter SetBatteryControl"
                Debug = Arg0
                Debug = Arg1
                Debug = Arg2
                Acquire (ECMX, 0xFFFF)
                If (ECRG)
                {
                    Local0 = Arg2
                    Debug = Local0
                    Local4 = Package (0x01)
                        {
                            0x06
                        }
                    Local1 = Zero
                    Local2 = Zero
                    Local1 = DerefOf (Local0 [Zero])
                    If ((Local1 == Zero))
                    {
                        Debug = "battery 0"
                        If ((BATP & One))
                        {
                            Local2 = DerefOf (Local0 [One])
                            If ((Local2 == Zero))
                            {
                                INCH = Zero
                                IDIS = Zero
                                INAC = Zero
                                
                             // Replace MAXC with MAX1 and MAX2
                             /* MAXC = Zero */ 
                                MAX1 = Zero
                                MAX2 = Zero
                                
                                PSSB = One
                                Local4 = Package (0x01)
                                    {
                                        Zero
                                    }
                            }

                            If ((Local2 == One))
                            {
                                INAC = Zero
                                INCH = 0x02
                                IDIS = One
                                
                             // Replace MAXC with MAX1 and MAX2
                             /* MAXC = Zero */ 
                                MAX1 = Zero
                                MAX2 = Zero
                                
                                PSSB = Zero
                                Local4 = Package (0x01)
                                    {
                                        Zero
                                    }
                            }

                            If ((Local2 == 0x02))
                            {
                                INAC = One
                                INCH = One
                                IDIS = 0x02
                                PSSB = Zero
                                Local4 = Package (0x01)
                                    {
                                        Zero
                                    }
                            }

                            If ((Local2 == 0x03))
                            {
                                INCH = 0x02
                                IDIS = One
                                INAC = Zero
                                
                             // Replace MAXC with MAX1 and MAX2
                             /* MAXC = 0xFA */
                                MAX1 = 0xFA
                                MAX2 = Zero
                                
                                PSSB = Zero
                                Local4 = Package (0x01)
                                    {
                                        Zero
                                    }
                            }

                            If ((Local2 == 0x04))
                            {
                             // Replace MAXC with MAX1 and MAX2
                             /* MAXC = 0xFA */
                                MAX1 = 0xFA
                                MAX2 = Zero
                                Local4 = Package (0x01)
                                    {
                                        Zero
                                    }
                            }

                            If ((Local2 == 0x05))
                            {
                                INAC = Zero
                                INCH = 0x03
                                Local4 = Package (0x01)
                                    {
                                        Zero
                                    }
                            }
                        }
                        Else
                        {
                            Local4 = Package (0x01)
                                {
                                    0x34
                                }
                        }
                    }

                    If ((Local1 == One))
                    {
                        If ((BATP & 0x02))
                        {
                            Debug = "battery 1"
                            Local2 = DerefOf (Local0 [One])
                            If ((Local2 == Zero))
                            {
                                INCH = Zero
                                IDIS = Zero
                                INAC = Zero
                                
                             // Replace MAXC with MAX1 and MAX2
                             /* MAXC = Zero */
                                MAX1 = Zero
                                MAX2 = Zero
                                
                                PSSB = One
                                Local4 = Package (0x01)
                                    {
                                        Zero
                                    }
                            }

                            If ((Local2 == One))
                            {
                                INAC = Zero
                                INCH = One
                                IDIS = 0x02
                                
                             // Replace MAXC with MAX1 and MAX2
                             /* MAXC = Zero */
                                MAX1 = Zero
                                MAX2 = Zero
                                
                                PSSB = Zero
                                Local4 = Package (0x01)
                                    {
                                        Zero
                                    }
                            }

                            If ((Local2 == 0x02))
                            {
                                INAC = One
                                INCH = 0x02
                                IDIS = One
                                PSSB = Zero
                                Local4 = Package (0x01)
                                    {
                                        Zero
                                    }
                            }

                            If ((Local2 == 0x03))
                            {
                                INCH = One
                                IDIS = 0x02
                                INAC = Zero
                                
                             // Replace MAXC with MAX1 and MAX2
                             /* MAXC = 0xFA */
                                MAX1 = 0xFA
                                MAX2 = Zero
                                
                                PSSB = Zero
                                Local4 = Package (0x01)
                                    {
                                        Zero
                                    }
                            }

                            If ((Local2 == 0x04))
                            {
                                INCH = Zero
                                IDIS = Zero
                                INAC = Zero
                                Local4 = Package (0x01)
                                    {
                                        Zero
                                    }
                            }

                            If ((Local2 == 0x05))
                            {
                                INAC = Zero
                                INCH = 0x03
                                Local4 = Package (0x01)
                                    {
                                        Zero
                                    }
                            }
                        }
                        Else
                        {
                            Local4 = Package (0x01)
                                {
                                    0x34
                                }
                        }
                    }
                }

                Release (ECMX)
                Return (Local4)
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.EC0.SXTC (Arg0, Arg1, Arg2))
            }
        }

        Method (GBAW, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                Local0 = Zero
                Acquire (ECMX, 0xFFFF)
                If (ECRG)
                {
                    Local1 = B1B2 (BDV1, BDV2) /* \_SB_.PCI0.LPCB.EC0_.BDV_ */
                    Local2 = B1B2 (BDC1, BDC2) /* \_SB_.PCI0.LPCB.EC0_.BDC_ */
                    Local0 = (Local1 * Local2)
                    Divide (Local0, 0x000F4240, Local3, Local0)
                    If ((Local3 >= 0x0007A120))
                    {
                        Local0++
                    }
                }

                Release (ECMX)
                Return (Local0)
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.EC0.XBAW ())
            }
        }

        Method (GACW, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                Local0 = Zero
                Acquire (ECMX, 0xFFFF)
                If (ECRG)
                {
                    Local0 = B1B2 (CPR1, CPR2) /* \_SB_.PCI0.LPCB.EC0_.ACPR */
                }

                Release (ECMX)
                Return (Local0)
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.EC0.XACW ())
            }
        }
    }

    Scope (_SB)
    {
        Method (BTST, 1, Serialized)
        {
            If (_OSI ("Darwin"))
            {
                Local0 = \_SB.PCI0.LPCB.EC0.BTST (Arg0, One)
                If ((Local0 == Zero)){}
                
                // Fix incorrect red battery warning
                Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)
                Local1 = B1B2 (\_SB.PCI0.LPCB.EC0.BPR1, \_SB.PCI0.LPCB.EC0.BPR2)
                DerefOf (NBST [Arg0]) [One] = Local1
                Release (\_SB.PCI0.LPCB.EC0.ECMX)
                
                Return (DerefOf (NBST [Arg0]))
            }
            Else
            {
                Return (\_SB.SBST (Arg0))
            }
        }
    }

    Scope (_TZ)
    {
        Method (GCGC, 0, Serialized)
        {
            If (_OSI ("Darwin"))
            {
                Name (LTMP, Buffer (0x02){})
                If (\_SB.PCI0.LPCB.EC0.ECRG)
                {
                    Acquire (\_SB.PCI0.LPCB.EC0.ECMX, 0xFFFF)
                    LTMP = B1B2 (\_SB.PCI0.LPCB.EC0.BPR1, \_SB.PCI0.LPCB.EC0.BPR2)
                    Release (\_SB.PCI0.LPCB.EC0.ECMX)
                }

                Return (LTMP) /* \_TZ_.GCGC.LTMP */
            }
            Else
            {
                Return (\_TZ.XCGC ())
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
