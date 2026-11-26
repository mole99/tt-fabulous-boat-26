// SPDX-FileCopyrightText: © 2026 Leo Moser
// SPDX-License-Identifier: Apache-2.0

`default_nettype none

module gf_sram_256x8_1rw #(
    parameter WORD_BITS = 8,
    parameter ADDR_BITS = 8
)(
    input  wire       clk,
    input  wire       rw,
    
    input  wire [ADDR_BITS-1:0] addr,
    
    // Input word
    input  wire [WORD_BITS-1:0] data_i,
    
    // Output words
    output wire [WORD_BITS-1:0] data_o
);

    (* keep *) GF_SRAM_256x8_1RW #(
        .CLK_INV (1'b0)
    ) mem (
        // Port A - Read/Write
        .CLK    (clk),
        .A0  (addr[0]),
        .A1  (addr[1]),
        .A2  (addr[2]),
        .A3  (addr[3]),
        .A4  (addr[4]),
        .A5  (addr[5]),
        .A6  (addr[6]),
        .A7  (addr[7]),
        .D0   (data_i[0]),
        .D1   (data_i[1]),
        .D2   (data_i[2]),
        .D3   (data_i[3]),
        .D4   (data_i[4]),
        .D5   (data_i[5]),
        .D6   (data_i[6]),
        .D7   (data_i[7]),
        .WEN_N0    (1'b0),
        .WEN_N1    (1'b0),
        .WEN_N2    (1'b0),
        .WEN_N3    (1'b0),
        .WEN_N4    (1'b0),
        .WEN_N5    (1'b0),
        .WEN_N6    (1'b0),
        .WEN_N7    (1'b0),
        .GWEN_N    (!rw),
        .CEN_N     (1'b0),
        .Q0  (data_o[0]),
        .Q1  (data_o[1]),
        .Q2  (data_o[2]),
        .Q3  (data_o[3]),
        .Q4  (data_o[4]),
        .Q5  (data_o[5]),
        .Q6  (data_o[6]),
        .Q7  (data_o[7])
    );

endmodule
