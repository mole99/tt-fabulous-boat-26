// SPDX-FileCopyrightText: © 2026 Leo Moser <leo.moser@pm.me>
// SPDX-License-Identifier: Apache-2.0

module tt_um_fabulous_boat_26 (
    `ifdef USE_POWER_PINS
    inout VPWR,
    inout VGND,
    `endif
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered, so you can ignore it
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

    parameter FABRIC_NUM_COLUMNS = 6;
    parameter FABRIC_NUM_ROWS = 6;
    
    parameter FRAME_BITS_PER_ROW = 32;
    parameter MAX_FRAMES_PER_COL = 20;

    wire [(FRAME_BITS_PER_ROW*FABRIC_NUM_ROWS)-1:0]    frame_data;
    wire [(MAX_FRAMES_PER_COL*FABRIC_NUM_COLUMNS)-1:0] frame_strobe;
    
    wire [31:0] bitstream_data;
    wire        bitstream_valid;

    fabric_bitbang fabric_bitbang (
        .clk_i   (clk),
        .rst_ni  (!rst_n), // inverted polarity: config is active when the design is not

        .sample_i (ui_in[0]),
        .data_i   (ui_in[1]),

        // Bitstream data
        .bitstream_data_o   (bitstream_data),
        .bitstream_valid_o  (bitstream_valid)
    );

    wire fabric_sys_reset;
    wire fabric_configured;

    logic [4:0] memory_coord_x;
    logic [4:0] memory_coord_y;
    logic       memory_coord_valid;
    
    logic [30:0] memory_data;
    logic        memory_data_valid;

    fabric_config #(
        .FABRIC_NUM_COLUMNS (FABRIC_NUM_COLUMNS),
        .FABRIC_NUM_ROWS    (FABRIC_NUM_ROWS)
    ) fabric_config (
        .clk_i   (clk),
        .rst_ni  (!rst_n), // inverted polarity: config is active when the design is not
        
        // Bitstream data
        .bitstream_data_i   (bitstream_data),
        .bitstream_valid_i  (bitstream_valid),
        
        // Configuration in progress
        .busy_o         (fabric_sys_reset),
        
        // Fabric is configured
        .configured_o   (fabric_configured),
        
        // To the fabric
        .frame_data_o   (frame_data),
        .frame_strobe_o (frame_strobe),
        
        // To the memories
        .memory_coord_x_o     (memory_coord_x),
        .memory_coord_y_o     (memory_coord_y),
        .memory_coord_valid_o (memory_coord_valid),

        .memory_data_o        (memory_data),
        .memory_data_valid_o  (memory_data_valid)
    );

    logic sram0_config_enable;
    logic sram1_config_enable;
    logic sram2_config_enable;
    logic sram3_config_enable;
    logic sram_config_we;
    logic [7:0] sram_config_address;
    logic [7:0] sram_config_data;

    memory_connect memory_connect (
        .clk_i  (clk),
        .rst_ni  (!rst_n), // inverted polarity: config is active when the design is not
    
        // To the memories
        .memory_coord_x_i     (memory_coord_x),
        .memory_coord_y_i     (memory_coord_y),
        .memory_coord_valid_i (memory_coord_valid),
        
        .memory_data_i        (memory_data),
        .memory_data_valid_i  (memory_data_valid),
        
        .sram0_config_enable_o  (sram0_config_enable),
        .sram1_config_enable_o  (sram1_config_enable),
        .sram2_config_enable_o  (sram2_config_enable),
        .sram3_config_enable_o  (sram3_config_enable),
        
        .sram_config_we_o       (sram_config_we),
        .sram_config_address_o  (sram_config_address),
        .sram_config_data_o     (sram_config_data)
    );

    wire       fabric_clk;
    wire       fabric_rst_n;
    wire [7:0] fabric_ui_in;
    wire [7:0] fabric_uo_out;
    wire [7:0] fabric_uio_in;
    wire [7:0] fabric_uio_out;
    wire [7:0] fabric_uio_oe;

    assign fabric_clk = clk;
    assign fabric_rst_n = rst_n;
    assign fabric_ui_in = ui_in;
    assign fabric_uio_in = uio_in;
    
    assign uo_out = fabric_uo_out;
    assign uio_out = fabric_uio_out;
    assign uio_oe = fabric_uio_oe;

    // SRAM
    localparam SRAM_ADDR_WIDTH = 8;
    localparam SRAM_DATA_WIDTH = 8;
    
    wire                              sram0_clk;
    wire [(SRAM_ADDR_WIDTH - 1) : 0]  sram0_a;
    wire [(SRAM_DATA_WIDTH - 1) : 0]  sram0_d;
    wire [(SRAM_DATA_WIDTH - 1) : 0]  sram0_wen_n;
    wire                              sram0_gwen_n;
    wire                              sram0_cen_n;
    wire [(SRAM_DATA_WIDTH - 1) : 0]  sram0_q;

    wire                              sram1_clk;
    wire [(SRAM_ADDR_WIDTH - 1) : 0]  sram1_a;
    wire [(SRAM_DATA_WIDTH - 1) : 0]  sram1_d;
    wire [(SRAM_DATA_WIDTH - 1) : 0]  sram1_wen_n;
    wire                              sram1_gwen_n;
    wire                              sram1_cen_n;
    wire [(SRAM_DATA_WIDTH - 1) : 0]  sram1_q;

    wire                              sram2_clk;
    wire [(SRAM_ADDR_WIDTH - 1) : 0]  sram2_a;
    wire [(SRAM_DATA_WIDTH - 1) : 0]  sram2_d;
    wire [(SRAM_DATA_WIDTH - 1) : 0]  sram2_wen_n;
    wire                              sram2_gwen_n;
    wire                              sram2_cen_n;
    wire [(SRAM_DATA_WIDTH - 1) : 0]  sram2_q;

    wire                              sram3_clk;
    wire [(SRAM_ADDR_WIDTH - 1) : 0]  sram3_a;
    wire [(SRAM_DATA_WIDTH - 1) : 0]  sram3_d;
    wire [(SRAM_DATA_WIDTH - 1) : 0]  sram3_wen_n;
    wire                              sram3_gwen_n;
    wire                              sram3_cen_n;
    wire [(SRAM_DATA_WIDTH - 1) : 0]  sram3_q;

    tiny_fabric_boat_26 tiny_fabric_boat_26 (
        // IN/OUT is from the PoV of the fabric

        // clk
        .Tile_X1Y5_A_EN_top   (),
        .Tile_X1Y5_A_IN_top   (),
        .Tile_X1Y5_A_OUT_top  (fabric_clk),
    
        // rst_n
        .Tile_X1Y5_B_EN_top   (),
        .Tile_X1Y5_B_IN_top   (),
        .Tile_X1Y5_B_OUT_top  (fabric_rst_n),

        // ui
        .Tile_X0Y2_A_EN_top   (),
        .Tile_X0Y2_A_IN_top   (),
        .Tile_X0Y2_A_OUT_top  (fabric_ui_in[0]),
        .Tile_X0Y2_B_EN_top   (),
        .Tile_X0Y2_B_IN_top   (),
        .Tile_X0Y2_B_OUT_top  (fabric_ui_in[1]),
        .Tile_X0Y2_C_EN_top   (),
        .Tile_X0Y2_C_IN_top   (),
        .Tile_X0Y2_C_OUT_top  (fabric_ui_in[2]),
        .Tile_X0Y2_D_EN_top   (),
        .Tile_X0Y2_D_IN_top   (),
        .Tile_X0Y2_D_OUT_top  (fabric_ui_in[3]),
        .Tile_X0Y1_A_EN_top   (),
        .Tile_X0Y1_A_IN_top   (),
        .Tile_X0Y1_A_OUT_top  (fabric_ui_in[4]),
        .Tile_X0Y1_B_EN_top   (),
        .Tile_X0Y1_B_IN_top   (),
        .Tile_X0Y1_B_OUT_top  (fabric_ui_in[5]),
        .Tile_X0Y1_C_EN_top   (),
        .Tile_X0Y1_C_IN_top   (),
        .Tile_X0Y1_C_OUT_top  (fabric_ui_in[6]),
        .Tile_X0Y1_D_EN_top   (),
        .Tile_X0Y1_D_IN_top   (),
        .Tile_X0Y1_D_OUT_top  (fabric_ui_in[7]),

        // uo
        .Tile_X5Y2_A_EN_top   (),
        .Tile_X5Y2_A_IN_top   (fabric_uo_out[0]),
        .Tile_X5Y2_A_OUT_top  (1'b0),
        .Tile_X5Y2_B_EN_top   (),
        .Tile_X5Y2_B_IN_top   (fabric_uo_out[1]),
        .Tile_X5Y2_B_OUT_top  (1'b0),
        .Tile_X5Y2_C_EN_top   (),
        .Tile_X5Y2_C_IN_top   (fabric_uo_out[2]),
        .Tile_X5Y2_C_OUT_top  (1'b0),
        .Tile_X5Y2_D_EN_top   (),
        .Tile_X5Y2_D_IN_top   (fabric_uo_out[3]),
        .Tile_X5Y2_D_OUT_top  (1'b0),
        .Tile_X5Y1_A_EN_top   (),
        .Tile_X5Y1_A_IN_top   (fabric_uo_out[4]),
        .Tile_X5Y1_A_OUT_top  (1'b0),
        .Tile_X5Y1_B_EN_top   (),
        .Tile_X5Y1_B_IN_top   (fabric_uo_out[5]),
        .Tile_X5Y1_B_OUT_top  (1'b0),
        .Tile_X5Y1_C_EN_top   (),
        .Tile_X5Y1_C_IN_top   (fabric_uo_out[6]),
        .Tile_X5Y1_C_OUT_top  (1'b0),
        .Tile_X5Y1_D_EN_top   (),
        .Tile_X5Y1_D_IN_top   (fabric_uo_out[7]),
        .Tile_X5Y1_D_OUT_top  (1'b0),

        // uio
        .Tile_X2Y5_A_EN_top   (fabric_uio_oe[0]),
        .Tile_X2Y5_A_IN_top   (fabric_uio_out[0]),
        .Tile_X2Y5_A_OUT_top  (fabric_uio_in[0]),
        .Tile_X2Y5_B_EN_top   (fabric_uio_oe[1]),
        .Tile_X2Y5_B_IN_top   (fabric_uio_out[1]),
        .Tile_X2Y5_B_OUT_top  (fabric_uio_in[1]),
        .Tile_X2Y5_C_EN_top   (fabric_uio_oe[2]),
        .Tile_X2Y5_C_IN_top   (fabric_uio_out[2]),
        .Tile_X2Y5_C_OUT_top  (fabric_uio_in[2]),
        .Tile_X2Y5_D_EN_top   (fabric_uio_oe[3]),
        .Tile_X2Y5_D_IN_top   (fabric_uio_out[3]),
        .Tile_X2Y5_D_OUT_top  (fabric_uio_in[3]),
        .Tile_X3Y5_A_EN_top   (fabric_uio_oe[4]),
        .Tile_X3Y5_A_IN_top   (fabric_uio_out[4]),
        .Tile_X3Y5_A_OUT_top  (fabric_uio_in[4]),
        .Tile_X3Y5_B_EN_top   (fabric_uio_oe[5]),
        .Tile_X3Y5_B_IN_top   (fabric_uio_out[5]),
        .Tile_X3Y5_B_OUT_top  (fabric_uio_in[5]),
        .Tile_X3Y5_C_EN_top   (fabric_uio_oe[6]),
        .Tile_X3Y5_C_IN_top   (fabric_uio_out[6]),
        .Tile_X3Y5_C_OUT_top  (fabric_uio_in[6]),
        .Tile_X3Y5_D_EN_top   (fabric_uio_oe[7]),
        .Tile_X3Y5_D_IN_top   (fabric_uio_out[7]),
        .Tile_X3Y5_D_OUT_top  (fabric_uio_in[7]),

        // SYS_RESET
        .Tile_X0Y5_SYS_RESET_RESET_top (fabric_sys_reset),
        
        // SRAM 0
        .Tile_X1Y0_A_EXT_Q0 (sram0_q[0]),
        .Tile_X1Y0_A_EXT_Q1 (sram0_q[1]),
        .Tile_X1Y0_A_EXT_Q2 (sram0_q[2]),
        .Tile_X1Y0_A_EXT_Q3 (sram0_q[3]),
        .Tile_X1Y0_A_EXT_Q4 (sram0_q[4]),
        .Tile_X1Y0_A_EXT_Q5 (sram0_q[5]),
        .Tile_X1Y0_A_EXT_Q6 (sram0_q[6]),
        .Tile_X1Y0_A_EXT_Q7 (sram0_q[7]),
        .Tile_X1Y0_A_CONFIGURED_top (fabric_configured),
        .Tile_X1Y0_A_EXT_CLK  (sram0_clk),
        .Tile_X1Y0_A_EXT_A0 (sram0_a[0]),
        .Tile_X1Y0_A_EXT_A1 (sram0_a[1]),
        .Tile_X1Y0_A_EXT_A2 (sram0_a[2]),
        .Tile_X1Y0_A_EXT_A3 (sram0_a[3]),
        .Tile_X1Y0_A_EXT_A4 (sram0_a[4]),
        .Tile_X1Y0_A_EXT_A5 (sram0_a[5]),
        .Tile_X1Y0_A_EXT_A6 (sram0_a[6]),
        .Tile_X1Y0_A_EXT_A7 (sram0_a[7]),
        .Tile_X1Y0_A_EXT_D0 (sram0_d[0]),
        .Tile_X1Y0_A_EXT_D1 (sram0_d[1]),
        .Tile_X1Y0_A_EXT_D2 (sram0_d[2]),
        .Tile_X1Y0_A_EXT_D3 (sram0_d[3]),
        .Tile_X1Y0_A_EXT_D4 (sram0_d[4]),
        .Tile_X1Y0_A_EXT_D5 (sram0_d[5]),
        .Tile_X1Y0_A_EXT_D6 (sram0_d[6]),
        .Tile_X1Y0_A_EXT_D7 (sram0_d[7]),
        .Tile_X1Y0_A_EXT_WEN_N0 (sram0_wen_n[0]),
        .Tile_X1Y0_A_EXT_WEN_N1 (sram0_wen_n[1]),
        .Tile_X1Y0_A_EXT_WEN_N2 (sram0_wen_n[2]),
        .Tile_X1Y0_A_EXT_WEN_N3 (sram0_wen_n[3]),
        .Tile_X1Y0_A_EXT_WEN_N4 (sram0_wen_n[4]),
        .Tile_X1Y0_A_EXT_WEN_N5 (sram0_wen_n[5]),
        .Tile_X1Y0_A_EXT_WEN_N6 (sram0_wen_n[6]),
        .Tile_X1Y0_A_EXT_WEN_N7 (sram0_wen_n[7]),
        .Tile_X1Y0_A_EXT_GWEN_N (sram0_gwen_n),
        .Tile_X1Y0_A_EXT_CEN_N (sram0_cen_n),

        // SRAM 1
        .Tile_X2Y0_A_EXT_Q0 (sram1_q[0]),
        .Tile_X2Y0_A_EXT_Q1 (sram1_q[1]),
        .Tile_X2Y0_A_EXT_Q2 (sram1_q[2]),
        .Tile_X2Y0_A_EXT_Q3 (sram1_q[3]),
        .Tile_X2Y0_A_EXT_Q4 (sram1_q[4]),
        .Tile_X2Y0_A_EXT_Q5 (sram1_q[5]),
        .Tile_X2Y0_A_EXT_Q6 (sram1_q[6]),
        .Tile_X2Y0_A_EXT_Q7 (sram1_q[7]),
        .Tile_X2Y0_A_CONFIGURED_top (fabric_configured),
        .Tile_X2Y0_A_EXT_CLK  (sram1_clk),
        .Tile_X2Y0_A_EXT_A0 (sram1_a[0]),
        .Tile_X2Y0_A_EXT_A1 (sram1_a[1]),
        .Tile_X2Y0_A_EXT_A2 (sram1_a[2]),
        .Tile_X2Y0_A_EXT_A3 (sram1_a[3]),
        .Tile_X2Y0_A_EXT_A4 (sram1_a[4]),
        .Tile_X2Y0_A_EXT_A5 (sram1_a[5]),
        .Tile_X2Y0_A_EXT_A6 (sram1_a[6]),
        .Tile_X2Y0_A_EXT_A7 (sram1_a[7]),
        .Tile_X2Y0_A_EXT_D0 (sram1_d[0]),
        .Tile_X2Y0_A_EXT_D1 (sram1_d[1]),
        .Tile_X2Y0_A_EXT_D2 (sram1_d[2]),
        .Tile_X2Y0_A_EXT_D3 (sram1_d[3]),
        .Tile_X2Y0_A_EXT_D4 (sram1_d[4]),
        .Tile_X2Y0_A_EXT_D5 (sram1_d[5]),
        .Tile_X2Y0_A_EXT_D6 (sram1_d[6]),
        .Tile_X2Y0_A_EXT_D7 (sram1_d[7]),
        .Tile_X2Y0_A_EXT_WEN_N0 (sram1_wen_n[0]),
        .Tile_X2Y0_A_EXT_WEN_N1 (sram1_wen_n[1]),
        .Tile_X2Y0_A_EXT_WEN_N2 (sram1_wen_n[2]),
        .Tile_X2Y0_A_EXT_WEN_N3 (sram1_wen_n[3]),
        .Tile_X2Y0_A_EXT_WEN_N4 (sram1_wen_n[4]),
        .Tile_X2Y0_A_EXT_WEN_N5 (sram1_wen_n[5]),
        .Tile_X2Y0_A_EXT_WEN_N6 (sram1_wen_n[6]),
        .Tile_X2Y0_A_EXT_WEN_N7 (sram1_wen_n[7]),
        .Tile_X2Y0_A_EXT_GWEN_N (sram1_gwen_n),
        .Tile_X2Y0_A_EXT_CEN_N (sram1_cen_n),

        // SRAM 2
        .Tile_X3Y0_A_EXT_Q0 (sram2_q[0]),
        .Tile_X3Y0_A_EXT_Q1 (sram2_q[1]),
        .Tile_X3Y0_A_EXT_Q2 (sram2_q[2]),
        .Tile_X3Y0_A_EXT_Q3 (sram2_q[3]),
        .Tile_X3Y0_A_EXT_Q4 (sram2_q[4]),
        .Tile_X3Y0_A_EXT_Q5 (sram2_q[5]),
        .Tile_X3Y0_A_EXT_Q6 (sram2_q[6]),
        .Tile_X3Y0_A_EXT_Q7 (sram2_q[7]),
        .Tile_X3Y0_A_CONFIGURED_top (fabric_configured),
        .Tile_X3Y0_A_EXT_CLK  (sram2_clk),
        .Tile_X3Y0_A_EXT_A0 (sram2_a[0]),
        .Tile_X3Y0_A_EXT_A1 (sram2_a[1]),
        .Tile_X3Y0_A_EXT_A2 (sram2_a[2]),
        .Tile_X3Y0_A_EXT_A3 (sram2_a[3]),
        .Tile_X3Y0_A_EXT_A4 (sram2_a[4]),
        .Tile_X3Y0_A_EXT_A5 (sram2_a[5]),
        .Tile_X3Y0_A_EXT_A6 (sram2_a[6]),
        .Tile_X3Y0_A_EXT_A7 (sram2_a[7]),
        .Tile_X3Y0_A_EXT_D0 (sram2_d[0]),
        .Tile_X3Y0_A_EXT_D1 (sram2_d[1]),
        .Tile_X3Y0_A_EXT_D2 (sram2_d[2]),
        .Tile_X3Y0_A_EXT_D3 (sram2_d[3]),
        .Tile_X3Y0_A_EXT_D4 (sram2_d[4]),
        .Tile_X3Y0_A_EXT_D5 (sram2_d[5]),
        .Tile_X3Y0_A_EXT_D6 (sram2_d[6]),
        .Tile_X3Y0_A_EXT_D7 (sram2_d[7]),
        .Tile_X3Y0_A_EXT_WEN_N0 (sram2_wen_n[0]),
        .Tile_X3Y0_A_EXT_WEN_N1 (sram2_wen_n[1]),
        .Tile_X3Y0_A_EXT_WEN_N2 (sram2_wen_n[2]),
        .Tile_X3Y0_A_EXT_WEN_N3 (sram2_wen_n[3]),
        .Tile_X3Y0_A_EXT_WEN_N4 (sram2_wen_n[4]),
        .Tile_X3Y0_A_EXT_WEN_N5 (sram2_wen_n[5]),
        .Tile_X3Y0_A_EXT_WEN_N6 (sram2_wen_n[6]),
        .Tile_X3Y0_A_EXT_WEN_N7 (sram2_wen_n[7]),
        .Tile_X3Y0_A_EXT_GWEN_N (sram2_gwen_n),
        .Tile_X3Y0_A_EXT_CEN_N (sram2_cen_n),

        // SRAM 3
        .Tile_X4Y0_A_EXT_Q0 (sram3_q[0]),
        .Tile_X4Y0_A_EXT_Q1 (sram3_q[1]),
        .Tile_X4Y0_A_EXT_Q2 (sram3_q[2]),
        .Tile_X4Y0_A_EXT_Q3 (sram3_q[3]),
        .Tile_X4Y0_A_EXT_Q4 (sram3_q[4]),
        .Tile_X4Y0_A_EXT_Q5 (sram3_q[5]),
        .Tile_X4Y0_A_EXT_Q6 (sram3_q[6]),
        .Tile_X4Y0_A_EXT_Q7 (sram3_q[7]),
        .Tile_X4Y0_A_CONFIGURED_top (fabric_configured),
        .Tile_X4Y0_A_EXT_CLK  (sram3_clk),
        .Tile_X4Y0_A_EXT_A0 (sram3_a[0]),
        .Tile_X4Y0_A_EXT_A1 (sram3_a[1]),
        .Tile_X4Y0_A_EXT_A2 (sram3_a[2]),
        .Tile_X4Y0_A_EXT_A3 (sram3_a[3]),
        .Tile_X4Y0_A_EXT_A4 (sram3_a[4]),
        .Tile_X4Y0_A_EXT_A5 (sram3_a[5]),
        .Tile_X4Y0_A_EXT_A6 (sram3_a[6]),
        .Tile_X4Y0_A_EXT_A7 (sram3_a[7]),
        .Tile_X4Y0_A_EXT_D0 (sram3_d[0]),
        .Tile_X4Y0_A_EXT_D1 (sram3_d[1]),
        .Tile_X4Y0_A_EXT_D2 (sram3_d[2]),
        .Tile_X4Y0_A_EXT_D3 (sram3_d[3]),
        .Tile_X4Y0_A_EXT_D4 (sram3_d[4]),
        .Tile_X4Y0_A_EXT_D5 (sram3_d[5]),
        .Tile_X4Y0_A_EXT_D6 (sram3_d[6]),
        .Tile_X4Y0_A_EXT_D7 (sram3_d[7]),
        .Tile_X4Y0_A_EXT_WEN_N0 (sram3_wen_n[0]),
        .Tile_X4Y0_A_EXT_WEN_N1 (sram3_wen_n[1]),
        .Tile_X4Y0_A_EXT_WEN_N2 (sram3_wen_n[2]),
        .Tile_X4Y0_A_EXT_WEN_N3 (sram3_wen_n[3]),
        .Tile_X4Y0_A_EXT_WEN_N4 (sram3_wen_n[4]),
        .Tile_X4Y0_A_EXT_WEN_N5 (sram3_wen_n[5]),
        .Tile_X4Y0_A_EXT_WEN_N6 (sram3_wen_n[6]),
        .Tile_X4Y0_A_EXT_WEN_N7 (sram3_wen_n[7]),
        .Tile_X4Y0_A_EXT_GWEN_N (sram3_gwen_n),
        .Tile_X4Y0_A_EXT_CEN_N (sram3_cen_n),

        .FrameData            (frame_data),
        .FrameStrobe          (frame_strobe)
    );

    gf180mcu_ocd_ip_sram__sram256x8m8wm1 sram_0 (
	    .CLK (fabric_sys_reset ? clk : sram0_clk),
	    .CEN (fabric_sys_reset ? !sram0_config_enable : sram0_cen_n),
	    .GWEN (fabric_sys_reset ? !sram_config_we : sram0_gwen_n),
	    .WEN (fabric_sys_reset ? 8'b0 : sram0_wen_n),
	    .A (fabric_sys_reset ? sram_config_address : sram0_a),
	    .D (fabric_sys_reset ? sram_config_data : sram0_d),
	    .Q (sram0_q)
    );

    gf180mcu_ocd_ip_sram__sram256x8m8wm1 sram_1 (
	    .CLK (fabric_sys_reset ? clk : sram1_clk),
	    .CEN (fabric_sys_reset ? !sram1_config_enable : sram1_cen_n),
	    .GWEN (fabric_sys_reset ? !sram_config_we : sram1_gwen_n),
	    .WEN (fabric_sys_reset ? 8'b0 : sram1_wen_n),
	    .A (fabric_sys_reset ? sram_config_address : sram1_a),
	    .D (fabric_sys_reset ? sram_config_data : sram1_d),
	    .Q (sram1_q)
    );

    gf180mcu_ocd_ip_sram__sram256x8m8wm1 sram_2 (
	    .CLK (fabric_sys_reset ? clk : sram2_clk),
	    .CEN (fabric_sys_reset ? !sram2_config_enable : sram2_cen_n),
	    .GWEN (fabric_sys_reset ? !sram_config_we : sram2_gwen_n),
	    .WEN (fabric_sys_reset ? 8'b0 : sram2_wen_n),
	    .A (fabric_sys_reset ? sram_config_address : sram2_a),
	    .D (fabric_sys_reset ? sram_config_data : sram2_d),
	    .Q (sram2_q)
    );

    gf180mcu_ocd_ip_sram__sram256x8m8wm1 sram_3 (
	    .CLK (fabric_sys_reset ? clk : sram3_clk),
	    .CEN (fabric_sys_reset ? !sram3_config_enable : sram3_cen_n),
	    .GWEN (fabric_sys_reset ? !sram_config_we : sram3_gwen_n),
	    .WEN (fabric_sys_reset ? 8'b0 : sram3_wen_n),
	    .A (fabric_sys_reset ? sram_config_address : sram3_a),
	    .D (fabric_sys_reset ? sram_config_data : sram3_d),
	    .Q (sram3_q)
    );

endmodule
