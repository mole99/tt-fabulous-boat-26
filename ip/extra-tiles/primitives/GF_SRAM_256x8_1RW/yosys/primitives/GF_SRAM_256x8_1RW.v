// Copyright 2026 FABulous Contributors
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

(* keep *)
module GF_SRAM_256x8_1RW #(
    parameter CLK_INV = 1'b0,
    
    parameter [255:0] INIT_0 = 256'h0000000000000000000000000000000000000000000000000000000000000000,
    parameter [255:0] INIT_1 = 256'h0000000000000000000000000000000000000000000000000000000000000000,
    parameter [255:0] INIT_2 = 256'h0000000000000000000000000000000000000000000000000000000000000000,
    parameter [255:0] INIT_3 = 256'h0000000000000000000000000000000000000000000000000000000000000000,
    parameter [255:0] INIT_4 = 256'h0000000000000000000000000000000000000000000000000000000000000000,
    parameter [255:0] INIT_5 = 256'h0000000000000000000000000000000000000000000000000000000000000000,
    parameter [255:0] INIT_6 = 256'h0000000000000000000000000000000000000000000000000000000000000000,
    parameter [255:0] INIT_7 = 256'h0000000000000000000000000000000000000000000000000000000000000000,

    parameter INIT_FILE = ""
  )(
    (* clkbuf_sink *) input        CLK,
    input        A0,
    input        A1,
    input        A2,
    input        A3,
    input        A4,
    input        A5,
    input        A6,
    input        A7,
    input        D0,
    input        D1,
    input        D2,
    input        D3,
    input        D4,
    input        D5,
    input        D6,
    input        D7,
    input        WEN_N0,
    input        WEN_N1,
    input        WEN_N2,
    input        WEN_N3,
    input        WEN_N4,
    input        WEN_N5,
    input        WEN_N6,
    input        WEN_N7,
    input        GWEN_N,
    input        CEN_N,
    output       Q0,
    output       Q1,
    output       Q2,
    output       Q3,
    output       Q4,
    output       Q5,
    output       Q6,
    output       Q7
);
    localparam WIDTH = 8;
    localparam DEPTH = 8;

    // We need to combine individual bits into vectors
    // since FABulous doesn't support vectors for primitives yet
    wire [DEPTH-1:0] A;
    wire [WIDTH-1:0] D;
    wire [WIDTH-1:0] WEN_N;
    wire [WIDTH-1:0] Q;
    
    assign A = {A7, A6, A5, A4, A3, A2, A1, A0};
    assign D = {D7, D6, D5, D4, D3, D2, D1, D0};
    assign WEN_N = {WEN_N7, WEN_N6, WEN_N5, WEN_N4, WEN_N3, WEN_N2, WEN_N1, WEN_N0};

    assign {Q7, Q6, Q5, Q4, Q3, Q2, Q1, Q0} = Q;

    // Clock inversion
    wire clk;
    assign clk = CLK_INV ? !CLK : CLK;

    reg [WIDTH-1:0] mem [2**DEPTH];
    reg [WIDTH-1:0] Q_reg;
    
	  initial begin
		    if (INIT_FILE != "")
			      $readmemh(INIT_FILE, mem);
		    /*else
				    mem[ 0*16] = INIT_0[16*i +: 16];
				    mem[ 1*16] = INIT_1[16*i +: 16];
				    mem[ 2*16] = INIT_2[16*i +: 16];
				    mem[ 3*16] = INIT_3[16*i +: 16];
				    mem[ 4*16] = INIT_4[16*i +: 16];
				    mem[ 5*16] = INIT_5[16*i +: 16];
				    mem[ 6*16] = INIT_6[16*i +: 16];
				    mem[ 7*16] = INIT_7[16*i +: 16]; // TODO
		    end*/
	  end
    
    always @(posedge clk) begin
        // TODO: check order
        if (!CEN_N && !GWEN_N) begin
            mem[A] <= (mem[A] & WEN_N) | (D & ~WEN_N);
        end
        if (!CEN_N) begin
            Q_reg <= mem[A];
        end
    end
    
    assign Q = Q_reg;

endmodule
