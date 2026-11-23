// SPDX-FileCopyrightText: © 2026 Leo Moser <leo.moser@pm.me>
// SPDX-License-Identifier: Apache-2.0

// Please note that this is a test module
// hardcoded just for this fabric.
// It should not be used for other fabrics as is.

module memory_config (
    input logic clk_i,
    input logic rst_ni,

    // To the memories
    input logic [4:0] memory_coord_x_i,
    input logic [4:0] memory_coord_y_i,
    input logic       memory_coord_valid_i,
    
    input logic [30:0] memory_data_i,
    input logic        memory_data_valid_i,
    
    output logic sram0_config_enable_o,
    output logic sram1_config_enable_o,
    output logic sram2_config_enable_o,
    output logic sram3_config_enable_o,
    output logic sram_config_we_o,
    output logic [7:0] sram_config_address_o,
    output logic [7:0] sram_config_data_o
);

    parameter SRAM0_X = 1;
    parameter SRAM0_Y = 0;
    parameter SRAM1_X = 2;
    parameter SRAM1_Y = 0;
    parameter SRAM2_X = 3;
    parameter SRAM2_Y = 0;
    parameter SRAM3_X = 4;
    parameter SRAM3_Y = 0;
    
    logic [7:0] counter;
    
    logic sram0_selected;
    logic sram1_selected;
    logic sram2_selected;
    logic sram3_selected;
    
    always_ff @(posedge clk_i) begin
        if (!rst_ni) begin
            counter <= '0;
            sram0_selected <= 1'b0;
            sram1_selected <= 1'b0;
            sram2_selected <= 1'b0;
            sram3_selected <= 1'b0;
        end else begin
        
            if (memory_coord_valid_i) begin
                sram0_selected <= 1'b0;
                sram1_selected <= 1'b0;
                sram2_selected <= 1'b0;
                sram3_selected <= 1'b0;
                counter <= '0;
                if (memory_coord_x_i == SRAM0_X && memory_coord_y_i == SRAM0_Y) begin
                    sram0_selected <= 1'b1;
                end
                if (memory_coord_x_i == SRAM1_X && memory_coord_y_i == SRAM1_Y) begin
                    sram1_selected <= 1'b1;
                end
                if (memory_coord_x_i == SRAM2_X && memory_coord_y_i == SRAM2_Y) begin
                    sram2_selected <= 1'b1;
                end
                if (memory_coord_x_i == SRAM3_X && memory_coord_y_i == SRAM3_Y) begin
                    sram3_selected <= 1'b1;
                end
            end
            
            // For as long as we get data, increment
            // the address and write the data
            if (memory_data_valid_i) begin
                counter <= counter + 1;
            end
        end
    end
    
    assign sram_config_address_o = counter;
    assign sram_config_data_o = memory_data_i;
    
    assign sram0_config_enable_o = sram0_selected;
    assign sram1_config_enable_o = sram1_selected;
    assign sram2_config_enable_o = sram2_selected;
    assign sram3_config_enable_o = sram3_selected;
    
    assign sram_config_we_o = memory_data_valid_i;
    
endmodule
