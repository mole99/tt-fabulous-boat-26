module \$__RAM_256x8_1RW_ (...);

    parameter INIT = 0;

    // 1 for posedge clocks and 0 for negedge
    parameter PORT_A_CLK_POL = 1;

    localparam WIDTH = 8;
    localparam ABITS = 8;

    input  PORT_A_CLK;
    input  PORT_A_CLK_EN;
    input  [WIDTH-1:0] PORT_A_WR_DATA;
    input  [ABITS-1:0] PORT_A_ADDR;
    input  PORT_A_WR_EN;
    input  [WIDTH-1:0] PORT_A_WR_BE;
    output [WIDTH-1:0] PORT_A_RD_DATA;

    GF_SRAM_256x8_1RW #(
        .INIT_0(INIT[255:0]),
		    .INIT_1(INIT[511:256]),
		    .INIT_2(INIT[767:512]),
		    .INIT_3(INIT[1023:768]),
		    .INIT_4(INIT[1279:1024]),
		    .INIT_5(INIT[1535:1280]),
		    .INIT_6(INIT[1791:1536]),
		    .INIT_7(INIT[2047:1792]),
        .CLK_INV (PORT_A_CLK_POL != 1'b1)
    ) _TECHMAP_REPLACE_ (
        // Port A - Read/Write
        .CLK    (PORT_A_CLK),
        .A0  (PORT_A_ADDR[0]),
        .A1  (PORT_A_ADDR[1]),
        .A2  (PORT_A_ADDR[2]),
        .A3  (PORT_A_ADDR[3]),
        .A4  (PORT_A_ADDR[4]),
        .A5  (PORT_A_ADDR[5]),
        .A6  (PORT_A_ADDR[6]),
        .A7  (PORT_A_ADDR[7]),
        .D0   (PORT_A_WR_DATA[0]),
        .D1   (PORT_A_WR_DATA[1]),
        .D2   (PORT_A_WR_DATA[2]),
        .D3   (PORT_A_WR_DATA[3]),
        .D4   (PORT_A_WR_DATA[4]),
        .D5   (PORT_A_WR_DATA[5]),
        .D6   (PORT_A_WR_DATA[6]),
        .D7   (PORT_A_WR_DATA[7]),
        .WEN_N0    (!PORT_A_WR_BE[0]),
        .WEN_N1    (!PORT_A_WR_BE[1]),
        .WEN_N2    (!PORT_A_WR_BE[2]),
        .WEN_N3    (!PORT_A_WR_BE[3]),
        .WEN_N4    (!PORT_A_WR_BE[4]),
        .WEN_N5    (!PORT_A_WR_BE[5]),
        .WEN_N6    (!PORT_A_WR_BE[6]),
        .WEN_N7    (!PORT_A_WR_BE[7]),
        .GWEN_N    (!PORT_A_WR_EN),
        .CEN_N     (!PORT_A_CLK_EN),
        .Q0  (PORT_A_RD_DATA[0]),
        .Q1  (PORT_A_RD_DATA[1]),
        .Q2  (PORT_A_RD_DATA[2]),
        .Q3  (PORT_A_RD_DATA[3]),
        .Q4  (PORT_A_RD_DATA[4]),
        .Q5  (PORT_A_RD_DATA[5]),
        .Q6  (PORT_A_RD_DATA[6]),
        .Q7  (PORT_A_RD_DATA[7])
    );

endmodule
