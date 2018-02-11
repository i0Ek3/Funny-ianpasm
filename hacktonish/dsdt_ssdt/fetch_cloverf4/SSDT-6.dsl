/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20161210-64(RM)
 * Copyright (c) 2000 - 2016 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-6.aml, Thu Feb  8 18:58:03 2018
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000053 (83)
 *     Revision         0x01
 *     Checksum         0x80
 *     OEM ID           "PmRef"
 *     OEM Table ID     "CpuPm"
 *     OEM Revision     0x00003000 (12288)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20120320 (538051360)
 */
DefinitionBlock ("", "SSDT", 1, "PmRef", "CpuPm", 0x00003000)
{
    External (_PR_.CPU0, ProcessorObj)

    Scope (\_PR.CPU0)
    {
        Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
        {
            If (LEqual (Arg2, Zero))
            {
                Return (Buffer (One)
                {
                     0x03                                           
                })
            }

            Return (Package (0x02)
            {
                "plugin-type", 
                One
            })
        }
    }
}

