# SPDX-FileCopyrightText: © 2026 FABulous Contributors
# SPDX-License-Identifier: Apache-2.0

import os
from pathlib import Path
import cocotb
from cocotb.clock import Clock
from cocotb.triggers import ClockCycles, Timer
from cocotb.types import LogicArray, Logic

from ..common import zero_bitstream, upload_bitstream, PCF, fabric, tile_library

testname = Path(__file__).stem
proj_path = Path(__file__).resolve().parent

@cocotb.test()
async def test_gf_sram_256x8_1rw(dut):
    """Load bitstream for gf_sram_256x8_1rw"""

    pcf = PCF(dut, proj_path / f"../../../fabrics/{fabric}/constraints.pcf")
    pcf.write_gtkw(f"{testname}.gtkw", ["clk1", "rw", "addr", "data_i", "data_o"])

    # Defaults
    pcf.set("clk1", Logic(0), index=0)
    pcf.set("rw", Logic(0), index=0)
    pcf.set("addr", LogicArray.from_unsigned(0, len(pcf.get("addr"))))
    pcf.set("data_i", LogicArray.from_unsigned(0, len(pcf.get("data_i"))))
    await Timer(10, unit="ns")

    # Zero all config bits
    await zero_bitstream(dut)
    await Timer(10, unit="ns")

    # Upload the bitstream
    await upload_bitstream(dut, proj_path / f'../../../user_designs/designs/{tile_library}/{testname}/{testname}.bit')
    await Timer(10, unit="ns")
    
    # Start a clock on clk1
    clock1 = pcf.get_raw("clk1", "OUT")
    cocotb.start_soon(Clock(clock1, 10, 'ns').start())
    
    pcf.set("rw", Logic(1), index=0)
    
    await ClockCycles(clock1, 10)
    
    # Fill the memory with data
    for i in range(256):
        pcf.set("data_i", LogicArray.from_unsigned(i, len(pcf.get("data_i"))))
        pcf.set("addr", LogicArray.from_unsigned(i, len(pcf.get("addr"))))
        await ClockCycles(clock1, 1)

    pcf.set("rw", Logic(0), index=0)

    await ClockCycles(clock1, 10)
    
    # Read from both read ports
    for i in range(256):
        pcf.set("addr", LogicArray.from_unsigned(i, len(pcf.get("addr"))))
        await ClockCycles(clock1, 2)
        
        assert(pcf.get("data_o").to_unsigned() == i)
