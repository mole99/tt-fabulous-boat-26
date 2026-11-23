// Copyright 2026 Leo Moser
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

(* FABulous, BelMap,
CLK_INV=0
*)
module GF_SRAM_256x8_1RW #(
    parameter NoConfigBits = 1,
    parameter DATA_WIDTH = 8,
    parameter ADDR_WIDTH = 8
)(
    // Fabric side
    input                         CLK,    // clock
    input  [(ADDR_WIDTH - 1) : 0] A,      // address
    input  [(DATA_WIDTH - 1) : 0] D,      // input data
    input  [(DATA_WIDTH - 1) : 0] WEN_N,  // Write enable (negative)
    input                         GWEN_N, // Global write enable (negative)
    input                         CEN_N,  // Chip enable (negative)
    	output [(DATA_WIDTH - 1) : 0] Q,      // output data

    // External side
    (* FABulous, EXTERNAL *) output                         EXT_CLK,
    (* FABulous, EXTERNAL *) output [(ADDR_WIDTH - 1) : 0]  EXT_A,
    (* FABulous, EXTERNAL *) output [(DATA_WIDTH - 1) : 0]  EXT_D,
    (* FABulous, EXTERNAL *) output [(DATA_WIDTH - 1) : 0]  EXT_WEN_N,
    (* FABulous, EXTERNAL *) output                         EXT_GWEN_N,
    (* FABulous, EXTERNAL *) output                         EXT_CEN_N,
    (* FABulous, EXTERNAL *) input  [(DATA_WIDTH - 1) : 0]  EXT_Q,
    
    (* FABulous, EXTERNAL *) input                 CONFIGURED_top,

    // Static configuration bits
    (* FABulous, GLOBAL *) input [NoConfigBits-1:0] ConfigBits
);
    // Configuration bits
    wire CLK_INV;
    assign CLK_INV = ConfigBits[0];

    // Fabric -> External
    assign EXT_CLK      = CLK_INV ? !CLK : CLK;
    assign EXT_A        = A;
    assign EXT_D        = D;
    assign EXT_WEN_N    = WEN_N;
    assign EXT_GWEN_N   = GWEN_N;
    assign EXT_CEN_N    = CEN_N; //TODO || !CONFIGURED_top; // Only enable the SRAM if the fabric is configured
    
    // External -> Fabric
    assign Q         = EXT_Q;

endmodule
