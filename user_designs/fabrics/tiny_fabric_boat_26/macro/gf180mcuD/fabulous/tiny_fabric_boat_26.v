module tiny_fabric_boat_26
    #(
        parameter MaxFramesPerCol=20,
        parameter FrameBitsPerRow=32
    )
    (
        input  Tile_X1Y0_A_EXT_Q0, //EXTERNAL
        input  Tile_X1Y0_A_EXT_Q1, //EXTERNAL
        input  Tile_X1Y0_A_EXT_Q2, //EXTERNAL
        input  Tile_X1Y0_A_EXT_Q3, //EXTERNAL
        input  Tile_X1Y0_A_EXT_Q4, //EXTERNAL
        input  Tile_X1Y0_A_EXT_Q5, //EXTERNAL
        input  Tile_X1Y0_A_EXT_Q6, //EXTERNAL
        input  Tile_X1Y0_A_EXT_Q7, //EXTERNAL
        input  Tile_X1Y0_A_CONFIGURED_top, //EXTERNAL
        output  Tile_X1Y0_A_EXT_CLK, //EXTERNAL
        output  Tile_X1Y0_A_EXT_A0, //EXTERNAL
        output  Tile_X1Y0_A_EXT_A1, //EXTERNAL
        output  Tile_X1Y0_A_EXT_A2, //EXTERNAL
        output  Tile_X1Y0_A_EXT_A3, //EXTERNAL
        output  Tile_X1Y0_A_EXT_A4, //EXTERNAL
        output  Tile_X1Y0_A_EXT_A5, //EXTERNAL
        output  Tile_X1Y0_A_EXT_A6, //EXTERNAL
        output  Tile_X1Y0_A_EXT_A7, //EXTERNAL
        output  Tile_X1Y0_A_EXT_D0, //EXTERNAL
        output  Tile_X1Y0_A_EXT_D1, //EXTERNAL
        output  Tile_X1Y0_A_EXT_D2, //EXTERNAL
        output  Tile_X1Y0_A_EXT_D3, //EXTERNAL
        output  Tile_X1Y0_A_EXT_D4, //EXTERNAL
        output  Tile_X1Y0_A_EXT_D5, //EXTERNAL
        output  Tile_X1Y0_A_EXT_D6, //EXTERNAL
        output  Tile_X1Y0_A_EXT_D7, //EXTERNAL
        output  Tile_X1Y0_A_EXT_WEN_N0, //EXTERNAL
        output  Tile_X1Y0_A_EXT_WEN_N1, //EXTERNAL
        output  Tile_X1Y0_A_EXT_WEN_N2, //EXTERNAL
        output  Tile_X1Y0_A_EXT_WEN_N3, //EXTERNAL
        output  Tile_X1Y0_A_EXT_WEN_N4, //EXTERNAL
        output  Tile_X1Y0_A_EXT_WEN_N5, //EXTERNAL
        output  Tile_X1Y0_A_EXT_WEN_N6, //EXTERNAL
        output  Tile_X1Y0_A_EXT_WEN_N7, //EXTERNAL
        output  Tile_X1Y0_A_EXT_GWEN_N, //EXTERNAL
        output  Tile_X1Y0_A_EXT_CEN_N, //EXTERNAL
        input  Tile_X2Y0_A_EXT_Q0, //EXTERNAL
        input  Tile_X2Y0_A_EXT_Q1, //EXTERNAL
        input  Tile_X2Y0_A_EXT_Q2, //EXTERNAL
        input  Tile_X2Y0_A_EXT_Q3, //EXTERNAL
        input  Tile_X2Y0_A_EXT_Q4, //EXTERNAL
        input  Tile_X2Y0_A_EXT_Q5, //EXTERNAL
        input  Tile_X2Y0_A_EXT_Q6, //EXTERNAL
        input  Tile_X2Y0_A_EXT_Q7, //EXTERNAL
        input  Tile_X2Y0_A_CONFIGURED_top, //EXTERNAL
        output  Tile_X2Y0_A_EXT_CLK, //EXTERNAL
        output  Tile_X2Y0_A_EXT_A0, //EXTERNAL
        output  Tile_X2Y0_A_EXT_A1, //EXTERNAL
        output  Tile_X2Y0_A_EXT_A2, //EXTERNAL
        output  Tile_X2Y0_A_EXT_A3, //EXTERNAL
        output  Tile_X2Y0_A_EXT_A4, //EXTERNAL
        output  Tile_X2Y0_A_EXT_A5, //EXTERNAL
        output  Tile_X2Y0_A_EXT_A6, //EXTERNAL
        output  Tile_X2Y0_A_EXT_A7, //EXTERNAL
        output  Tile_X2Y0_A_EXT_D0, //EXTERNAL
        output  Tile_X2Y0_A_EXT_D1, //EXTERNAL
        output  Tile_X2Y0_A_EXT_D2, //EXTERNAL
        output  Tile_X2Y0_A_EXT_D3, //EXTERNAL
        output  Tile_X2Y0_A_EXT_D4, //EXTERNAL
        output  Tile_X2Y0_A_EXT_D5, //EXTERNAL
        output  Tile_X2Y0_A_EXT_D6, //EXTERNAL
        output  Tile_X2Y0_A_EXT_D7, //EXTERNAL
        output  Tile_X2Y0_A_EXT_WEN_N0, //EXTERNAL
        output  Tile_X2Y0_A_EXT_WEN_N1, //EXTERNAL
        output  Tile_X2Y0_A_EXT_WEN_N2, //EXTERNAL
        output  Tile_X2Y0_A_EXT_WEN_N3, //EXTERNAL
        output  Tile_X2Y0_A_EXT_WEN_N4, //EXTERNAL
        output  Tile_X2Y0_A_EXT_WEN_N5, //EXTERNAL
        output  Tile_X2Y0_A_EXT_WEN_N6, //EXTERNAL
        output  Tile_X2Y0_A_EXT_WEN_N7, //EXTERNAL
        output  Tile_X2Y0_A_EXT_GWEN_N, //EXTERNAL
        output  Tile_X2Y0_A_EXT_CEN_N, //EXTERNAL
        input  Tile_X3Y0_A_EXT_Q0, //EXTERNAL
        input  Tile_X3Y0_A_EXT_Q1, //EXTERNAL
        input  Tile_X3Y0_A_EXT_Q2, //EXTERNAL
        input  Tile_X3Y0_A_EXT_Q3, //EXTERNAL
        input  Tile_X3Y0_A_EXT_Q4, //EXTERNAL
        input  Tile_X3Y0_A_EXT_Q5, //EXTERNAL
        input  Tile_X3Y0_A_EXT_Q6, //EXTERNAL
        input  Tile_X3Y0_A_EXT_Q7, //EXTERNAL
        input  Tile_X3Y0_A_CONFIGURED_top, //EXTERNAL
        output  Tile_X3Y0_A_EXT_CLK, //EXTERNAL
        output  Tile_X3Y0_A_EXT_A0, //EXTERNAL
        output  Tile_X3Y0_A_EXT_A1, //EXTERNAL
        output  Tile_X3Y0_A_EXT_A2, //EXTERNAL
        output  Tile_X3Y0_A_EXT_A3, //EXTERNAL
        output  Tile_X3Y0_A_EXT_A4, //EXTERNAL
        output  Tile_X3Y0_A_EXT_A5, //EXTERNAL
        output  Tile_X3Y0_A_EXT_A6, //EXTERNAL
        output  Tile_X3Y0_A_EXT_A7, //EXTERNAL
        output  Tile_X3Y0_A_EXT_D0, //EXTERNAL
        output  Tile_X3Y0_A_EXT_D1, //EXTERNAL
        output  Tile_X3Y0_A_EXT_D2, //EXTERNAL
        output  Tile_X3Y0_A_EXT_D3, //EXTERNAL
        output  Tile_X3Y0_A_EXT_D4, //EXTERNAL
        output  Tile_X3Y0_A_EXT_D5, //EXTERNAL
        output  Tile_X3Y0_A_EXT_D6, //EXTERNAL
        output  Tile_X3Y0_A_EXT_D7, //EXTERNAL
        output  Tile_X3Y0_A_EXT_WEN_N0, //EXTERNAL
        output  Tile_X3Y0_A_EXT_WEN_N1, //EXTERNAL
        output  Tile_X3Y0_A_EXT_WEN_N2, //EXTERNAL
        output  Tile_X3Y0_A_EXT_WEN_N3, //EXTERNAL
        output  Tile_X3Y0_A_EXT_WEN_N4, //EXTERNAL
        output  Tile_X3Y0_A_EXT_WEN_N5, //EXTERNAL
        output  Tile_X3Y0_A_EXT_WEN_N6, //EXTERNAL
        output  Tile_X3Y0_A_EXT_WEN_N7, //EXTERNAL
        output  Tile_X3Y0_A_EXT_GWEN_N, //EXTERNAL
        output  Tile_X3Y0_A_EXT_CEN_N, //EXTERNAL
        input  Tile_X4Y0_A_EXT_Q0, //EXTERNAL
        input  Tile_X4Y0_A_EXT_Q1, //EXTERNAL
        input  Tile_X4Y0_A_EXT_Q2, //EXTERNAL
        input  Tile_X4Y0_A_EXT_Q3, //EXTERNAL
        input  Tile_X4Y0_A_EXT_Q4, //EXTERNAL
        input  Tile_X4Y0_A_EXT_Q5, //EXTERNAL
        input  Tile_X4Y0_A_EXT_Q6, //EXTERNAL
        input  Tile_X4Y0_A_EXT_Q7, //EXTERNAL
        input  Tile_X4Y0_A_CONFIGURED_top, //EXTERNAL
        output  Tile_X4Y0_A_EXT_CLK, //EXTERNAL
        output  Tile_X4Y0_A_EXT_A0, //EXTERNAL
        output  Tile_X4Y0_A_EXT_A1, //EXTERNAL
        output  Tile_X4Y0_A_EXT_A2, //EXTERNAL
        output  Tile_X4Y0_A_EXT_A3, //EXTERNAL
        output  Tile_X4Y0_A_EXT_A4, //EXTERNAL
        output  Tile_X4Y0_A_EXT_A5, //EXTERNAL
        output  Tile_X4Y0_A_EXT_A6, //EXTERNAL
        output  Tile_X4Y0_A_EXT_A7, //EXTERNAL
        output  Tile_X4Y0_A_EXT_D0, //EXTERNAL
        output  Tile_X4Y0_A_EXT_D1, //EXTERNAL
        output  Tile_X4Y0_A_EXT_D2, //EXTERNAL
        output  Tile_X4Y0_A_EXT_D3, //EXTERNAL
        output  Tile_X4Y0_A_EXT_D4, //EXTERNAL
        output  Tile_X4Y0_A_EXT_D5, //EXTERNAL
        output  Tile_X4Y0_A_EXT_D6, //EXTERNAL
        output  Tile_X4Y0_A_EXT_D7, //EXTERNAL
        output  Tile_X4Y0_A_EXT_WEN_N0, //EXTERNAL
        output  Tile_X4Y0_A_EXT_WEN_N1, //EXTERNAL
        output  Tile_X4Y0_A_EXT_WEN_N2, //EXTERNAL
        output  Tile_X4Y0_A_EXT_WEN_N3, //EXTERNAL
        output  Tile_X4Y0_A_EXT_WEN_N4, //EXTERNAL
        output  Tile_X4Y0_A_EXT_WEN_N5, //EXTERNAL
        output  Tile_X4Y0_A_EXT_WEN_N6, //EXTERNAL
        output  Tile_X4Y0_A_EXT_WEN_N7, //EXTERNAL
        output  Tile_X4Y0_A_EXT_GWEN_N, //EXTERNAL
        output  Tile_X4Y0_A_EXT_CEN_N, //EXTERNAL
        input  Tile_X0Y1_A_OUT_top, //EXTERNAL
        output  Tile_X0Y1_A_IN_top, //EXTERNAL
        output  Tile_X0Y1_A_EN_top, //EXTERNAL
        input  Tile_X0Y1_B_OUT_top, //EXTERNAL
        output  Tile_X0Y1_B_IN_top, //EXTERNAL
        output  Tile_X0Y1_B_EN_top, //EXTERNAL
        input  Tile_X0Y1_C_OUT_top, //EXTERNAL
        output  Tile_X0Y1_C_IN_top, //EXTERNAL
        output  Tile_X0Y1_C_EN_top, //EXTERNAL
        input  Tile_X0Y1_D_OUT_top, //EXTERNAL
        output  Tile_X0Y1_D_IN_top, //EXTERNAL
        output  Tile_X0Y1_D_EN_top, //EXTERNAL
        input  Tile_X5Y1_A_OUT_top, //EXTERNAL
        output  Tile_X5Y1_A_IN_top, //EXTERNAL
        output  Tile_X5Y1_A_EN_top, //EXTERNAL
        input  Tile_X5Y1_B_OUT_top, //EXTERNAL
        output  Tile_X5Y1_B_IN_top, //EXTERNAL
        output  Tile_X5Y1_B_EN_top, //EXTERNAL
        input  Tile_X5Y1_C_OUT_top, //EXTERNAL
        output  Tile_X5Y1_C_IN_top, //EXTERNAL
        output  Tile_X5Y1_C_EN_top, //EXTERNAL
        input  Tile_X5Y1_D_OUT_top, //EXTERNAL
        output  Tile_X5Y1_D_IN_top, //EXTERNAL
        output  Tile_X5Y1_D_EN_top, //EXTERNAL
        input  Tile_X0Y2_A_OUT_top, //EXTERNAL
        output  Tile_X0Y2_A_IN_top, //EXTERNAL
        output  Tile_X0Y2_A_EN_top, //EXTERNAL
        input  Tile_X0Y2_B_OUT_top, //EXTERNAL
        output  Tile_X0Y2_B_IN_top, //EXTERNAL
        output  Tile_X0Y2_B_EN_top, //EXTERNAL
        input  Tile_X0Y2_C_OUT_top, //EXTERNAL
        output  Tile_X0Y2_C_IN_top, //EXTERNAL
        output  Tile_X0Y2_C_EN_top, //EXTERNAL
        input  Tile_X0Y2_D_OUT_top, //EXTERNAL
        output  Tile_X0Y2_D_IN_top, //EXTERNAL
        output  Tile_X0Y2_D_EN_top, //EXTERNAL
        input  Tile_X5Y2_A_OUT_top, //EXTERNAL
        output  Tile_X5Y2_A_IN_top, //EXTERNAL
        output  Tile_X5Y2_A_EN_top, //EXTERNAL
        input  Tile_X5Y2_B_OUT_top, //EXTERNAL
        output  Tile_X5Y2_B_IN_top, //EXTERNAL
        output  Tile_X5Y2_B_EN_top, //EXTERNAL
        input  Tile_X5Y2_C_OUT_top, //EXTERNAL
        output  Tile_X5Y2_C_IN_top, //EXTERNAL
        output  Tile_X5Y2_C_EN_top, //EXTERNAL
        input  Tile_X5Y2_D_OUT_top, //EXTERNAL
        output  Tile_X5Y2_D_IN_top, //EXTERNAL
        output  Tile_X5Y2_D_EN_top, //EXTERNAL
        input  Tile_X0Y5_SYS_RESET_RESET_top, //EXTERNAL
        input  Tile_X1Y5_A_OUT_top, //EXTERNAL
        output  Tile_X1Y5_A_IN_top, //EXTERNAL
        output  Tile_X1Y5_A_EN_top, //EXTERNAL
        input  Tile_X1Y5_B_OUT_top, //EXTERNAL
        output  Tile_X1Y5_B_IN_top, //EXTERNAL
        output  Tile_X1Y5_B_EN_top, //EXTERNAL
        input  Tile_X2Y5_A_OUT_top, //EXTERNAL
        output  Tile_X2Y5_A_IN_top, //EXTERNAL
        output  Tile_X2Y5_A_EN_top, //EXTERNAL
        input  Tile_X2Y5_B_OUT_top, //EXTERNAL
        output  Tile_X2Y5_B_IN_top, //EXTERNAL
        output  Tile_X2Y5_B_EN_top, //EXTERNAL
        input  Tile_X2Y5_C_OUT_top, //EXTERNAL
        output  Tile_X2Y5_C_IN_top, //EXTERNAL
        output  Tile_X2Y5_C_EN_top, //EXTERNAL
        input  Tile_X2Y5_D_OUT_top, //EXTERNAL
        output  Tile_X2Y5_D_IN_top, //EXTERNAL
        output  Tile_X2Y5_D_EN_top, //EXTERNAL
        input  Tile_X3Y5_A_OUT_top, //EXTERNAL
        output  Tile_X3Y5_A_IN_top, //EXTERNAL
        output  Tile_X3Y5_A_EN_top, //EXTERNAL
        input  Tile_X3Y5_B_OUT_top, //EXTERNAL
        output  Tile_X3Y5_B_IN_top, //EXTERNAL
        output  Tile_X3Y5_B_EN_top, //EXTERNAL
        input  Tile_X3Y5_C_OUT_top, //EXTERNAL
        output  Tile_X3Y5_C_IN_top, //EXTERNAL
        output  Tile_X3Y5_C_EN_top, //EXTERNAL
        input  Tile_X3Y5_D_OUT_top, //EXTERNAL
        output  Tile_X3Y5_D_IN_top, //EXTERNAL
        output  Tile_X3Y5_D_EN_top, //EXTERNAL
        input  [(FrameBitsPerRow*6)-1:0] FrameData, //CONFIG_PORT
        input  [(MaxFramesPerCol*6)-1:0] FrameStrobe //CONFIG_PORT
);

 //signal declarations

 //configuration signal declarations

wire[FrameBitsPerRow -1:0] Row_Y0_FrameData;
wire[FrameBitsPerRow -1:0] Row_Y1_FrameData;
wire[FrameBitsPerRow -1:0] Row_Y2_FrameData;
wire[FrameBitsPerRow -1:0] Row_Y3_FrameData;
wire[FrameBitsPerRow -1:0] Row_Y4_FrameData;
wire[FrameBitsPerRow -1:0] Row_Y5_FrameData;
wire[MaxFramesPerCol - 1:0] Column_X0_FrameStrobe;
wire[MaxFramesPerCol - 1:0] Column_X1_FrameStrobe;
wire[MaxFramesPerCol - 1:0] Column_X2_FrameStrobe;
wire[MaxFramesPerCol - 1:0] Column_X3_FrameStrobe;
wire[MaxFramesPerCol - 1:0] Column_X4_FrameStrobe;
wire[MaxFramesPerCol - 1:0] Column_X5_FrameStrobe;
wire[FrameBitsPerRow - 1:0] Tile_X0Y0_FrameData_O;
wire[FrameBitsPerRow - 1:0] Tile_X1Y0_FrameData_O;
wire[FrameBitsPerRow - 1:0] Tile_X2Y0_FrameData_O;
wire[FrameBitsPerRow - 1:0] Tile_X3Y0_FrameData_O;
wire[FrameBitsPerRow - 1:0] Tile_X4Y0_FrameData_O;
wire[FrameBitsPerRow - 1:0] Tile_X5Y0_FrameData_O;
wire[FrameBitsPerRow - 1:0] Tile_X0Y1_FrameData_O;
wire[FrameBitsPerRow - 1:0] Tile_X1Y1_FrameData_O;
wire[FrameBitsPerRow - 1:0] Tile_X2Y1_FrameData_O;
wire[FrameBitsPerRow - 1:0] Tile_X3Y1_FrameData_O;
wire[FrameBitsPerRow - 1:0] Tile_X4Y1_FrameData_O;
wire[FrameBitsPerRow - 1:0] Tile_X5Y1_FrameData_O;
wire[FrameBitsPerRow - 1:0] Tile_X0Y2_FrameData_O;
wire[FrameBitsPerRow - 1:0] Tile_X1Y2_FrameData_O;
wire[FrameBitsPerRow - 1:0] Tile_X2Y2_FrameData_O;
wire[FrameBitsPerRow - 1:0] Tile_X3Y2_FrameData_O;
wire[FrameBitsPerRow - 1:0] Tile_X4Y2_FrameData_O;
wire[FrameBitsPerRow - 1:0] Tile_X5Y2_FrameData_O;
wire[FrameBitsPerRow - 1:0] Tile_X0Y3_FrameData_O;
wire[FrameBitsPerRow - 1:0] Tile_X1Y3_FrameData_O;
wire[FrameBitsPerRow - 1:0] Tile_X2Y3_FrameData_O;
wire[FrameBitsPerRow - 1:0] Tile_X3Y3_FrameData_O;
wire[FrameBitsPerRow - 1:0] Tile_X4Y3_FrameData_O;
wire[FrameBitsPerRow - 1:0] Tile_X5Y3_FrameData_O;
wire[FrameBitsPerRow - 1:0] Tile_X0Y4_FrameData_O;
wire[FrameBitsPerRow - 1:0] Tile_X1Y4_FrameData_O;
wire[FrameBitsPerRow - 1:0] Tile_X2Y4_FrameData_O;
wire[FrameBitsPerRow - 1:0] Tile_X3Y4_FrameData_O;
wire[FrameBitsPerRow - 1:0] Tile_X4Y4_FrameData_O;
wire[FrameBitsPerRow - 1:0] Tile_X5Y4_FrameData_O;
wire[FrameBitsPerRow - 1:0] Tile_X0Y5_FrameData_O;
wire[FrameBitsPerRow - 1:0] Tile_X1Y5_FrameData_O;
wire[FrameBitsPerRow - 1:0] Tile_X2Y5_FrameData_O;
wire[FrameBitsPerRow - 1:0] Tile_X3Y5_FrameData_O;
wire[FrameBitsPerRow - 1:0] Tile_X4Y5_FrameData_O;
wire[FrameBitsPerRow - 1:0] Tile_X5Y5_FrameData_O;
wire[MaxFramesPerCol - 1:0] Tile_X0Y0_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X1Y0_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X2Y0_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X3Y0_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X4Y0_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X5Y0_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X0Y1_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X1Y1_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X2Y1_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X3Y1_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X4Y1_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X5Y1_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X0Y2_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X1Y2_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X2Y2_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X3Y2_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X4Y2_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X5Y2_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X0Y3_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X1Y3_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X2Y3_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X3Y3_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X4Y3_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X5Y3_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X0Y4_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X1Y4_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X2Y4_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X3Y4_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X4Y4_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X5Y4_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X0Y5_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X1Y5_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X2Y5_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X3Y5_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X4Y5_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X5Y5_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X0Y6_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X1Y6_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X2Y6_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X3Y6_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X4Y6_FrameStrobe_O;
wire[MaxFramesPerCol - 1:0] Tile_X5Y6_FrameStrobe_O;
 //tile-to-tile signal declarations
wire[3:0] Tile_X0Y0_S_GBUF_FEED_BEG;
wire[7:0] Tile_X1Y0_S1BEG;
wire[7:0] Tile_X1Y0_S2BEG;
wire[7:0] Tile_X1Y0_S2BEGb;
wire[7:0] Tile_X2Y0_S1BEG;
wire[7:0] Tile_X2Y0_S2BEG;
wire[7:0] Tile_X2Y0_S2BEGb;
wire[7:0] Tile_X3Y0_S1BEG;
wire[7:0] Tile_X3Y0_S2BEG;
wire[7:0] Tile_X3Y0_S2BEGb;
wire[7:0] Tile_X4Y0_S1BEG;
wire[7:0] Tile_X4Y0_S2BEG;
wire[7:0] Tile_X4Y0_S2BEGb;
wire[3:0] Tile_X0Y1_S_GBUF_FEED_BEG;
wire[3:0] Tile_X0Y1_N_GBUF_BEG;
wire[7:0] Tile_X0Y1_E1BEG;
wire[7:0] Tile_X0Y1_E2BEG;
wire[7:0] Tile_X0Y1_E2BEGb;
wire[3:0] Tile_X1Y1_N_GBUF_BEG;
wire[7:0] Tile_X1Y1_N1BEG;
wire[7:0] Tile_X1Y1_N2BEG;
wire[7:0] Tile_X1Y1_N2BEGb;
wire[7:0] Tile_X1Y1_E1BEG;
wire[7:0] Tile_X1Y1_E2BEG;
wire[7:0] Tile_X1Y1_E2BEGb;
wire[7:0] Tile_X1Y1_S1BEG;
wire[7:0] Tile_X1Y1_S2BEG;
wire[7:0] Tile_X1Y1_S2BEGb;
wire[7:0] Tile_X1Y1_W1BEG;
wire[7:0] Tile_X1Y1_W2BEG;
wire[7:0] Tile_X1Y1_W2BEGb;
wire[0:0] Tile_X1Y1_Co;
wire[3:0] Tile_X2Y1_N_GBUF_BEG;
wire[7:0] Tile_X2Y1_N1BEG;
wire[7:0] Tile_X2Y1_N2BEG;
wire[7:0] Tile_X2Y1_N2BEGb;
wire[7:0] Tile_X2Y1_E1BEG;
wire[7:0] Tile_X2Y1_E2BEG;
wire[7:0] Tile_X2Y1_E2BEGb;
wire[7:0] Tile_X2Y1_S1BEG;
wire[7:0] Tile_X2Y1_S2BEG;
wire[7:0] Tile_X2Y1_S2BEGb;
wire[7:0] Tile_X2Y1_W1BEG;
wire[7:0] Tile_X2Y1_W2BEG;
wire[7:0] Tile_X2Y1_W2BEGb;
wire[0:0] Tile_X2Y1_Co;
wire[3:0] Tile_X3Y1_N_GBUF_BEG;
wire[7:0] Tile_X3Y1_N1BEG;
wire[7:0] Tile_X3Y1_N2BEG;
wire[7:0] Tile_X3Y1_N2BEGb;
wire[7:0] Tile_X3Y1_E1BEG;
wire[7:0] Tile_X3Y1_E2BEG;
wire[7:0] Tile_X3Y1_E2BEGb;
wire[7:0] Tile_X3Y1_S1BEG;
wire[7:0] Tile_X3Y1_S2BEG;
wire[7:0] Tile_X3Y1_S2BEGb;
wire[7:0] Tile_X3Y1_W1BEG;
wire[7:0] Tile_X3Y1_W2BEG;
wire[7:0] Tile_X3Y1_W2BEGb;
wire[0:0] Tile_X3Y1_Co;
wire[3:0] Tile_X4Y1_N_GBUF_BEG;
wire[7:0] Tile_X4Y1_N1BEG;
wire[7:0] Tile_X4Y1_N2BEG;
wire[7:0] Tile_X4Y1_N2BEGb;
wire[7:0] Tile_X4Y1_E1BEG;
wire[7:0] Tile_X4Y1_E2BEG;
wire[7:0] Tile_X4Y1_E2BEGb;
wire[7:0] Tile_X4Y1_S1BEG;
wire[7:0] Tile_X4Y1_S2BEG;
wire[7:0] Tile_X4Y1_S2BEGb;
wire[7:0] Tile_X4Y1_W1BEG;
wire[7:0] Tile_X4Y1_W2BEG;
wire[7:0] Tile_X4Y1_W2BEGb;
wire[0:0] Tile_X4Y1_Co;
wire[3:0] Tile_X5Y1_N_GBUF_BEG;
wire[7:0] Tile_X5Y1_W1BEG;
wire[7:0] Tile_X5Y1_W2BEG;
wire[7:0] Tile_X5Y1_W2BEGb;
wire[3:0] Tile_X0Y2_S_GBUF_FEED_BEG;
wire[3:0] Tile_X0Y2_N_GBUF_BEG;
wire[7:0] Tile_X0Y2_E1BEG;
wire[7:0] Tile_X0Y2_E2BEG;
wire[7:0] Tile_X0Y2_E2BEGb;
wire[3:0] Tile_X1Y2_N_GBUF_BEG;
wire[7:0] Tile_X1Y2_N1BEG;
wire[7:0] Tile_X1Y2_N2BEG;
wire[7:0] Tile_X1Y2_N2BEGb;
wire[7:0] Tile_X1Y2_E1BEG;
wire[7:0] Tile_X1Y2_E2BEG;
wire[7:0] Tile_X1Y2_E2BEGb;
wire[7:0] Tile_X1Y2_S1BEG;
wire[7:0] Tile_X1Y2_S2BEG;
wire[7:0] Tile_X1Y2_S2BEGb;
wire[7:0] Tile_X1Y2_W1BEG;
wire[7:0] Tile_X1Y2_W2BEG;
wire[7:0] Tile_X1Y2_W2BEGb;
wire[0:0] Tile_X1Y2_Co;
wire[3:0] Tile_X2Y2_N_GBUF_BEG;
wire[7:0] Tile_X2Y2_N1BEG;
wire[7:0] Tile_X2Y2_N2BEG;
wire[7:0] Tile_X2Y2_N2BEGb;
wire[7:0] Tile_X2Y2_E1BEG;
wire[7:0] Tile_X2Y2_E2BEG;
wire[7:0] Tile_X2Y2_E2BEGb;
wire[7:0] Tile_X2Y2_S1BEG;
wire[7:0] Tile_X2Y2_S2BEG;
wire[7:0] Tile_X2Y2_S2BEGb;
wire[7:0] Tile_X2Y2_W1BEG;
wire[7:0] Tile_X2Y2_W2BEG;
wire[7:0] Tile_X2Y2_W2BEGb;
wire[0:0] Tile_X2Y2_Co;
wire[3:0] Tile_X3Y2_N_GBUF_BEG;
wire[7:0] Tile_X3Y2_N1BEG;
wire[7:0] Tile_X3Y2_N2BEG;
wire[7:0] Tile_X3Y2_N2BEGb;
wire[7:0] Tile_X3Y2_E1BEG;
wire[7:0] Tile_X3Y2_E2BEG;
wire[7:0] Tile_X3Y2_E2BEGb;
wire[7:0] Tile_X3Y2_S1BEG;
wire[7:0] Tile_X3Y2_S2BEG;
wire[7:0] Tile_X3Y2_S2BEGb;
wire[7:0] Tile_X3Y2_W1BEG;
wire[7:0] Tile_X3Y2_W2BEG;
wire[7:0] Tile_X3Y2_W2BEGb;
wire[0:0] Tile_X3Y2_Co;
wire[3:0] Tile_X4Y2_N_GBUF_BEG;
wire[7:0] Tile_X4Y2_N1BEG;
wire[7:0] Tile_X4Y2_N2BEG;
wire[7:0] Tile_X4Y2_N2BEGb;
wire[7:0] Tile_X4Y2_E1BEG;
wire[7:0] Tile_X4Y2_E2BEG;
wire[7:0] Tile_X4Y2_E2BEGb;
wire[7:0] Tile_X4Y2_S1BEG;
wire[7:0] Tile_X4Y2_S2BEG;
wire[7:0] Tile_X4Y2_S2BEGb;
wire[7:0] Tile_X4Y2_W1BEG;
wire[7:0] Tile_X4Y2_W2BEG;
wire[7:0] Tile_X4Y2_W2BEGb;
wire[0:0] Tile_X4Y2_Co;
wire[3:0] Tile_X5Y2_N_GBUF_BEG;
wire[7:0] Tile_X5Y2_W1BEG;
wire[7:0] Tile_X5Y2_W2BEG;
wire[7:0] Tile_X5Y2_W2BEGb;
wire[3:0] Tile_X0Y3_S_GBUF_FEED_BEG;
wire[3:0] Tile_X0Y3_N_GBUF_BEG;
wire[7:0] Tile_X0Y3_E1BEG;
wire[7:0] Tile_X0Y3_E2BEG;
wire[7:0] Tile_X0Y3_E2BEGb;
wire[3:0] Tile_X1Y3_N_GBUF_BEG;
wire[7:0] Tile_X1Y3_N1BEG;
wire[7:0] Tile_X1Y3_N2BEG;
wire[7:0] Tile_X1Y3_N2BEGb;
wire[7:0] Tile_X1Y3_E1BEG;
wire[7:0] Tile_X1Y3_E2BEG;
wire[7:0] Tile_X1Y3_E2BEGb;
wire[7:0] Tile_X1Y3_S1BEG;
wire[7:0] Tile_X1Y3_S2BEG;
wire[7:0] Tile_X1Y3_S2BEGb;
wire[7:0] Tile_X1Y3_W1BEG;
wire[7:0] Tile_X1Y3_W2BEG;
wire[7:0] Tile_X1Y3_W2BEGb;
wire[0:0] Tile_X1Y3_Co;
wire[3:0] Tile_X2Y3_N_GBUF_BEG;
wire[7:0] Tile_X2Y3_N1BEG;
wire[7:0] Tile_X2Y3_N2BEG;
wire[7:0] Tile_X2Y3_N2BEGb;
wire[7:0] Tile_X2Y3_E1BEG;
wire[7:0] Tile_X2Y3_E2BEG;
wire[7:0] Tile_X2Y3_E2BEGb;
wire[7:0] Tile_X2Y3_S1BEG;
wire[7:0] Tile_X2Y3_S2BEG;
wire[7:0] Tile_X2Y3_S2BEGb;
wire[7:0] Tile_X2Y3_W1BEG;
wire[7:0] Tile_X2Y3_W2BEG;
wire[7:0] Tile_X2Y3_W2BEGb;
wire[0:0] Tile_X2Y3_Co;
wire[3:0] Tile_X3Y3_N_GBUF_BEG;
wire[7:0] Tile_X3Y3_N1BEG;
wire[7:0] Tile_X3Y3_N2BEG;
wire[7:0] Tile_X3Y3_N2BEGb;
wire[7:0] Tile_X3Y3_E1BEG;
wire[7:0] Tile_X3Y3_E2BEG;
wire[7:0] Tile_X3Y3_E2BEGb;
wire[7:0] Tile_X3Y3_S1BEG;
wire[7:0] Tile_X3Y3_S2BEG;
wire[7:0] Tile_X3Y3_S2BEGb;
wire[7:0] Tile_X3Y3_W1BEG;
wire[7:0] Tile_X3Y3_W2BEG;
wire[7:0] Tile_X3Y3_W2BEGb;
wire[0:0] Tile_X3Y3_Co;
wire[3:0] Tile_X4Y3_N_GBUF_BEG;
wire[7:0] Tile_X4Y3_N1BEG;
wire[7:0] Tile_X4Y3_N2BEG;
wire[7:0] Tile_X4Y3_N2BEGb;
wire[7:0] Tile_X4Y3_E1BEG;
wire[7:0] Tile_X4Y3_E2BEG;
wire[7:0] Tile_X4Y3_E2BEGb;
wire[7:0] Tile_X4Y3_S1BEG;
wire[7:0] Tile_X4Y3_S2BEG;
wire[7:0] Tile_X4Y3_S2BEGb;
wire[7:0] Tile_X4Y3_W1BEG;
wire[7:0] Tile_X4Y3_W2BEG;
wire[7:0] Tile_X4Y3_W2BEGb;
wire[0:0] Tile_X4Y3_Co;
wire[3:0] Tile_X5Y3_N_GBUF_BEG;
wire[7:0] Tile_X5Y3_W1BEG;
wire[7:0] Tile_X5Y3_W2BEG;
wire[7:0] Tile_X5Y3_W2BEGb;
wire[3:0] Tile_X0Y4_S_GBUF_FEED_BEG;
wire[3:0] Tile_X0Y4_N_GBUF_BEG;
wire[7:0] Tile_X0Y4_E1BEG;
wire[7:0] Tile_X0Y4_E2BEG;
wire[7:0] Tile_X0Y4_E2BEGb;
wire[3:0] Tile_X1Y4_N_GBUF_BEG;
wire[7:0] Tile_X1Y4_N1BEG;
wire[7:0] Tile_X1Y4_N2BEG;
wire[7:0] Tile_X1Y4_N2BEGb;
wire[7:0] Tile_X1Y4_E1BEG;
wire[7:0] Tile_X1Y4_E2BEG;
wire[7:0] Tile_X1Y4_E2BEGb;
wire[7:0] Tile_X1Y4_S1BEG;
wire[7:0] Tile_X1Y4_S2BEG;
wire[7:0] Tile_X1Y4_S2BEGb;
wire[7:0] Tile_X1Y4_W1BEG;
wire[7:0] Tile_X1Y4_W2BEG;
wire[7:0] Tile_X1Y4_W2BEGb;
wire[0:0] Tile_X1Y4_Co;
wire[3:0] Tile_X2Y4_N_GBUF_BEG;
wire[7:0] Tile_X2Y4_N1BEG;
wire[7:0] Tile_X2Y4_N2BEG;
wire[7:0] Tile_X2Y4_N2BEGb;
wire[7:0] Tile_X2Y4_E1BEG;
wire[7:0] Tile_X2Y4_E2BEG;
wire[7:0] Tile_X2Y4_E2BEGb;
wire[7:0] Tile_X2Y4_S1BEG;
wire[7:0] Tile_X2Y4_S2BEG;
wire[7:0] Tile_X2Y4_S2BEGb;
wire[7:0] Tile_X2Y4_W1BEG;
wire[7:0] Tile_X2Y4_W2BEG;
wire[7:0] Tile_X2Y4_W2BEGb;
wire[0:0] Tile_X2Y4_Co;
wire[3:0] Tile_X3Y4_N_GBUF_BEG;
wire[7:0] Tile_X3Y4_N1BEG;
wire[7:0] Tile_X3Y4_N2BEG;
wire[7:0] Tile_X3Y4_N2BEGb;
wire[7:0] Tile_X3Y4_E1BEG;
wire[7:0] Tile_X3Y4_E2BEG;
wire[7:0] Tile_X3Y4_E2BEGb;
wire[7:0] Tile_X3Y4_S1BEG;
wire[7:0] Tile_X3Y4_S2BEG;
wire[7:0] Tile_X3Y4_S2BEGb;
wire[7:0] Tile_X3Y4_W1BEG;
wire[7:0] Tile_X3Y4_W2BEG;
wire[7:0] Tile_X3Y4_W2BEGb;
wire[0:0] Tile_X3Y4_Co;
wire[3:0] Tile_X4Y4_N_GBUF_BEG;
wire[7:0] Tile_X4Y4_N1BEG;
wire[7:0] Tile_X4Y4_N2BEG;
wire[7:0] Tile_X4Y4_N2BEGb;
wire[7:0] Tile_X4Y4_E1BEG;
wire[7:0] Tile_X4Y4_E2BEG;
wire[7:0] Tile_X4Y4_E2BEGb;
wire[7:0] Tile_X4Y4_S1BEG;
wire[7:0] Tile_X4Y4_S2BEG;
wire[7:0] Tile_X4Y4_S2BEGb;
wire[7:0] Tile_X4Y4_W1BEG;
wire[7:0] Tile_X4Y4_W2BEG;
wire[7:0] Tile_X4Y4_W2BEGb;
wire[0:0] Tile_X4Y4_Co;
wire[3:0] Tile_X5Y4_N_GBUF_BEG;
wire[7:0] Tile_X5Y4_W1BEG;
wire[7:0] Tile_X5Y4_W2BEG;
wire[7:0] Tile_X5Y4_W2BEGb;
wire[3:0] Tile_X0Y5_N_GBUF_BEG;
wire[3:0] Tile_X0Y5_E_GBUF_BEG;
wire[3:0] Tile_X1Y5_W_GBUF_FEED_BEG;
wire[3:0] Tile_X1Y5_N_GBUF_BEG;
wire[3:0] Tile_X1Y5_E_GBUF_BEG;
wire[7:0] Tile_X1Y5_N1BEG;
wire[7:0] Tile_X1Y5_N2BEG;
wire[7:0] Tile_X1Y5_N2BEGb;
wire[0:0] Tile_X1Y5_Co;
wire[3:0] Tile_X2Y5_W_GBUF_FEED_BEG;
wire[3:0] Tile_X2Y5_N_GBUF_BEG;
wire[3:0] Tile_X2Y5_E_GBUF_BEG;
wire[7:0] Tile_X2Y5_N1BEG;
wire[7:0] Tile_X2Y5_N2BEG;
wire[7:0] Tile_X2Y5_N2BEGb;
wire[0:0] Tile_X2Y5_Co;
wire[3:0] Tile_X3Y5_W_GBUF_FEED_BEG;
wire[3:0] Tile_X3Y5_N_GBUF_BEG;
wire[3:0] Tile_X3Y5_E_GBUF_BEG;
wire[7:0] Tile_X3Y5_N1BEG;
wire[7:0] Tile_X3Y5_N2BEG;
wire[7:0] Tile_X3Y5_N2BEGb;
wire[0:0] Tile_X3Y5_Co;
wire[3:0] Tile_X4Y5_W_GBUF_FEED_BEG;
wire[3:0] Tile_X4Y5_N_GBUF_BEG;
wire[3:0] Tile_X4Y5_E_GBUF_BEG;
wire[7:0] Tile_X4Y5_N1BEG;
wire[7:0] Tile_X4Y5_N2BEG;
wire[7:0] Tile_X4Y5_N2BEGb;
wire[0:0] Tile_X4Y5_Co;
wire[3:0] Tile_X5Y5_W_GBUF_FEED_BEG;
wire[3:0] Tile_X5Y5_N_GBUF_BEG;

assign Row_Y0_FrameData = FrameData[FrameBitsPerRow*(0+1)-1:FrameBitsPerRow*0];
assign Row_Y1_FrameData = FrameData[FrameBitsPerRow*(1+1)-1:FrameBitsPerRow*1];
assign Row_Y2_FrameData = FrameData[FrameBitsPerRow*(2+1)-1:FrameBitsPerRow*2];
assign Row_Y3_FrameData = FrameData[FrameBitsPerRow*(3+1)-1:FrameBitsPerRow*3];
assign Row_Y4_FrameData = FrameData[FrameBitsPerRow*(4+1)-1:FrameBitsPerRow*4];
assign Row_Y5_FrameData = FrameData[FrameBitsPerRow*(5+1)-1:FrameBitsPerRow*5];
assign Column_X0_FrameStrobe = FrameStrobe[MaxFramesPerCol*(0+1)-1:MaxFramesPerCol*0];
assign Column_X1_FrameStrobe = FrameStrobe[MaxFramesPerCol*(1+1)-1:MaxFramesPerCol*1];
assign Column_X2_FrameStrobe = FrameStrobe[MaxFramesPerCol*(2+1)-1:MaxFramesPerCol*2];
assign Column_X3_FrameStrobe = FrameStrobe[MaxFramesPerCol*(3+1)-1:MaxFramesPerCol*3];
assign Column_X4_FrameStrobe = FrameStrobe[MaxFramesPerCol*(4+1)-1:MaxFramesPerCol*4];
assign Column_X5_FrameStrobe = FrameStrobe[MaxFramesPerCol*(5+1)-1:MaxFramesPerCol*5];

 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) NW_term
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X0Y0_Emulate_Bitstream)
    )
`endif
    Tile_X0Y0_NW_term
    (
    .N_GBUF_END(Tile_X0Y1_N_GBUF_BEG),
    .S_GBUF_FEED_BEG(Tile_X0Y0_S_GBUF_FEED_BEG),
    .FrameData(Row_Y0_FrameData),
    .FrameData_O(Tile_X0Y0_FrameData_O),
    .FrameStrobe(Tile_X0Y1_FrameStrobe_O),
    .FrameStrobe_O(Tile_X0Y0_FrameStrobe_O)
);


 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) N_SRAM
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X1Y0_Emulate_Bitstream)
    )
`endif
    Tile_X1Y0_N_SRAM
    (
    .N_GBUF_END(Tile_X1Y1_N_GBUF_BEG),
    .N1END(Tile_X1Y1_N1BEG),
    .N2MID(Tile_X1Y1_N2BEG),
    .N2END(Tile_X1Y1_N2BEGb),
    .Ci(Tile_X1Y1_Co),
    .S1BEG(Tile_X1Y0_S1BEG),
    .S2BEG(Tile_X1Y0_S2BEG),
    .S2BEGb(Tile_X1Y0_S2BEGb),
    .A_EXT_Q0(Tile_X1Y0_A_EXT_Q0),
    .A_EXT_Q1(Tile_X1Y0_A_EXT_Q1),
    .A_EXT_Q2(Tile_X1Y0_A_EXT_Q2),
    .A_EXT_Q3(Tile_X1Y0_A_EXT_Q3),
    .A_EXT_Q4(Tile_X1Y0_A_EXT_Q4),
    .A_EXT_Q5(Tile_X1Y0_A_EXT_Q5),
    .A_EXT_Q6(Tile_X1Y0_A_EXT_Q6),
    .A_EXT_Q7(Tile_X1Y0_A_EXT_Q7),
    .A_CONFIGURED_top(Tile_X1Y0_A_CONFIGURED_top),
    .A_EXT_CLK(Tile_X1Y0_A_EXT_CLK),
    .A_EXT_A0(Tile_X1Y0_A_EXT_A0),
    .A_EXT_A1(Tile_X1Y0_A_EXT_A1),
    .A_EXT_A2(Tile_X1Y0_A_EXT_A2),
    .A_EXT_A3(Tile_X1Y0_A_EXT_A3),
    .A_EXT_A4(Tile_X1Y0_A_EXT_A4),
    .A_EXT_A5(Tile_X1Y0_A_EXT_A5),
    .A_EXT_A6(Tile_X1Y0_A_EXT_A6),
    .A_EXT_A7(Tile_X1Y0_A_EXT_A7),
    .A_EXT_D0(Tile_X1Y0_A_EXT_D0),
    .A_EXT_D1(Tile_X1Y0_A_EXT_D1),
    .A_EXT_D2(Tile_X1Y0_A_EXT_D2),
    .A_EXT_D3(Tile_X1Y0_A_EXT_D3),
    .A_EXT_D4(Tile_X1Y0_A_EXT_D4),
    .A_EXT_D5(Tile_X1Y0_A_EXT_D5),
    .A_EXT_D6(Tile_X1Y0_A_EXT_D6),
    .A_EXT_D7(Tile_X1Y0_A_EXT_D7),
    .A_EXT_WEN_N0(Tile_X1Y0_A_EXT_WEN_N0),
    .A_EXT_WEN_N1(Tile_X1Y0_A_EXT_WEN_N1),
    .A_EXT_WEN_N2(Tile_X1Y0_A_EXT_WEN_N2),
    .A_EXT_WEN_N3(Tile_X1Y0_A_EXT_WEN_N3),
    .A_EXT_WEN_N4(Tile_X1Y0_A_EXT_WEN_N4),
    .A_EXT_WEN_N5(Tile_X1Y0_A_EXT_WEN_N5),
    .A_EXT_WEN_N6(Tile_X1Y0_A_EXT_WEN_N6),
    .A_EXT_WEN_N7(Tile_X1Y0_A_EXT_WEN_N7),
    .A_EXT_GWEN_N(Tile_X1Y0_A_EXT_GWEN_N),
    .A_EXT_CEN_N(Tile_X1Y0_A_EXT_CEN_N),
    .FrameData(Tile_X0Y0_FrameData_O),
    .FrameData_O(Tile_X1Y0_FrameData_O),
    .FrameStrobe(Tile_X1Y1_FrameStrobe_O),
    .FrameStrobe_O(Tile_X1Y0_FrameStrobe_O)
);


 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) N_SRAM
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X2Y0_Emulate_Bitstream)
    )
`endif
    Tile_X2Y0_N_SRAM
    (
    .N_GBUF_END(Tile_X2Y1_N_GBUF_BEG),
    .N1END(Tile_X2Y1_N1BEG),
    .N2MID(Tile_X2Y1_N2BEG),
    .N2END(Tile_X2Y1_N2BEGb),
    .Ci(Tile_X2Y1_Co),
    .S1BEG(Tile_X2Y0_S1BEG),
    .S2BEG(Tile_X2Y0_S2BEG),
    .S2BEGb(Tile_X2Y0_S2BEGb),
    .A_EXT_Q0(Tile_X2Y0_A_EXT_Q0),
    .A_EXT_Q1(Tile_X2Y0_A_EXT_Q1),
    .A_EXT_Q2(Tile_X2Y0_A_EXT_Q2),
    .A_EXT_Q3(Tile_X2Y0_A_EXT_Q3),
    .A_EXT_Q4(Tile_X2Y0_A_EXT_Q4),
    .A_EXT_Q5(Tile_X2Y0_A_EXT_Q5),
    .A_EXT_Q6(Tile_X2Y0_A_EXT_Q6),
    .A_EXT_Q7(Tile_X2Y0_A_EXT_Q7),
    .A_CONFIGURED_top(Tile_X2Y0_A_CONFIGURED_top),
    .A_EXT_CLK(Tile_X2Y0_A_EXT_CLK),
    .A_EXT_A0(Tile_X2Y0_A_EXT_A0),
    .A_EXT_A1(Tile_X2Y0_A_EXT_A1),
    .A_EXT_A2(Tile_X2Y0_A_EXT_A2),
    .A_EXT_A3(Tile_X2Y0_A_EXT_A3),
    .A_EXT_A4(Tile_X2Y0_A_EXT_A4),
    .A_EXT_A5(Tile_X2Y0_A_EXT_A5),
    .A_EXT_A6(Tile_X2Y0_A_EXT_A6),
    .A_EXT_A7(Tile_X2Y0_A_EXT_A7),
    .A_EXT_D0(Tile_X2Y0_A_EXT_D0),
    .A_EXT_D1(Tile_X2Y0_A_EXT_D1),
    .A_EXT_D2(Tile_X2Y0_A_EXT_D2),
    .A_EXT_D3(Tile_X2Y0_A_EXT_D3),
    .A_EXT_D4(Tile_X2Y0_A_EXT_D4),
    .A_EXT_D5(Tile_X2Y0_A_EXT_D5),
    .A_EXT_D6(Tile_X2Y0_A_EXT_D6),
    .A_EXT_D7(Tile_X2Y0_A_EXT_D7),
    .A_EXT_WEN_N0(Tile_X2Y0_A_EXT_WEN_N0),
    .A_EXT_WEN_N1(Tile_X2Y0_A_EXT_WEN_N1),
    .A_EXT_WEN_N2(Tile_X2Y0_A_EXT_WEN_N2),
    .A_EXT_WEN_N3(Tile_X2Y0_A_EXT_WEN_N3),
    .A_EXT_WEN_N4(Tile_X2Y0_A_EXT_WEN_N4),
    .A_EXT_WEN_N5(Tile_X2Y0_A_EXT_WEN_N5),
    .A_EXT_WEN_N6(Tile_X2Y0_A_EXT_WEN_N6),
    .A_EXT_WEN_N7(Tile_X2Y0_A_EXT_WEN_N7),
    .A_EXT_GWEN_N(Tile_X2Y0_A_EXT_GWEN_N),
    .A_EXT_CEN_N(Tile_X2Y0_A_EXT_CEN_N),
    .FrameData(Tile_X1Y0_FrameData_O),
    .FrameData_O(Tile_X2Y0_FrameData_O),
    .FrameStrobe(Tile_X2Y1_FrameStrobe_O),
    .FrameStrobe_O(Tile_X2Y0_FrameStrobe_O)
);


 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) N_SRAM
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X3Y0_Emulate_Bitstream)
    )
`endif
    Tile_X3Y0_N_SRAM
    (
    .N_GBUF_END(Tile_X3Y1_N_GBUF_BEG),
    .N1END(Tile_X3Y1_N1BEG),
    .N2MID(Tile_X3Y1_N2BEG),
    .N2END(Tile_X3Y1_N2BEGb),
    .Ci(Tile_X3Y1_Co),
    .S1BEG(Tile_X3Y0_S1BEG),
    .S2BEG(Tile_X3Y0_S2BEG),
    .S2BEGb(Tile_X3Y0_S2BEGb),
    .A_EXT_Q0(Tile_X3Y0_A_EXT_Q0),
    .A_EXT_Q1(Tile_X3Y0_A_EXT_Q1),
    .A_EXT_Q2(Tile_X3Y0_A_EXT_Q2),
    .A_EXT_Q3(Tile_X3Y0_A_EXT_Q3),
    .A_EXT_Q4(Tile_X3Y0_A_EXT_Q4),
    .A_EXT_Q5(Tile_X3Y0_A_EXT_Q5),
    .A_EXT_Q6(Tile_X3Y0_A_EXT_Q6),
    .A_EXT_Q7(Tile_X3Y0_A_EXT_Q7),
    .A_CONFIGURED_top(Tile_X3Y0_A_CONFIGURED_top),
    .A_EXT_CLK(Tile_X3Y0_A_EXT_CLK),
    .A_EXT_A0(Tile_X3Y0_A_EXT_A0),
    .A_EXT_A1(Tile_X3Y0_A_EXT_A1),
    .A_EXT_A2(Tile_X3Y0_A_EXT_A2),
    .A_EXT_A3(Tile_X3Y0_A_EXT_A3),
    .A_EXT_A4(Tile_X3Y0_A_EXT_A4),
    .A_EXT_A5(Tile_X3Y0_A_EXT_A5),
    .A_EXT_A6(Tile_X3Y0_A_EXT_A6),
    .A_EXT_A7(Tile_X3Y0_A_EXT_A7),
    .A_EXT_D0(Tile_X3Y0_A_EXT_D0),
    .A_EXT_D1(Tile_X3Y0_A_EXT_D1),
    .A_EXT_D2(Tile_X3Y0_A_EXT_D2),
    .A_EXT_D3(Tile_X3Y0_A_EXT_D3),
    .A_EXT_D4(Tile_X3Y0_A_EXT_D4),
    .A_EXT_D5(Tile_X3Y0_A_EXT_D5),
    .A_EXT_D6(Tile_X3Y0_A_EXT_D6),
    .A_EXT_D7(Tile_X3Y0_A_EXT_D7),
    .A_EXT_WEN_N0(Tile_X3Y0_A_EXT_WEN_N0),
    .A_EXT_WEN_N1(Tile_X3Y0_A_EXT_WEN_N1),
    .A_EXT_WEN_N2(Tile_X3Y0_A_EXT_WEN_N2),
    .A_EXT_WEN_N3(Tile_X3Y0_A_EXT_WEN_N3),
    .A_EXT_WEN_N4(Tile_X3Y0_A_EXT_WEN_N4),
    .A_EXT_WEN_N5(Tile_X3Y0_A_EXT_WEN_N5),
    .A_EXT_WEN_N6(Tile_X3Y0_A_EXT_WEN_N6),
    .A_EXT_WEN_N7(Tile_X3Y0_A_EXT_WEN_N7),
    .A_EXT_GWEN_N(Tile_X3Y0_A_EXT_GWEN_N),
    .A_EXT_CEN_N(Tile_X3Y0_A_EXT_CEN_N),
    .FrameData(Tile_X2Y0_FrameData_O),
    .FrameData_O(Tile_X3Y0_FrameData_O),
    .FrameStrobe(Tile_X3Y1_FrameStrobe_O),
    .FrameStrobe_O(Tile_X3Y0_FrameStrobe_O)
);


 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) N_SRAM
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X4Y0_Emulate_Bitstream)
    )
`endif
    Tile_X4Y0_N_SRAM
    (
    .N_GBUF_END(Tile_X4Y1_N_GBUF_BEG),
    .N1END(Tile_X4Y1_N1BEG),
    .N2MID(Tile_X4Y1_N2BEG),
    .N2END(Tile_X4Y1_N2BEGb),
    .Ci(Tile_X4Y1_Co),
    .S1BEG(Tile_X4Y0_S1BEG),
    .S2BEG(Tile_X4Y0_S2BEG),
    .S2BEGb(Tile_X4Y0_S2BEGb),
    .A_EXT_Q0(Tile_X4Y0_A_EXT_Q0),
    .A_EXT_Q1(Tile_X4Y0_A_EXT_Q1),
    .A_EXT_Q2(Tile_X4Y0_A_EXT_Q2),
    .A_EXT_Q3(Tile_X4Y0_A_EXT_Q3),
    .A_EXT_Q4(Tile_X4Y0_A_EXT_Q4),
    .A_EXT_Q5(Tile_X4Y0_A_EXT_Q5),
    .A_EXT_Q6(Tile_X4Y0_A_EXT_Q6),
    .A_EXT_Q7(Tile_X4Y0_A_EXT_Q7),
    .A_CONFIGURED_top(Tile_X4Y0_A_CONFIGURED_top),
    .A_EXT_CLK(Tile_X4Y0_A_EXT_CLK),
    .A_EXT_A0(Tile_X4Y0_A_EXT_A0),
    .A_EXT_A1(Tile_X4Y0_A_EXT_A1),
    .A_EXT_A2(Tile_X4Y0_A_EXT_A2),
    .A_EXT_A3(Tile_X4Y0_A_EXT_A3),
    .A_EXT_A4(Tile_X4Y0_A_EXT_A4),
    .A_EXT_A5(Tile_X4Y0_A_EXT_A5),
    .A_EXT_A6(Tile_X4Y0_A_EXT_A6),
    .A_EXT_A7(Tile_X4Y0_A_EXT_A7),
    .A_EXT_D0(Tile_X4Y0_A_EXT_D0),
    .A_EXT_D1(Tile_X4Y0_A_EXT_D1),
    .A_EXT_D2(Tile_X4Y0_A_EXT_D2),
    .A_EXT_D3(Tile_X4Y0_A_EXT_D3),
    .A_EXT_D4(Tile_X4Y0_A_EXT_D4),
    .A_EXT_D5(Tile_X4Y0_A_EXT_D5),
    .A_EXT_D6(Tile_X4Y0_A_EXT_D6),
    .A_EXT_D7(Tile_X4Y0_A_EXT_D7),
    .A_EXT_WEN_N0(Tile_X4Y0_A_EXT_WEN_N0),
    .A_EXT_WEN_N1(Tile_X4Y0_A_EXT_WEN_N1),
    .A_EXT_WEN_N2(Tile_X4Y0_A_EXT_WEN_N2),
    .A_EXT_WEN_N3(Tile_X4Y0_A_EXT_WEN_N3),
    .A_EXT_WEN_N4(Tile_X4Y0_A_EXT_WEN_N4),
    .A_EXT_WEN_N5(Tile_X4Y0_A_EXT_WEN_N5),
    .A_EXT_WEN_N6(Tile_X4Y0_A_EXT_WEN_N6),
    .A_EXT_WEN_N7(Tile_X4Y0_A_EXT_WEN_N7),
    .A_EXT_GWEN_N(Tile_X4Y0_A_EXT_GWEN_N),
    .A_EXT_CEN_N(Tile_X4Y0_A_EXT_CEN_N),
    .FrameData(Tile_X3Y0_FrameData_O),
    .FrameData_O(Tile_X4Y0_FrameData_O),
    .FrameStrobe(Tile_X4Y1_FrameStrobe_O),
    .FrameStrobe_O(Tile_X4Y0_FrameStrobe_O)
);


 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) NE_term
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X5Y0_Emulate_Bitstream)
    )
`endif
    Tile_X5Y0_NE_term
    (
    .N_GBUF_END(Tile_X5Y1_N_GBUF_BEG),
    .FrameData(Tile_X4Y0_FrameData_O),
    .FrameData_O(Tile_X5Y0_FrameData_O),
    .FrameStrobe(Tile_X5Y1_FrameStrobe_O),
    .FrameStrobe_O(Tile_X5Y0_FrameStrobe_O)
);


 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) W_IO4
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X0Y1_Emulate_Bitstream)
    )
`endif
    Tile_X0Y1_W_IO4
    (
    .N_GBUF_END(Tile_X0Y2_N_GBUF_BEG),
    .S_GBUF_FEED_END(Tile_X0Y0_S_GBUF_FEED_BEG),
    .W1END(Tile_X1Y1_W1BEG),
    .W2MID(Tile_X1Y1_W2BEG),
    .W2END(Tile_X1Y1_W2BEGb),
    .S_GBUF_FEED_BEG(Tile_X0Y1_S_GBUF_FEED_BEG),
    .N_GBUF_BEG(Tile_X0Y1_N_GBUF_BEG),
    .E1BEG(Tile_X0Y1_E1BEG),
    .E2BEG(Tile_X0Y1_E2BEG),
    .E2BEGb(Tile_X0Y1_E2BEGb),
    .A_OUT_top(Tile_X0Y1_A_OUT_top),
    .A_IN_top(Tile_X0Y1_A_IN_top),
    .A_EN_top(Tile_X0Y1_A_EN_top),
    .B_OUT_top(Tile_X0Y1_B_OUT_top),
    .B_IN_top(Tile_X0Y1_B_IN_top),
    .B_EN_top(Tile_X0Y1_B_EN_top),
    .C_OUT_top(Tile_X0Y1_C_OUT_top),
    .C_IN_top(Tile_X0Y1_C_IN_top),
    .C_EN_top(Tile_X0Y1_C_EN_top),
    .D_OUT_top(Tile_X0Y1_D_OUT_top),
    .D_IN_top(Tile_X0Y1_D_IN_top),
    .D_EN_top(Tile_X0Y1_D_EN_top),
    .FrameData(Row_Y1_FrameData),
    .FrameData_O(Tile_X0Y1_FrameData_O),
    .FrameStrobe(Tile_X0Y2_FrameStrobe_O),
    .FrameStrobe_O(Tile_X0Y1_FrameStrobe_O)
);


 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) LUT4x8_ha
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X1Y1_Emulate_Bitstream)
    )
`endif
    Tile_X1Y1_LUT4x8_ha
    (
    .N_GBUF_END(Tile_X1Y2_N_GBUF_BEG),
    .N1END(Tile_X1Y2_N1BEG),
    .N2MID(Tile_X1Y2_N2BEG),
    .N2END(Tile_X1Y2_N2BEGb),
    .Ci(Tile_X1Y2_Co),
    .E1END(Tile_X0Y1_E1BEG),
    .E2MID(Tile_X0Y1_E2BEG),
    .E2END(Tile_X0Y1_E2BEGb),
    .S1END(Tile_X1Y0_S1BEG),
    .S2MID(Tile_X1Y0_S2BEG),
    .S2END(Tile_X1Y0_S2BEGb),
    .W1END(Tile_X2Y1_W1BEG),
    .W2MID(Tile_X2Y1_W2BEG),
    .W2END(Tile_X2Y1_W2BEGb),
    .N_GBUF_BEG(Tile_X1Y1_N_GBUF_BEG),
    .N1BEG(Tile_X1Y1_N1BEG),
    .N2BEG(Tile_X1Y1_N2BEG),
    .N2BEGb(Tile_X1Y1_N2BEGb),
    .E1BEG(Tile_X1Y1_E1BEG),
    .E2BEG(Tile_X1Y1_E2BEG),
    .E2BEGb(Tile_X1Y1_E2BEGb),
    .S1BEG(Tile_X1Y1_S1BEG),
    .S2BEG(Tile_X1Y1_S2BEG),
    .S2BEGb(Tile_X1Y1_S2BEGb),
    .W1BEG(Tile_X1Y1_W1BEG),
    .W2BEG(Tile_X1Y1_W2BEG),
    .W2BEGb(Tile_X1Y1_W2BEGb),
    .Co(Tile_X1Y1_Co),
    .FrameData(Tile_X0Y1_FrameData_O),
    .FrameData_O(Tile_X1Y1_FrameData_O),
    .FrameStrobe(Tile_X1Y2_FrameStrobe_O),
    .FrameStrobe_O(Tile_X1Y1_FrameStrobe_O)
);


 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) LUT4x8_ha
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X2Y1_Emulate_Bitstream)
    )
`endif
    Tile_X2Y1_LUT4x8_ha
    (
    .N_GBUF_END(Tile_X2Y2_N_GBUF_BEG),
    .N1END(Tile_X2Y2_N1BEG),
    .N2MID(Tile_X2Y2_N2BEG),
    .N2END(Tile_X2Y2_N2BEGb),
    .Ci(Tile_X2Y2_Co),
    .E1END(Tile_X1Y1_E1BEG),
    .E2MID(Tile_X1Y1_E2BEG),
    .E2END(Tile_X1Y1_E2BEGb),
    .S1END(Tile_X2Y0_S1BEG),
    .S2MID(Tile_X2Y0_S2BEG),
    .S2END(Tile_X2Y0_S2BEGb),
    .W1END(Tile_X3Y1_W1BEG),
    .W2MID(Tile_X3Y1_W2BEG),
    .W2END(Tile_X3Y1_W2BEGb),
    .N_GBUF_BEG(Tile_X2Y1_N_GBUF_BEG),
    .N1BEG(Tile_X2Y1_N1BEG),
    .N2BEG(Tile_X2Y1_N2BEG),
    .N2BEGb(Tile_X2Y1_N2BEGb),
    .E1BEG(Tile_X2Y1_E1BEG),
    .E2BEG(Tile_X2Y1_E2BEG),
    .E2BEGb(Tile_X2Y1_E2BEGb),
    .S1BEG(Tile_X2Y1_S1BEG),
    .S2BEG(Tile_X2Y1_S2BEG),
    .S2BEGb(Tile_X2Y1_S2BEGb),
    .W1BEG(Tile_X2Y1_W1BEG),
    .W2BEG(Tile_X2Y1_W2BEG),
    .W2BEGb(Tile_X2Y1_W2BEGb),
    .Co(Tile_X2Y1_Co),
    .FrameData(Tile_X1Y1_FrameData_O),
    .FrameData_O(Tile_X2Y1_FrameData_O),
    .FrameStrobe(Tile_X2Y2_FrameStrobe_O),
    .FrameStrobe_O(Tile_X2Y1_FrameStrobe_O)
);


 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) LUT4x8_ha
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X3Y1_Emulate_Bitstream)
    )
`endif
    Tile_X3Y1_LUT4x8_ha
    (
    .N_GBUF_END(Tile_X3Y2_N_GBUF_BEG),
    .N1END(Tile_X3Y2_N1BEG),
    .N2MID(Tile_X3Y2_N2BEG),
    .N2END(Tile_X3Y2_N2BEGb),
    .Ci(Tile_X3Y2_Co),
    .E1END(Tile_X2Y1_E1BEG),
    .E2MID(Tile_X2Y1_E2BEG),
    .E2END(Tile_X2Y1_E2BEGb),
    .S1END(Tile_X3Y0_S1BEG),
    .S2MID(Tile_X3Y0_S2BEG),
    .S2END(Tile_X3Y0_S2BEGb),
    .W1END(Tile_X4Y1_W1BEG),
    .W2MID(Tile_X4Y1_W2BEG),
    .W2END(Tile_X4Y1_W2BEGb),
    .N_GBUF_BEG(Tile_X3Y1_N_GBUF_BEG),
    .N1BEG(Tile_X3Y1_N1BEG),
    .N2BEG(Tile_X3Y1_N2BEG),
    .N2BEGb(Tile_X3Y1_N2BEGb),
    .E1BEG(Tile_X3Y1_E1BEG),
    .E2BEG(Tile_X3Y1_E2BEG),
    .E2BEGb(Tile_X3Y1_E2BEGb),
    .S1BEG(Tile_X3Y1_S1BEG),
    .S2BEG(Tile_X3Y1_S2BEG),
    .S2BEGb(Tile_X3Y1_S2BEGb),
    .W1BEG(Tile_X3Y1_W1BEG),
    .W2BEG(Tile_X3Y1_W2BEG),
    .W2BEGb(Tile_X3Y1_W2BEGb),
    .Co(Tile_X3Y1_Co),
    .FrameData(Tile_X2Y1_FrameData_O),
    .FrameData_O(Tile_X3Y1_FrameData_O),
    .FrameStrobe(Tile_X3Y2_FrameStrobe_O),
    .FrameStrobe_O(Tile_X3Y1_FrameStrobe_O)
);


 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) LUT4x8_ha
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X4Y1_Emulate_Bitstream)
    )
`endif
    Tile_X4Y1_LUT4x8_ha
    (
    .N_GBUF_END(Tile_X4Y2_N_GBUF_BEG),
    .N1END(Tile_X4Y2_N1BEG),
    .N2MID(Tile_X4Y2_N2BEG),
    .N2END(Tile_X4Y2_N2BEGb),
    .Ci(Tile_X4Y2_Co),
    .E1END(Tile_X3Y1_E1BEG),
    .E2MID(Tile_X3Y1_E2BEG),
    .E2END(Tile_X3Y1_E2BEGb),
    .S1END(Tile_X4Y0_S1BEG),
    .S2MID(Tile_X4Y0_S2BEG),
    .S2END(Tile_X4Y0_S2BEGb),
    .W1END(Tile_X5Y1_W1BEG),
    .W2MID(Tile_X5Y1_W2BEG),
    .W2END(Tile_X5Y1_W2BEGb),
    .N_GBUF_BEG(Tile_X4Y1_N_GBUF_BEG),
    .N1BEG(Tile_X4Y1_N1BEG),
    .N2BEG(Tile_X4Y1_N2BEG),
    .N2BEGb(Tile_X4Y1_N2BEGb),
    .E1BEG(Tile_X4Y1_E1BEG),
    .E2BEG(Tile_X4Y1_E2BEG),
    .E2BEGb(Tile_X4Y1_E2BEGb),
    .S1BEG(Tile_X4Y1_S1BEG),
    .S2BEG(Tile_X4Y1_S2BEG),
    .S2BEGb(Tile_X4Y1_S2BEGb),
    .W1BEG(Tile_X4Y1_W1BEG),
    .W2BEG(Tile_X4Y1_W2BEG),
    .W2BEGb(Tile_X4Y1_W2BEGb),
    .Co(Tile_X4Y1_Co),
    .FrameData(Tile_X3Y1_FrameData_O),
    .FrameData_O(Tile_X4Y1_FrameData_O),
    .FrameStrobe(Tile_X4Y2_FrameStrobe_O),
    .FrameStrobe_O(Tile_X4Y1_FrameStrobe_O)
);


 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) E_IO4
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X5Y1_Emulate_Bitstream)
    )
`endif
    Tile_X5Y1_E_IO4
    (
    .N_GBUF_END(Tile_X5Y2_N_GBUF_BEG),
    .E1END(Tile_X4Y1_E1BEG),
    .E2MID(Tile_X4Y1_E2BEG),
    .E2END(Tile_X4Y1_E2BEGb),
    .N_GBUF_BEG(Tile_X5Y1_N_GBUF_BEG),
    .W1BEG(Tile_X5Y1_W1BEG),
    .W2BEG(Tile_X5Y1_W2BEG),
    .W2BEGb(Tile_X5Y1_W2BEGb),
    .A_OUT_top(Tile_X5Y1_A_OUT_top),
    .A_IN_top(Tile_X5Y1_A_IN_top),
    .A_EN_top(Tile_X5Y1_A_EN_top),
    .B_OUT_top(Tile_X5Y1_B_OUT_top),
    .B_IN_top(Tile_X5Y1_B_IN_top),
    .B_EN_top(Tile_X5Y1_B_EN_top),
    .C_OUT_top(Tile_X5Y1_C_OUT_top),
    .C_IN_top(Tile_X5Y1_C_IN_top),
    .C_EN_top(Tile_X5Y1_C_EN_top),
    .D_OUT_top(Tile_X5Y1_D_OUT_top),
    .D_IN_top(Tile_X5Y1_D_IN_top),
    .D_EN_top(Tile_X5Y1_D_EN_top),
    .FrameData(Tile_X4Y1_FrameData_O),
    .FrameData_O(Tile_X5Y1_FrameData_O),
    .FrameStrobe(Tile_X5Y2_FrameStrobe_O),
    .FrameStrobe_O(Tile_X5Y1_FrameStrobe_O)
);


 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) W_IO4
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X0Y2_Emulate_Bitstream)
    )
`endif
    Tile_X0Y2_W_IO4
    (
    .N_GBUF_END(Tile_X0Y3_N_GBUF_BEG),
    .S_GBUF_FEED_END(Tile_X0Y1_S_GBUF_FEED_BEG),
    .W1END(Tile_X1Y2_W1BEG),
    .W2MID(Tile_X1Y2_W2BEG),
    .W2END(Tile_X1Y2_W2BEGb),
    .S_GBUF_FEED_BEG(Tile_X0Y2_S_GBUF_FEED_BEG),
    .N_GBUF_BEG(Tile_X0Y2_N_GBUF_BEG),
    .E1BEG(Tile_X0Y2_E1BEG),
    .E2BEG(Tile_X0Y2_E2BEG),
    .E2BEGb(Tile_X0Y2_E2BEGb),
    .A_OUT_top(Tile_X0Y2_A_OUT_top),
    .A_IN_top(Tile_X0Y2_A_IN_top),
    .A_EN_top(Tile_X0Y2_A_EN_top),
    .B_OUT_top(Tile_X0Y2_B_OUT_top),
    .B_IN_top(Tile_X0Y2_B_IN_top),
    .B_EN_top(Tile_X0Y2_B_EN_top),
    .C_OUT_top(Tile_X0Y2_C_OUT_top),
    .C_IN_top(Tile_X0Y2_C_IN_top),
    .C_EN_top(Tile_X0Y2_C_EN_top),
    .D_OUT_top(Tile_X0Y2_D_OUT_top),
    .D_IN_top(Tile_X0Y2_D_IN_top),
    .D_EN_top(Tile_X0Y2_D_EN_top),
    .FrameData(Row_Y2_FrameData),
    .FrameData_O(Tile_X0Y2_FrameData_O),
    .FrameStrobe(Tile_X0Y3_FrameStrobe_O),
    .FrameStrobe_O(Tile_X0Y2_FrameStrobe_O)
);


 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) LUT4x8_ha
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X1Y2_Emulate_Bitstream)
    )
`endif
    Tile_X1Y2_LUT4x8_ha
    (
    .N_GBUF_END(Tile_X1Y3_N_GBUF_BEG),
    .N1END(Tile_X1Y3_N1BEG),
    .N2MID(Tile_X1Y3_N2BEG),
    .N2END(Tile_X1Y3_N2BEGb),
    .Ci(Tile_X1Y3_Co),
    .E1END(Tile_X0Y2_E1BEG),
    .E2MID(Tile_X0Y2_E2BEG),
    .E2END(Tile_X0Y2_E2BEGb),
    .S1END(Tile_X1Y1_S1BEG),
    .S2MID(Tile_X1Y1_S2BEG),
    .S2END(Tile_X1Y1_S2BEGb),
    .W1END(Tile_X2Y2_W1BEG),
    .W2MID(Tile_X2Y2_W2BEG),
    .W2END(Tile_X2Y2_W2BEGb),
    .N_GBUF_BEG(Tile_X1Y2_N_GBUF_BEG),
    .N1BEG(Tile_X1Y2_N1BEG),
    .N2BEG(Tile_X1Y2_N2BEG),
    .N2BEGb(Tile_X1Y2_N2BEGb),
    .E1BEG(Tile_X1Y2_E1BEG),
    .E2BEG(Tile_X1Y2_E2BEG),
    .E2BEGb(Tile_X1Y2_E2BEGb),
    .S1BEG(Tile_X1Y2_S1BEG),
    .S2BEG(Tile_X1Y2_S2BEG),
    .S2BEGb(Tile_X1Y2_S2BEGb),
    .W1BEG(Tile_X1Y2_W1BEG),
    .W2BEG(Tile_X1Y2_W2BEG),
    .W2BEGb(Tile_X1Y2_W2BEGb),
    .Co(Tile_X1Y2_Co),
    .FrameData(Tile_X0Y2_FrameData_O),
    .FrameData_O(Tile_X1Y2_FrameData_O),
    .FrameStrobe(Tile_X1Y3_FrameStrobe_O),
    .FrameStrobe_O(Tile_X1Y2_FrameStrobe_O)
);


 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) LUT4x8_ha
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X2Y2_Emulate_Bitstream)
    )
`endif
    Tile_X2Y2_LUT4x8_ha
    (
    .N_GBUF_END(Tile_X2Y3_N_GBUF_BEG),
    .N1END(Tile_X2Y3_N1BEG),
    .N2MID(Tile_X2Y3_N2BEG),
    .N2END(Tile_X2Y3_N2BEGb),
    .Ci(Tile_X2Y3_Co),
    .E1END(Tile_X1Y2_E1BEG),
    .E2MID(Tile_X1Y2_E2BEG),
    .E2END(Tile_X1Y2_E2BEGb),
    .S1END(Tile_X2Y1_S1BEG),
    .S2MID(Tile_X2Y1_S2BEG),
    .S2END(Tile_X2Y1_S2BEGb),
    .W1END(Tile_X3Y2_W1BEG),
    .W2MID(Tile_X3Y2_W2BEG),
    .W2END(Tile_X3Y2_W2BEGb),
    .N_GBUF_BEG(Tile_X2Y2_N_GBUF_BEG),
    .N1BEG(Tile_X2Y2_N1BEG),
    .N2BEG(Tile_X2Y2_N2BEG),
    .N2BEGb(Tile_X2Y2_N2BEGb),
    .E1BEG(Tile_X2Y2_E1BEG),
    .E2BEG(Tile_X2Y2_E2BEG),
    .E2BEGb(Tile_X2Y2_E2BEGb),
    .S1BEG(Tile_X2Y2_S1BEG),
    .S2BEG(Tile_X2Y2_S2BEG),
    .S2BEGb(Tile_X2Y2_S2BEGb),
    .W1BEG(Tile_X2Y2_W1BEG),
    .W2BEG(Tile_X2Y2_W2BEG),
    .W2BEGb(Tile_X2Y2_W2BEGb),
    .Co(Tile_X2Y2_Co),
    .FrameData(Tile_X1Y2_FrameData_O),
    .FrameData_O(Tile_X2Y2_FrameData_O),
    .FrameStrobe(Tile_X2Y3_FrameStrobe_O),
    .FrameStrobe_O(Tile_X2Y2_FrameStrobe_O)
);


 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) LUT4x8_ha
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X3Y2_Emulate_Bitstream)
    )
`endif
    Tile_X3Y2_LUT4x8_ha
    (
    .N_GBUF_END(Tile_X3Y3_N_GBUF_BEG),
    .N1END(Tile_X3Y3_N1BEG),
    .N2MID(Tile_X3Y3_N2BEG),
    .N2END(Tile_X3Y3_N2BEGb),
    .Ci(Tile_X3Y3_Co),
    .E1END(Tile_X2Y2_E1BEG),
    .E2MID(Tile_X2Y2_E2BEG),
    .E2END(Tile_X2Y2_E2BEGb),
    .S1END(Tile_X3Y1_S1BEG),
    .S2MID(Tile_X3Y1_S2BEG),
    .S2END(Tile_X3Y1_S2BEGb),
    .W1END(Tile_X4Y2_W1BEG),
    .W2MID(Tile_X4Y2_W2BEG),
    .W2END(Tile_X4Y2_W2BEGb),
    .N_GBUF_BEG(Tile_X3Y2_N_GBUF_BEG),
    .N1BEG(Tile_X3Y2_N1BEG),
    .N2BEG(Tile_X3Y2_N2BEG),
    .N2BEGb(Tile_X3Y2_N2BEGb),
    .E1BEG(Tile_X3Y2_E1BEG),
    .E2BEG(Tile_X3Y2_E2BEG),
    .E2BEGb(Tile_X3Y2_E2BEGb),
    .S1BEG(Tile_X3Y2_S1BEG),
    .S2BEG(Tile_X3Y2_S2BEG),
    .S2BEGb(Tile_X3Y2_S2BEGb),
    .W1BEG(Tile_X3Y2_W1BEG),
    .W2BEG(Tile_X3Y2_W2BEG),
    .W2BEGb(Tile_X3Y2_W2BEGb),
    .Co(Tile_X3Y2_Co),
    .FrameData(Tile_X2Y2_FrameData_O),
    .FrameData_O(Tile_X3Y2_FrameData_O),
    .FrameStrobe(Tile_X3Y3_FrameStrobe_O),
    .FrameStrobe_O(Tile_X3Y2_FrameStrobe_O)
);


 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) LUT4x8_ha
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X4Y2_Emulate_Bitstream)
    )
`endif
    Tile_X4Y2_LUT4x8_ha
    (
    .N_GBUF_END(Tile_X4Y3_N_GBUF_BEG),
    .N1END(Tile_X4Y3_N1BEG),
    .N2MID(Tile_X4Y3_N2BEG),
    .N2END(Tile_X4Y3_N2BEGb),
    .Ci(Tile_X4Y3_Co),
    .E1END(Tile_X3Y2_E1BEG),
    .E2MID(Tile_X3Y2_E2BEG),
    .E2END(Tile_X3Y2_E2BEGb),
    .S1END(Tile_X4Y1_S1BEG),
    .S2MID(Tile_X4Y1_S2BEG),
    .S2END(Tile_X4Y1_S2BEGb),
    .W1END(Tile_X5Y2_W1BEG),
    .W2MID(Tile_X5Y2_W2BEG),
    .W2END(Tile_X5Y2_W2BEGb),
    .N_GBUF_BEG(Tile_X4Y2_N_GBUF_BEG),
    .N1BEG(Tile_X4Y2_N1BEG),
    .N2BEG(Tile_X4Y2_N2BEG),
    .N2BEGb(Tile_X4Y2_N2BEGb),
    .E1BEG(Tile_X4Y2_E1BEG),
    .E2BEG(Tile_X4Y2_E2BEG),
    .E2BEGb(Tile_X4Y2_E2BEGb),
    .S1BEG(Tile_X4Y2_S1BEG),
    .S2BEG(Tile_X4Y2_S2BEG),
    .S2BEGb(Tile_X4Y2_S2BEGb),
    .W1BEG(Tile_X4Y2_W1BEG),
    .W2BEG(Tile_X4Y2_W2BEG),
    .W2BEGb(Tile_X4Y2_W2BEGb),
    .Co(Tile_X4Y2_Co),
    .FrameData(Tile_X3Y2_FrameData_O),
    .FrameData_O(Tile_X4Y2_FrameData_O),
    .FrameStrobe(Tile_X4Y3_FrameStrobe_O),
    .FrameStrobe_O(Tile_X4Y2_FrameStrobe_O)
);


 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) E_IO4
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X5Y2_Emulate_Bitstream)
    )
`endif
    Tile_X5Y2_E_IO4
    (
    .N_GBUF_END(Tile_X5Y3_N_GBUF_BEG),
    .E1END(Tile_X4Y2_E1BEG),
    .E2MID(Tile_X4Y2_E2BEG),
    .E2END(Tile_X4Y2_E2BEGb),
    .N_GBUF_BEG(Tile_X5Y2_N_GBUF_BEG),
    .W1BEG(Tile_X5Y2_W1BEG),
    .W2BEG(Tile_X5Y2_W2BEG),
    .W2BEGb(Tile_X5Y2_W2BEGb),
    .A_OUT_top(Tile_X5Y2_A_OUT_top),
    .A_IN_top(Tile_X5Y2_A_IN_top),
    .A_EN_top(Tile_X5Y2_A_EN_top),
    .B_OUT_top(Tile_X5Y2_B_OUT_top),
    .B_IN_top(Tile_X5Y2_B_IN_top),
    .B_EN_top(Tile_X5Y2_B_EN_top),
    .C_OUT_top(Tile_X5Y2_C_OUT_top),
    .C_IN_top(Tile_X5Y2_C_IN_top),
    .C_EN_top(Tile_X5Y2_C_EN_top),
    .D_OUT_top(Tile_X5Y2_D_OUT_top),
    .D_IN_top(Tile_X5Y2_D_IN_top),
    .D_EN_top(Tile_X5Y2_D_EN_top),
    .FrameData(Tile_X4Y2_FrameData_O),
    .FrameData_O(Tile_X5Y2_FrameData_O),
    .FrameStrobe(Tile_X5Y3_FrameStrobe_O),
    .FrameStrobe_O(Tile_X5Y2_FrameStrobe_O)
);


 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) W_term
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X0Y3_Emulate_Bitstream)
    )
`endif
    Tile_X0Y3_W_term
    (
    .N_GBUF_END(Tile_X0Y4_N_GBUF_BEG),
    .S_GBUF_FEED_END(Tile_X0Y2_S_GBUF_FEED_BEG),
    .W1END(Tile_X1Y3_W1BEG),
    .W2MID(Tile_X1Y3_W2BEG),
    .W2END(Tile_X1Y3_W2BEGb),
    .S_GBUF_FEED_BEG(Tile_X0Y3_S_GBUF_FEED_BEG),
    .N_GBUF_BEG(Tile_X0Y3_N_GBUF_BEG),
    .E1BEG(Tile_X0Y3_E1BEG),
    .E2BEG(Tile_X0Y3_E2BEG),
    .E2BEGb(Tile_X0Y3_E2BEGb),
    .FrameData(Row_Y3_FrameData),
    .FrameData_O(Tile_X0Y3_FrameData_O),
    .FrameStrobe(Tile_X0Y4_FrameStrobe_O),
    .FrameStrobe_O(Tile_X0Y3_FrameStrobe_O)
);


 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) LUT4x8_ha
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X1Y3_Emulate_Bitstream)
    )
`endif
    Tile_X1Y3_LUT4x8_ha
    (
    .N_GBUF_END(Tile_X1Y4_N_GBUF_BEG),
    .N1END(Tile_X1Y4_N1BEG),
    .N2MID(Tile_X1Y4_N2BEG),
    .N2END(Tile_X1Y4_N2BEGb),
    .Ci(Tile_X1Y4_Co),
    .E1END(Tile_X0Y3_E1BEG),
    .E2MID(Tile_X0Y3_E2BEG),
    .E2END(Tile_X0Y3_E2BEGb),
    .S1END(Tile_X1Y2_S1BEG),
    .S2MID(Tile_X1Y2_S2BEG),
    .S2END(Tile_X1Y2_S2BEGb),
    .W1END(Tile_X2Y3_W1BEG),
    .W2MID(Tile_X2Y3_W2BEG),
    .W2END(Tile_X2Y3_W2BEGb),
    .N_GBUF_BEG(Tile_X1Y3_N_GBUF_BEG),
    .N1BEG(Tile_X1Y3_N1BEG),
    .N2BEG(Tile_X1Y3_N2BEG),
    .N2BEGb(Tile_X1Y3_N2BEGb),
    .E1BEG(Tile_X1Y3_E1BEG),
    .E2BEG(Tile_X1Y3_E2BEG),
    .E2BEGb(Tile_X1Y3_E2BEGb),
    .S1BEG(Tile_X1Y3_S1BEG),
    .S2BEG(Tile_X1Y3_S2BEG),
    .S2BEGb(Tile_X1Y3_S2BEGb),
    .W1BEG(Tile_X1Y3_W1BEG),
    .W2BEG(Tile_X1Y3_W2BEG),
    .W2BEGb(Tile_X1Y3_W2BEGb),
    .Co(Tile_X1Y3_Co),
    .FrameData(Tile_X0Y3_FrameData_O),
    .FrameData_O(Tile_X1Y3_FrameData_O),
    .FrameStrobe(Tile_X1Y4_FrameStrobe_O),
    .FrameStrobe_O(Tile_X1Y3_FrameStrobe_O)
);


 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) LUT4x8_ha
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X2Y3_Emulate_Bitstream)
    )
`endif
    Tile_X2Y3_LUT4x8_ha
    (
    .N_GBUF_END(Tile_X2Y4_N_GBUF_BEG),
    .N1END(Tile_X2Y4_N1BEG),
    .N2MID(Tile_X2Y4_N2BEG),
    .N2END(Tile_X2Y4_N2BEGb),
    .Ci(Tile_X2Y4_Co),
    .E1END(Tile_X1Y3_E1BEG),
    .E2MID(Tile_X1Y3_E2BEG),
    .E2END(Tile_X1Y3_E2BEGb),
    .S1END(Tile_X2Y2_S1BEG),
    .S2MID(Tile_X2Y2_S2BEG),
    .S2END(Tile_X2Y2_S2BEGb),
    .W1END(Tile_X3Y3_W1BEG),
    .W2MID(Tile_X3Y3_W2BEG),
    .W2END(Tile_X3Y3_W2BEGb),
    .N_GBUF_BEG(Tile_X2Y3_N_GBUF_BEG),
    .N1BEG(Tile_X2Y3_N1BEG),
    .N2BEG(Tile_X2Y3_N2BEG),
    .N2BEGb(Tile_X2Y3_N2BEGb),
    .E1BEG(Tile_X2Y3_E1BEG),
    .E2BEG(Tile_X2Y3_E2BEG),
    .E2BEGb(Tile_X2Y3_E2BEGb),
    .S1BEG(Tile_X2Y3_S1BEG),
    .S2BEG(Tile_X2Y3_S2BEG),
    .S2BEGb(Tile_X2Y3_S2BEGb),
    .W1BEG(Tile_X2Y3_W1BEG),
    .W2BEG(Tile_X2Y3_W2BEG),
    .W2BEGb(Tile_X2Y3_W2BEGb),
    .Co(Tile_X2Y3_Co),
    .FrameData(Tile_X1Y3_FrameData_O),
    .FrameData_O(Tile_X2Y3_FrameData_O),
    .FrameStrobe(Tile_X2Y4_FrameStrobe_O),
    .FrameStrobe_O(Tile_X2Y3_FrameStrobe_O)
);


 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) LUT4x8_ha
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X3Y3_Emulate_Bitstream)
    )
`endif
    Tile_X3Y3_LUT4x8_ha
    (
    .N_GBUF_END(Tile_X3Y4_N_GBUF_BEG),
    .N1END(Tile_X3Y4_N1BEG),
    .N2MID(Tile_X3Y4_N2BEG),
    .N2END(Tile_X3Y4_N2BEGb),
    .Ci(Tile_X3Y4_Co),
    .E1END(Tile_X2Y3_E1BEG),
    .E2MID(Tile_X2Y3_E2BEG),
    .E2END(Tile_X2Y3_E2BEGb),
    .S1END(Tile_X3Y2_S1BEG),
    .S2MID(Tile_X3Y2_S2BEG),
    .S2END(Tile_X3Y2_S2BEGb),
    .W1END(Tile_X4Y3_W1BEG),
    .W2MID(Tile_X4Y3_W2BEG),
    .W2END(Tile_X4Y3_W2BEGb),
    .N_GBUF_BEG(Tile_X3Y3_N_GBUF_BEG),
    .N1BEG(Tile_X3Y3_N1BEG),
    .N2BEG(Tile_X3Y3_N2BEG),
    .N2BEGb(Tile_X3Y3_N2BEGb),
    .E1BEG(Tile_X3Y3_E1BEG),
    .E2BEG(Tile_X3Y3_E2BEG),
    .E2BEGb(Tile_X3Y3_E2BEGb),
    .S1BEG(Tile_X3Y3_S1BEG),
    .S2BEG(Tile_X3Y3_S2BEG),
    .S2BEGb(Tile_X3Y3_S2BEGb),
    .W1BEG(Tile_X3Y3_W1BEG),
    .W2BEG(Tile_X3Y3_W2BEG),
    .W2BEGb(Tile_X3Y3_W2BEGb),
    .Co(Tile_X3Y3_Co),
    .FrameData(Tile_X2Y3_FrameData_O),
    .FrameData_O(Tile_X3Y3_FrameData_O),
    .FrameStrobe(Tile_X3Y4_FrameStrobe_O),
    .FrameStrobe_O(Tile_X3Y3_FrameStrobe_O)
);


 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) LUT4x8_ha
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X4Y3_Emulate_Bitstream)
    )
`endif
    Tile_X4Y3_LUT4x8_ha
    (
    .N_GBUF_END(Tile_X4Y4_N_GBUF_BEG),
    .N1END(Tile_X4Y4_N1BEG),
    .N2MID(Tile_X4Y4_N2BEG),
    .N2END(Tile_X4Y4_N2BEGb),
    .Ci(Tile_X4Y4_Co),
    .E1END(Tile_X3Y3_E1BEG),
    .E2MID(Tile_X3Y3_E2BEG),
    .E2END(Tile_X3Y3_E2BEGb),
    .S1END(Tile_X4Y2_S1BEG),
    .S2MID(Tile_X4Y2_S2BEG),
    .S2END(Tile_X4Y2_S2BEGb),
    .W1END(Tile_X5Y3_W1BEG),
    .W2MID(Tile_X5Y3_W2BEG),
    .W2END(Tile_X5Y3_W2BEGb),
    .N_GBUF_BEG(Tile_X4Y3_N_GBUF_BEG),
    .N1BEG(Tile_X4Y3_N1BEG),
    .N2BEG(Tile_X4Y3_N2BEG),
    .N2BEGb(Tile_X4Y3_N2BEGb),
    .E1BEG(Tile_X4Y3_E1BEG),
    .E2BEG(Tile_X4Y3_E2BEG),
    .E2BEGb(Tile_X4Y3_E2BEGb),
    .S1BEG(Tile_X4Y3_S1BEG),
    .S2BEG(Tile_X4Y3_S2BEG),
    .S2BEGb(Tile_X4Y3_S2BEGb),
    .W1BEG(Tile_X4Y3_W1BEG),
    .W2BEG(Tile_X4Y3_W2BEG),
    .W2BEGb(Tile_X4Y3_W2BEGb),
    .Co(Tile_X4Y3_Co),
    .FrameData(Tile_X3Y3_FrameData_O),
    .FrameData_O(Tile_X4Y3_FrameData_O),
    .FrameStrobe(Tile_X4Y4_FrameStrobe_O),
    .FrameStrobe_O(Tile_X4Y3_FrameStrobe_O)
);


 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) E_term
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X5Y3_Emulate_Bitstream)
    )
`endif
    Tile_X5Y3_E_term
    (
    .N_GBUF_END(Tile_X5Y4_N_GBUF_BEG),
    .E1END(Tile_X4Y3_E1BEG),
    .E2MID(Tile_X4Y3_E2BEG),
    .E2END(Tile_X4Y3_E2BEGb),
    .N_GBUF_BEG(Tile_X5Y3_N_GBUF_BEG),
    .W1BEG(Tile_X5Y3_W1BEG),
    .W2BEG(Tile_X5Y3_W2BEG),
    .W2BEGb(Tile_X5Y3_W2BEGb),
    .FrameData(Tile_X4Y3_FrameData_O),
    .FrameData_O(Tile_X5Y3_FrameData_O),
    .FrameStrobe(Tile_X5Y4_FrameStrobe_O),
    .FrameStrobe_O(Tile_X5Y3_FrameStrobe_O)
);


 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) W_term
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X0Y4_Emulate_Bitstream)
    )
`endif
    Tile_X0Y4_W_term
    (
    .N_GBUF_END(Tile_X0Y5_N_GBUF_BEG),
    .S_GBUF_FEED_END(Tile_X0Y3_S_GBUF_FEED_BEG),
    .W1END(Tile_X1Y4_W1BEG),
    .W2MID(Tile_X1Y4_W2BEG),
    .W2END(Tile_X1Y4_W2BEGb),
    .S_GBUF_FEED_BEG(Tile_X0Y4_S_GBUF_FEED_BEG),
    .N_GBUF_BEG(Tile_X0Y4_N_GBUF_BEG),
    .E1BEG(Tile_X0Y4_E1BEG),
    .E2BEG(Tile_X0Y4_E2BEG),
    .E2BEGb(Tile_X0Y4_E2BEGb),
    .FrameData(Row_Y4_FrameData),
    .FrameData_O(Tile_X0Y4_FrameData_O),
    .FrameStrobe(Tile_X0Y5_FrameStrobe_O),
    .FrameStrobe_O(Tile_X0Y4_FrameStrobe_O)
);


 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) LUT4x8_ha
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X1Y4_Emulate_Bitstream)
    )
`endif
    Tile_X1Y4_LUT4x8_ha
    (
    .N_GBUF_END(Tile_X1Y5_N_GBUF_BEG),
    .N1END(Tile_X1Y5_N1BEG),
    .N2MID(Tile_X1Y5_N2BEG),
    .N2END(Tile_X1Y5_N2BEGb),
    .Ci(Tile_X1Y5_Co),
    .E1END(Tile_X0Y4_E1BEG),
    .E2MID(Tile_X0Y4_E2BEG),
    .E2END(Tile_X0Y4_E2BEGb),
    .S1END(Tile_X1Y3_S1BEG),
    .S2MID(Tile_X1Y3_S2BEG),
    .S2END(Tile_X1Y3_S2BEGb),
    .W1END(Tile_X2Y4_W1BEG),
    .W2MID(Tile_X2Y4_W2BEG),
    .W2END(Tile_X2Y4_W2BEGb),
    .N_GBUF_BEG(Tile_X1Y4_N_GBUF_BEG),
    .N1BEG(Tile_X1Y4_N1BEG),
    .N2BEG(Tile_X1Y4_N2BEG),
    .N2BEGb(Tile_X1Y4_N2BEGb),
    .E1BEG(Tile_X1Y4_E1BEG),
    .E2BEG(Tile_X1Y4_E2BEG),
    .E2BEGb(Tile_X1Y4_E2BEGb),
    .S1BEG(Tile_X1Y4_S1BEG),
    .S2BEG(Tile_X1Y4_S2BEG),
    .S2BEGb(Tile_X1Y4_S2BEGb),
    .W1BEG(Tile_X1Y4_W1BEG),
    .W2BEG(Tile_X1Y4_W2BEG),
    .W2BEGb(Tile_X1Y4_W2BEGb),
    .Co(Tile_X1Y4_Co),
    .FrameData(Tile_X0Y4_FrameData_O),
    .FrameData_O(Tile_X1Y4_FrameData_O),
    .FrameStrobe(Tile_X1Y5_FrameStrobe_O),
    .FrameStrobe_O(Tile_X1Y4_FrameStrobe_O)
);


 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) LUT4x8_ha
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X2Y4_Emulate_Bitstream)
    )
`endif
    Tile_X2Y4_LUT4x8_ha
    (
    .N_GBUF_END(Tile_X2Y5_N_GBUF_BEG),
    .N1END(Tile_X2Y5_N1BEG),
    .N2MID(Tile_X2Y5_N2BEG),
    .N2END(Tile_X2Y5_N2BEGb),
    .Ci(Tile_X2Y5_Co),
    .E1END(Tile_X1Y4_E1BEG),
    .E2MID(Tile_X1Y4_E2BEG),
    .E2END(Tile_X1Y4_E2BEGb),
    .S1END(Tile_X2Y3_S1BEG),
    .S2MID(Tile_X2Y3_S2BEG),
    .S2END(Tile_X2Y3_S2BEGb),
    .W1END(Tile_X3Y4_W1BEG),
    .W2MID(Tile_X3Y4_W2BEG),
    .W2END(Tile_X3Y4_W2BEGb),
    .N_GBUF_BEG(Tile_X2Y4_N_GBUF_BEG),
    .N1BEG(Tile_X2Y4_N1BEG),
    .N2BEG(Tile_X2Y4_N2BEG),
    .N2BEGb(Tile_X2Y4_N2BEGb),
    .E1BEG(Tile_X2Y4_E1BEG),
    .E2BEG(Tile_X2Y4_E2BEG),
    .E2BEGb(Tile_X2Y4_E2BEGb),
    .S1BEG(Tile_X2Y4_S1BEG),
    .S2BEG(Tile_X2Y4_S2BEG),
    .S2BEGb(Tile_X2Y4_S2BEGb),
    .W1BEG(Tile_X2Y4_W1BEG),
    .W2BEG(Tile_X2Y4_W2BEG),
    .W2BEGb(Tile_X2Y4_W2BEGb),
    .Co(Tile_X2Y4_Co),
    .FrameData(Tile_X1Y4_FrameData_O),
    .FrameData_O(Tile_X2Y4_FrameData_O),
    .FrameStrobe(Tile_X2Y5_FrameStrobe_O),
    .FrameStrobe_O(Tile_X2Y4_FrameStrobe_O)
);


 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) LUT4x8_ha
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X3Y4_Emulate_Bitstream)
    )
`endif
    Tile_X3Y4_LUT4x8_ha
    (
    .N_GBUF_END(Tile_X3Y5_N_GBUF_BEG),
    .N1END(Tile_X3Y5_N1BEG),
    .N2MID(Tile_X3Y5_N2BEG),
    .N2END(Tile_X3Y5_N2BEGb),
    .Ci(Tile_X3Y5_Co),
    .E1END(Tile_X2Y4_E1BEG),
    .E2MID(Tile_X2Y4_E2BEG),
    .E2END(Tile_X2Y4_E2BEGb),
    .S1END(Tile_X3Y3_S1BEG),
    .S2MID(Tile_X3Y3_S2BEG),
    .S2END(Tile_X3Y3_S2BEGb),
    .W1END(Tile_X4Y4_W1BEG),
    .W2MID(Tile_X4Y4_W2BEG),
    .W2END(Tile_X4Y4_W2BEGb),
    .N_GBUF_BEG(Tile_X3Y4_N_GBUF_BEG),
    .N1BEG(Tile_X3Y4_N1BEG),
    .N2BEG(Tile_X3Y4_N2BEG),
    .N2BEGb(Tile_X3Y4_N2BEGb),
    .E1BEG(Tile_X3Y4_E1BEG),
    .E2BEG(Tile_X3Y4_E2BEG),
    .E2BEGb(Tile_X3Y4_E2BEGb),
    .S1BEG(Tile_X3Y4_S1BEG),
    .S2BEG(Tile_X3Y4_S2BEG),
    .S2BEGb(Tile_X3Y4_S2BEGb),
    .W1BEG(Tile_X3Y4_W1BEG),
    .W2BEG(Tile_X3Y4_W2BEG),
    .W2BEGb(Tile_X3Y4_W2BEGb),
    .Co(Tile_X3Y4_Co),
    .FrameData(Tile_X2Y4_FrameData_O),
    .FrameData_O(Tile_X3Y4_FrameData_O),
    .FrameStrobe(Tile_X3Y5_FrameStrobe_O),
    .FrameStrobe_O(Tile_X3Y4_FrameStrobe_O)
);


 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) LUT4x8_ha
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X4Y4_Emulate_Bitstream)
    )
`endif
    Tile_X4Y4_LUT4x8_ha
    (
    .N_GBUF_END(Tile_X4Y5_N_GBUF_BEG),
    .N1END(Tile_X4Y5_N1BEG),
    .N2MID(Tile_X4Y5_N2BEG),
    .N2END(Tile_X4Y5_N2BEGb),
    .Ci(Tile_X4Y5_Co),
    .E1END(Tile_X3Y4_E1BEG),
    .E2MID(Tile_X3Y4_E2BEG),
    .E2END(Tile_X3Y4_E2BEGb),
    .S1END(Tile_X4Y3_S1BEG),
    .S2MID(Tile_X4Y3_S2BEG),
    .S2END(Tile_X4Y3_S2BEGb),
    .W1END(Tile_X5Y4_W1BEG),
    .W2MID(Tile_X5Y4_W2BEG),
    .W2END(Tile_X5Y4_W2BEGb),
    .N_GBUF_BEG(Tile_X4Y4_N_GBUF_BEG),
    .N1BEG(Tile_X4Y4_N1BEG),
    .N2BEG(Tile_X4Y4_N2BEG),
    .N2BEGb(Tile_X4Y4_N2BEGb),
    .E1BEG(Tile_X4Y4_E1BEG),
    .E2BEG(Tile_X4Y4_E2BEG),
    .E2BEGb(Tile_X4Y4_E2BEGb),
    .S1BEG(Tile_X4Y4_S1BEG),
    .S2BEG(Tile_X4Y4_S2BEG),
    .S2BEGb(Tile_X4Y4_S2BEGb),
    .W1BEG(Tile_X4Y4_W1BEG),
    .W2BEG(Tile_X4Y4_W2BEG),
    .W2BEGb(Tile_X4Y4_W2BEGb),
    .Co(Tile_X4Y4_Co),
    .FrameData(Tile_X3Y4_FrameData_O),
    .FrameData_O(Tile_X4Y4_FrameData_O),
    .FrameStrobe(Tile_X4Y5_FrameStrobe_O),
    .FrameStrobe_O(Tile_X4Y4_FrameStrobe_O)
);


 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) E_term
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X5Y4_Emulate_Bitstream)
    )
`endif
    Tile_X5Y4_E_term
    (
    .N_GBUF_END(Tile_X5Y5_N_GBUF_BEG),
    .E1END(Tile_X4Y4_E1BEG),
    .E2MID(Tile_X4Y4_E2BEG),
    .E2END(Tile_X4Y4_E2BEGb),
    .N_GBUF_BEG(Tile_X5Y4_N_GBUF_BEG),
    .W1BEG(Tile_X5Y4_W1BEG),
    .W2BEG(Tile_X5Y4_W2BEG),
    .W2BEGb(Tile_X5Y4_W2BEGb),
    .FrameData(Tile_X4Y4_FrameData_O),
    .FrameData_O(Tile_X5Y4_FrameData_O),
    .FrameStrobe(Tile_X5Y5_FrameStrobe_O),
    .FrameStrobe_O(Tile_X5Y4_FrameStrobe_O)
);


 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) SW_term
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X0Y5_Emulate_Bitstream)
    )
`endif
    Tile_X0Y5_SW_term
    (
    .S_GBUF_FEED_END(Tile_X0Y4_S_GBUF_FEED_BEG),
    .W_GBUF_FEED_END(Tile_X1Y5_W_GBUF_FEED_BEG),
    .N_GBUF_BEG(Tile_X0Y5_N_GBUF_BEG),
    .E_GBUF_BEG(Tile_X0Y5_E_GBUF_BEG),
    .SYS_RESET_RESET_top(Tile_X0Y5_SYS_RESET_RESET_top),
    .FrameData(Row_Y5_FrameData),
    .FrameData_O(Tile_X0Y5_FrameData_O),
    .FrameStrobe(Column_X0_FrameStrobe),
    .FrameStrobe_O(Tile_X0Y5_FrameStrobe_O)
);


 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) S_IO2
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X1Y5_Emulate_Bitstream)
    )
`endif
    Tile_X1Y5_S_IO2
    (
    .E_GBUF_END(Tile_X0Y5_E_GBUF_BEG),
    .S1END(Tile_X1Y4_S1BEG),
    .S2MID(Tile_X1Y4_S2BEG),
    .S2END(Tile_X1Y4_S2BEGb),
    .W_GBUF_FEED_END(Tile_X2Y5_W_GBUF_FEED_BEG),
    .W_GBUF_FEED_BEG(Tile_X1Y5_W_GBUF_FEED_BEG),
    .N_GBUF_BEG(Tile_X1Y5_N_GBUF_BEG),
    .E_GBUF_BEG(Tile_X1Y5_E_GBUF_BEG),
    .N1BEG(Tile_X1Y5_N1BEG),
    .N2BEG(Tile_X1Y5_N2BEG),
    .N2BEGb(Tile_X1Y5_N2BEGb),
    .Co(Tile_X1Y5_Co),
    .A_OUT_top(Tile_X1Y5_A_OUT_top),
    .A_IN_top(Tile_X1Y5_A_IN_top),
    .A_EN_top(Tile_X1Y5_A_EN_top),
    .B_OUT_top(Tile_X1Y5_B_OUT_top),
    .B_IN_top(Tile_X1Y5_B_IN_top),
    .B_EN_top(Tile_X1Y5_B_EN_top),
    .FrameData(Tile_X0Y5_FrameData_O),
    .FrameData_O(Tile_X1Y5_FrameData_O),
    .FrameStrobe(Column_X1_FrameStrobe),
    .FrameStrobe_O(Tile_X1Y5_FrameStrobe_O)
);


 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) S_IO4
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X2Y5_Emulate_Bitstream)
    )
`endif
    Tile_X2Y5_S_IO4
    (
    .E_GBUF_END(Tile_X1Y5_E_GBUF_BEG),
    .S1END(Tile_X2Y4_S1BEG),
    .S2MID(Tile_X2Y4_S2BEG),
    .S2END(Tile_X2Y4_S2BEGb),
    .W_GBUF_FEED_END(Tile_X3Y5_W_GBUF_FEED_BEG),
    .W_GBUF_FEED_BEG(Tile_X2Y5_W_GBUF_FEED_BEG),
    .N_GBUF_BEG(Tile_X2Y5_N_GBUF_BEG),
    .E_GBUF_BEG(Tile_X2Y5_E_GBUF_BEG),
    .N1BEG(Tile_X2Y5_N1BEG),
    .N2BEG(Tile_X2Y5_N2BEG),
    .N2BEGb(Tile_X2Y5_N2BEGb),
    .Co(Tile_X2Y5_Co),
    .A_OUT_top(Tile_X2Y5_A_OUT_top),
    .A_IN_top(Tile_X2Y5_A_IN_top),
    .A_EN_top(Tile_X2Y5_A_EN_top),
    .B_OUT_top(Tile_X2Y5_B_OUT_top),
    .B_IN_top(Tile_X2Y5_B_IN_top),
    .B_EN_top(Tile_X2Y5_B_EN_top),
    .C_OUT_top(Tile_X2Y5_C_OUT_top),
    .C_IN_top(Tile_X2Y5_C_IN_top),
    .C_EN_top(Tile_X2Y5_C_EN_top),
    .D_OUT_top(Tile_X2Y5_D_OUT_top),
    .D_IN_top(Tile_X2Y5_D_IN_top),
    .D_EN_top(Tile_X2Y5_D_EN_top),
    .FrameData(Tile_X1Y5_FrameData_O),
    .FrameData_O(Tile_X2Y5_FrameData_O),
    .FrameStrobe(Column_X2_FrameStrobe),
    .FrameStrobe_O(Tile_X2Y5_FrameStrobe_O)
);


 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) S_IO4
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X3Y5_Emulate_Bitstream)
    )
`endif
    Tile_X3Y5_S_IO4
    (
    .E_GBUF_END(Tile_X2Y5_E_GBUF_BEG),
    .S1END(Tile_X3Y4_S1BEG),
    .S2MID(Tile_X3Y4_S2BEG),
    .S2END(Tile_X3Y4_S2BEGb),
    .W_GBUF_FEED_END(Tile_X4Y5_W_GBUF_FEED_BEG),
    .W_GBUF_FEED_BEG(Tile_X3Y5_W_GBUF_FEED_BEG),
    .N_GBUF_BEG(Tile_X3Y5_N_GBUF_BEG),
    .E_GBUF_BEG(Tile_X3Y5_E_GBUF_BEG),
    .N1BEG(Tile_X3Y5_N1BEG),
    .N2BEG(Tile_X3Y5_N2BEG),
    .N2BEGb(Tile_X3Y5_N2BEGb),
    .Co(Tile_X3Y5_Co),
    .A_OUT_top(Tile_X3Y5_A_OUT_top),
    .A_IN_top(Tile_X3Y5_A_IN_top),
    .A_EN_top(Tile_X3Y5_A_EN_top),
    .B_OUT_top(Tile_X3Y5_B_OUT_top),
    .B_IN_top(Tile_X3Y5_B_IN_top),
    .B_EN_top(Tile_X3Y5_B_EN_top),
    .C_OUT_top(Tile_X3Y5_C_OUT_top),
    .C_IN_top(Tile_X3Y5_C_IN_top),
    .C_EN_top(Tile_X3Y5_C_EN_top),
    .D_OUT_top(Tile_X3Y5_D_OUT_top),
    .D_IN_top(Tile_X3Y5_D_IN_top),
    .D_EN_top(Tile_X3Y5_D_EN_top),
    .FrameData(Tile_X2Y5_FrameData_O),
    .FrameData_O(Tile_X3Y5_FrameData_O),
    .FrameStrobe(Column_X3_FrameStrobe),
    .FrameStrobe_O(Tile_X3Y5_FrameStrobe_O)
);


 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) S_term
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X4Y5_Emulate_Bitstream)
    )
`endif
    Tile_X4Y5_S_term
    (
    .E_GBUF_END(Tile_X3Y5_E_GBUF_BEG),
    .S1END(Tile_X4Y4_S1BEG),
    .S2MID(Tile_X4Y4_S2BEG),
    .S2END(Tile_X4Y4_S2BEGb),
    .W_GBUF_FEED_END(Tile_X5Y5_W_GBUF_FEED_BEG),
    .W_GBUF_FEED_BEG(Tile_X4Y5_W_GBUF_FEED_BEG),
    .N_GBUF_BEG(Tile_X4Y5_N_GBUF_BEG),
    .E_GBUF_BEG(Tile_X4Y5_E_GBUF_BEG),
    .N1BEG(Tile_X4Y5_N1BEG),
    .N2BEG(Tile_X4Y5_N2BEG),
    .N2BEGb(Tile_X4Y5_N2BEGb),
    .Co(Tile_X4Y5_Co),
    .FrameData(Tile_X3Y5_FrameData_O),
    .FrameData_O(Tile_X4Y5_FrameData_O),
    .FrameStrobe(Column_X4_FrameStrobe),
    .FrameStrobe_O(Tile_X4Y5_FrameStrobe_O)
);


 //tile IO port will get directly connected to top-level tile module
 (* keep *)
(* keep *) SE_term
`ifdef EMULATION
    #(
    .Emulate_Bitstream(`Tile_X5Y5_Emulate_Bitstream)
    )
`endif
    Tile_X5Y5_SE_term
    (
    .E_GBUF_END(Tile_X4Y5_E_GBUF_BEG),
    .W_GBUF_FEED_BEG(Tile_X5Y5_W_GBUF_FEED_BEG),
    .N_GBUF_BEG(Tile_X5Y5_N_GBUF_BEG),
    .FrameData(Tile_X4Y5_FrameData_O),
    .FrameData_O(Tile_X5Y5_FrameData_O),
    .FrameStrobe(Column_X5_FrameStrobe),
    .FrameStrobe_O(Tile_X5Y5_FrameStrobe_O)
);

endmodule