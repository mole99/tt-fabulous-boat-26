#!/usr/bin/env python3

# Copyright (c) 2026 Leo Moser <leo.moser@pm.me>
# SPDX-License-Identifier: Apache-2.0

import sys
from reader import click_odb, click, odb
import grt as GRT

@click.command()
@click_odb
def custom_pdn(reader):
    tech = reader.db.getTech()
    
    top_layer_name = "Metal4"
    
    for net_name in ["VPWR", "VGND"]:
        net = reader.block.findNet(net_name)
        assert(net)

        bterm_top_boxes = []

        # First, collect all bpin boxes
        for bterm in reader.block.getBTerms():
            if bterm.getName() == net_name:
                for bpin in bterm.getBPins():
                    for box in bpin.getBoxes():
                        if box.getTechLayer().getName() == top_layer_name:
                            bterm_top_boxes.append((box.xMin(), box.yMin(), box.xMax(), box.yMax()))


        # Now, see if all swires have a bpin box associated
        for swire in net.getSWires():
            for sbox in swire.getWires():
                if not sbox.isVia():
                    if sbox.getTechLayer().getName() == top_layer_name:
                        # No bpin box found
                        if not (sbox.xMin(), sbox.yMin(), sbox.xMax(), sbox.yMax()) in bterm_top_boxes:
                            # Now create a bpin box using the last bpin
                            # in the for loop above (it works...)
                            odb.dbBox_create(
                                bpin,
                                sbox.getTechLayer(),
                                sbox.xMin(),
                                sbox.yMin(),
                                sbox.xMax(),
                                sbox.yMax(),
                            )


if __name__ == "__main__":
    custom_pdn()


