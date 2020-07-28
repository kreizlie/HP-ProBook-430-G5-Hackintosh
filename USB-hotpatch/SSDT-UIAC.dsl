// SSDT UIAC
DefinitionBlock ("", "SSDT", 2, "ACDT", "UIAC", 0)
{
    Device (UIAC)
    {
        Name (_HID, "UIA00000")

        Name (RMCF, Package ()
        {
            // XHC (8086_9d2f)
            "XHC", Package ()
            {
                "port-count", Buffer () { 0x0F, 0x00, 0x00, 0x00 },
                "ports", Package ()
                {
                    "HS01", Package ()
                    {
                        "name", Buffer () { "HS01" },
                        "UsbConnector", 0,
                        "port", Buffer () { 0x01, 0x00, 0x00, 0x00 },
                    },
                    
                    "HS04", Package ()
                    {
                        "name", Buffer () { "HS04" },
                        "UsbConnector", 0,
                        "port", Buffer () { 0x04, 0x00, 0x00, 0x00 },
                    },
                    
                    "HS06", Package ()
                    {
                        "name", Buffer () { "HS06" },
                        "UsbConnector", 255,
                        "port", Buffer () { 0x06, 0x00, 0x00, 0x00 },
                    },
                    
                    "SS01", Package ()
                    {
                        "name", Buffer () { "SS01" },
                        "UsbConnector", 3,
                        "port", Buffer () { 0x0D, 0x00, 0x00, 0x00 },
                    },
                    
                    "SS02", Package ()
                    {
                        "name", Buffer () { "SS02" },
                        "UsbConnector", 10,
                        "port", Buffer () { 0x0E, 0x00, 0x00, 0x00 },
                    },
                    
                    "SS03", Package ()
                    {
                        "name", Buffer () { "SS03" },
                        "UsbConnector", 3,
                        "port", Buffer () { 0x0F, 0x00, 0x00, 0x00 },
                    },
                },
            },
        })

        Method (_STA, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                Return (0x0F)
            }
            Else
            {
                Return (Zero)
            }
        }
    }
}
