// SSDT-UIAC
DefinitionBlock ("", "SSDT", 2, "ACDT", "UIAC", 0x00000000)
{
    Device (UIAC)
    {
        Name (_HID, "UIA00000")  // _HID: Hardware ID
        
        Name (RMCF, Package (0x02)
        {
            "XHC", 
            Package (0x04)
            {
                "port-count", 
                Buffer (0x04) { 0x0F, 0x00, 0x00, 0x00 }, 

                "ports", 
                Package (0x0E)
                {
                    "HS01", 
                    Package (0x06)
                    {
                        "name", Buffer (0x05) { "HS01" }, "UsbConnector", Zero, 
                        "port", Buffer (0x04) { 0x01, 0x00, 0x00, 0x00 }
                    }, 

                    "HS04", 
                    Package (0x06)
                    {
                        "name", Buffer (0x05) { "HS04" }, "UsbConnector", Zero, 
                        "port", Buffer (0x04) { 0x04, 0x00, 0x00, 0x00 }
                    }, 

                    "HS06", 
                    Package (0x06)
                    {
                        "name", Buffer (0x05) { "HS06" }, "UsbConnector", 0xFF, 
                        "port", Buffer (0x04) { 0x06, 0x00, 0x00, 0x00 }
                    }, 

                    "HS07", 
                    Package (0x06)
                    {
                        "name", Buffer (0x05) { "HS07" }, "UsbConnector", 0xFF, 
                        "port", Buffer (0x04) { 0x07, 0x00, 0x00, 0x00 }
                    }, 

                    "SS01", 
                    Package (0x06)
                    {
                        "name", Buffer (0x05) { "SS01" }, "UsbConnector", 0x03, 
                        "port", Buffer (0x04) { 0x0D, 0x00, 0x00, 0x00 }
                    }, 

                    "SS02", 
                    Package (0x06)
                    {
                        "name", Buffer (0x05) { "SS02" }, "UsbConnector", 0x0A, 
                        "port", Buffer (0x04) { 0x0E, 0x00, 0x00, 0x00 }
                    }, 

                    "SS03", 
                    Package (0x06)
                    {
                        "name", Buffer (0x05) { "SS03" }, "UsbConnector", 0x03, 
                        "port", Buffer (0x04) { 0x0F, 0x00, 0x00, 0x00 }
                    }
                }
            }
        })
    }
}
