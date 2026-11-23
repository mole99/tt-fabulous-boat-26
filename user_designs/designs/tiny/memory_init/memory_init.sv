// SPDX-FileCopyrightText: © 2026 Leo Moser
// SPDX-License-Identifier: Apache-2.0

`default_nettype none

module memory_init #(
    parameter WORD_BITS = 8,
    parameter ADDR_BITS = 8
)(
    input  wire       clk,
    input  wire       rst_n,
    
    input  wire [ADDR_BITS-1:0] addr,
    
    // Input word
    input  wire [WORD_BITS-1:0] data_i,
    
    // Output words
    output wire [WORD_BITS-1:0] data_o
);

    (* keep  *) logic [7:0] mem [256];
    
    initial begin
        $readmemh("lorem_ipsum.hex", mem);
    end
    
    always @(posedge clk) begin
        data_o <= mem[addr];
    end

endmodule
