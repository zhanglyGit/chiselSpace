module Complex(
  input         clock,
  input         reset,
  input  [31:0] io_instr,
  input  [2:0]  io_vlmul,
  input         io_isComplex_1,
  input         io_isComplex_2,
  input         io_isComplex_3,
  input         io_isComplex_4,
  input         io_isComplex_5,
  output [2:0]  io_vecCtrl_0_srcType_0,
  output [2:0]  io_vecCtrl_0_srcType_1,
  output [5:0]  io_vecCtrl_0_lsrc_0,
  output [5:0]  io_vecCtrl_0_lsrc_1,
  output [5:0]  io_vecCtrl_0_ldest,
  output [4:0]  io_vecCtrl_0_fuType,
  output [7:0]  io_vecCtrl_0_fuOpType,
  output        io_vecCtrl_0_vecWen,
  output [19:0] io_vecCtrl_0_imm,
  output [2:0]  io_vecCtrl_1_srcType_0,
  output [2:0]  io_vecCtrl_1_srcType_1,
  output [5:0]  io_vecCtrl_1_lsrc_0,
  output [5:0]  io_vecCtrl_1_lsrc_1,
  output [5:0]  io_vecCtrl_1_ldest,
  output [4:0]  io_vecCtrl_1_fuType,
  output [7:0]  io_vecCtrl_1_fuOpType,
  output        io_vecCtrl_1_vecWen,
  output [19:0] io_vecCtrl_1_imm,
  output [2:0]  io_vecCtrl_2_srcType_0,
  output [2:0]  io_vecCtrl_2_srcType_1,
  output [5:0]  io_vecCtrl_2_lsrc_0,
  output [5:0]  io_vecCtrl_2_lsrc_1,
  output [5:0]  io_vecCtrl_2_ldest,
  output [4:0]  io_vecCtrl_2_fuType,
  output [7:0]  io_vecCtrl_2_fuOpType,
  output        io_vecCtrl_2_vecWen,
  output [19:0] io_vecCtrl_2_imm,
  output [2:0]  io_vecCtrl_3_srcType_0,
  output [2:0]  io_vecCtrl_3_srcType_1,
  output [5:0]  io_vecCtrl_3_lsrc_0,
  output [5:0]  io_vecCtrl_3_lsrc_1,
  output [5:0]  io_vecCtrl_3_ldest,
  output [4:0]  io_vecCtrl_3_fuType,
  output [7:0]  io_vecCtrl_3_fuOpType,
  output        io_vecCtrl_3_vecWen,
  output [19:0] io_vecCtrl_3_imm,
  output [2:0]  io_vecCtrl_4_srcType_0,
  output [2:0]  io_vecCtrl_4_srcType_1,
  output [5:0]  io_vecCtrl_4_lsrc_0,
  output [5:0]  io_vecCtrl_4_lsrc_1,
  output [5:0]  io_vecCtrl_4_ldest,
  output [4:0]  io_vecCtrl_4_fuType,
  output [7:0]  io_vecCtrl_4_fuOpType,
  output        io_vecCtrl_4_vecWen,
  output [19:0] io_vecCtrl_4_imm,
  output [2:0]  io_vecCtrl_5_srcType_0,
  output [2:0]  io_vecCtrl_5_srcType_1,
  output [5:0]  io_vecCtrl_5_lsrc_0,
  output [5:0]  io_vecCtrl_5_lsrc_1,
  output [5:0]  io_vecCtrl_5_ldest,
  output [4:0]  io_vecCtrl_5_fuType,
  output [7:0]  io_vecCtrl_5_fuOpType,
  output        io_vecCtrl_5_vecWen,
  output [19:0] io_vecCtrl_5_imm,
  output [2:0]  io_num,
  output        io_offset_0,
  output        io_offset_1,
  output        io_offset_2,
  output        io_offset_3,
  output        io_offset_4,
  output        io_offset_5,
  output [2:0]  io_strIndex
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
`endif // RANDOMIZE_REG_INIT
  wire [3:0] _GEN_0 = io_vlmul == 3'h3 ? 4'h8 : 4'h1; // @[Complex.scala 25:37 26:14 28:14]
  wire [3:0] _GEN_1 = io_vlmul == 3'h2 ? 4'h4 : _GEN_0; // @[Complex.scala 23:37 24:14]
  wire [3:0] numOfUop = io_vlmul == 3'h1 ? 4'h2 : _GEN_1; // @[Complex.scala 21:31 22:14]
  wire  _T_8 = 6'h0 == io_instr[31:26]; // @[Complex.scala 65:36]
  wire [5:0] _vecCtrlBundle_0_lsrc_0_T_1 = {{1'd0}, io_instr[19:15]}; // @[Complex.scala 73:62]
  wire [5:0] _vecCtrlBundle_0_lsrc_1_T_1 = {{1'd0}, io_instr[24:20]}; // @[Complex.scala 74:62]
  wire [5:0] _vecCtrlBundle_0_ldest_T_1 = {{1'd0}, io_instr[11:7]}; // @[Complex.scala 77:59]
  wire [11:0] vecCtrlBundle_0_imm_minBits_1 = {io_instr[31:25],io_instr[11:7]}; // @[Cat.scala 33:92]
  wire [19:0] _vecCtrlBundle_0_imm_T_20 = {{8'd0}, vecCtrlBundle_0_imm_minBits_1}; // @[Mux.scala 27:73]
  wire [4:0] _vecCtrlBundle_1_lsrc_0_T_2 = io_instr[19:15] + 5'h1; // @[Complex.scala 73:62]
  wire [4:0] _vecCtrlBundle_1_lsrc_1_T_2 = io_instr[24:20] + 5'h1; // @[Complex.scala 74:62]
  wire [4:0] _vecCtrlBundle_1_ldest_T_2 = io_instr[11:7] + 5'h1; // @[Complex.scala 77:59]
  wire [4:0] _vecCtrlBundle_2_lsrc_0_T_2 = io_instr[19:15] + 5'h2; // @[Complex.scala 73:62]
  wire [4:0] _vecCtrlBundle_2_lsrc_1_T_2 = io_instr[24:20] + 5'h2; // @[Complex.scala 74:62]
  wire [4:0] _vecCtrlBundle_2_ldest_T_2 = io_instr[11:7] + 5'h2; // @[Complex.scala 77:59]
  wire [4:0] _vecCtrlBundle_3_lsrc_0_T_2 = io_instr[19:15] + 5'h3; // @[Complex.scala 73:62]
  wire [4:0] _vecCtrlBundle_3_lsrc_1_T_2 = io_instr[24:20] + 5'h3; // @[Complex.scala 74:62]
  wire [4:0] _vecCtrlBundle_3_ldest_T_2 = io_instr[11:7] + 5'h3; // @[Complex.scala 77:59]
  wire [4:0] _vecCtrlBundle_4_lsrc_0_T_2 = io_instr[19:15] + 5'h4; // @[Complex.scala 73:62]
  wire [4:0] _vecCtrlBundle_4_lsrc_1_T_2 = io_instr[24:20] + 5'h4; // @[Complex.scala 74:62]
  wire [4:0] _vecCtrlBundle_4_ldest_T_2 = io_instr[11:7] + 5'h4; // @[Complex.scala 77:59]
  wire [4:0] _vecCtrlBundle_5_lsrc_0_T_2 = io_instr[19:15] + 5'h5; // @[Complex.scala 73:62]
  wire [4:0] _vecCtrlBundle_5_lsrc_1_T_2 = io_instr[24:20] + 5'h5; // @[Complex.scala 74:62]
  wire [4:0] _vecCtrlBundle_5_ldest_T_2 = io_instr[11:7] + 5'h5; // @[Complex.scala 77:59]
  wire [4:0] _vecCtrlBundle_6_lsrc_0_T_2 = io_instr[19:15] + 5'h6; // @[Complex.scala 73:62]
  wire [4:0] _vecCtrlBundle_6_lsrc_1_T_2 = io_instr[24:20] + 5'h6; // @[Complex.scala 74:62]
  wire [4:0] _vecCtrlBundle_6_ldest_T_2 = io_instr[11:7] + 5'h6; // @[Complex.scala 77:59]
  wire [4:0] _vecCtrlBundle_7_lsrc_0_T_2 = io_instr[19:15] + 5'h7; // @[Complex.scala 73:62]
  wire [4:0] _vecCtrlBundle_7_lsrc_1_T_2 = io_instr[24:20] + 5'h7; // @[Complex.scala 74:62]
  wire [4:0] _vecCtrlBundle_7_ldest_T_2 = io_instr[11:7] + 5'h7; // @[Complex.scala 77:59]
  wire [2:0] _GEN_3 = 6'h0 == io_instr[31:26] ? 3'h4 : 3'h0; // @[Complex.scala 32:33 65:36 69:45]
  wire [4:0] _GEN_5 = 6'h0 == io_instr[31:26] ? _vecCtrlBundle_0_lsrc_0_T_1[4:0] : 5'h0; // @[Complex.scala 36:30 65:36 73:42]
  wire [4:0] _GEN_6 = 6'h0 == io_instr[31:26] ? _vecCtrlBundle_0_lsrc_1_T_1[4:0] : 5'h0; // @[Complex.scala 37:30 65:36 74:42]
  wire [4:0] _GEN_7 = 6'h0 == io_instr[31:26] ? _vecCtrlBundle_0_ldest_T_1[4:0] : 5'h0; // @[Complex.scala 40:28 65:36 77:40]
  wire [4:0] _GEN_8 = 6'h0 == io_instr[31:26] ? 5'h18 : 5'h0; // @[Complex.scala 41:29 65:36 78:41]
  wire [6:0] _GEN_9 = 6'h0 == io_instr[31:26] ? 7'hf : 7'h0; // @[Complex.scala 42:31 65:36 79:43]
  wire [19:0] _GEN_11 = 6'h0 == io_instr[31:26] ? _vecCtrlBundle_0_imm_T_20 : 20'h0; // @[Complex.scala 53:26 65:36 90:38]
  wire [4:0] _GEN_12 = 6'h0 == io_instr[31:26] ? _vecCtrlBundle_1_lsrc_0_T_2 : 5'h0; // @[Complex.scala 36:30 65:36 73:42]
  wire [4:0] _GEN_13 = 6'h0 == io_instr[31:26] ? _vecCtrlBundle_1_lsrc_1_T_2 : 5'h0; // @[Complex.scala 37:30 65:36 74:42]
  wire [4:0] _GEN_14 = 6'h0 == io_instr[31:26] ? _vecCtrlBundle_1_ldest_T_2 : 5'h0; // @[Complex.scala 40:28 65:36 77:40]
  wire [4:0] _GEN_16 = 6'h0 == io_instr[31:26] ? _vecCtrlBundle_2_lsrc_0_T_2 : 5'h0; // @[Complex.scala 36:30 65:36 73:42]
  wire [4:0] _GEN_17 = 6'h0 == io_instr[31:26] ? _vecCtrlBundle_2_lsrc_1_T_2 : 5'h0; // @[Complex.scala 37:30 65:36 74:42]
  wire [4:0] _GEN_18 = 6'h0 == io_instr[31:26] ? _vecCtrlBundle_2_ldest_T_2 : 5'h0; // @[Complex.scala 40:28 65:36 77:40]
  wire [4:0] _GEN_20 = 6'h0 == io_instr[31:26] ? _vecCtrlBundle_3_lsrc_0_T_2 : 5'h0; // @[Complex.scala 36:30 65:36 73:42]
  wire [4:0] _GEN_21 = 6'h0 == io_instr[31:26] ? _vecCtrlBundle_3_lsrc_1_T_2 : 5'h0; // @[Complex.scala 37:30 65:36 74:42]
  wire [4:0] _GEN_22 = 6'h0 == io_instr[31:26] ? _vecCtrlBundle_3_ldest_T_2 : 5'h0; // @[Complex.scala 40:28 65:36 77:40]
  wire [4:0] _GEN_24 = 6'h0 == io_instr[31:26] ? _vecCtrlBundle_4_lsrc_0_T_2 : 5'h0; // @[Complex.scala 36:30 65:36 73:42]
  wire [4:0] _GEN_25 = 6'h0 == io_instr[31:26] ? _vecCtrlBundle_4_lsrc_1_T_2 : 5'h0; // @[Complex.scala 37:30 65:36 74:42]
  wire [4:0] _GEN_26 = 6'h0 == io_instr[31:26] ? _vecCtrlBundle_4_ldest_T_2 : 5'h0; // @[Complex.scala 40:28 65:36 77:40]
  wire [4:0] _GEN_28 = 6'h0 == io_instr[31:26] ? _vecCtrlBundle_5_lsrc_0_T_2 : 5'h0; // @[Complex.scala 36:30 65:36 73:42]
  wire [4:0] _GEN_29 = 6'h0 == io_instr[31:26] ? _vecCtrlBundle_5_lsrc_1_T_2 : 5'h0; // @[Complex.scala 37:30 65:36 74:42]
  wire [4:0] _GEN_30 = 6'h0 == io_instr[31:26] ? _vecCtrlBundle_5_ldest_T_2 : 5'h0; // @[Complex.scala 40:28 65:36 77:40]
  wire [4:0] _GEN_32 = 6'h0 == io_instr[31:26] ? _vecCtrlBundle_6_lsrc_0_T_2 : 5'h0; // @[Complex.scala 36:30 65:36 73:42]
  wire [4:0] _GEN_33 = 6'h0 == io_instr[31:26] ? _vecCtrlBundle_6_lsrc_1_T_2 : 5'h0; // @[Complex.scala 37:30 65:36 74:42]
  wire [4:0] _GEN_34 = 6'h0 == io_instr[31:26] ? _vecCtrlBundle_6_ldest_T_2 : 5'h0; // @[Complex.scala 40:28 65:36 77:40]
  wire [4:0] _GEN_36 = 6'h0 == io_instr[31:26] ? _vecCtrlBundle_7_lsrc_0_T_2 : 5'h0; // @[Complex.scala 36:30 65:36 73:42]
  wire [4:0] _GEN_37 = 6'h0 == io_instr[31:26] ? _vecCtrlBundle_7_lsrc_1_T_2 : 5'h0; // @[Complex.scala 37:30 65:36 74:42]
  wire [4:0] _GEN_38 = 6'h0 == io_instr[31:26] ? _vecCtrlBundle_7_ldest_T_2 : 5'h0; // @[Complex.scala 40:28 65:36 77:40]
  wire [2:0] _GEN_40 = 3'h0 == io_instr[14:12] ? _GEN_3 : 3'h0; // @[Complex.scala 63:32 32:33]
  wire [4:0] _GEN_42 = 3'h0 == io_instr[14:12] ? _GEN_5 : 5'h0; // @[Complex.scala 36:30 63:32]
  wire [4:0] _GEN_43 = 3'h0 == io_instr[14:12] ? _GEN_6 : 5'h0; // @[Complex.scala 37:30 63:32]
  wire [4:0] _GEN_44 = 3'h0 == io_instr[14:12] ? _GEN_7 : 5'h0; // @[Complex.scala 40:28 63:32]
  wire [4:0] _GEN_45 = 3'h0 == io_instr[14:12] ? _GEN_8 : 5'h0; // @[Complex.scala 41:29 63:32]
  wire [6:0] _GEN_46 = 3'h0 == io_instr[14:12] ? _GEN_9 : 7'h0; // @[Complex.scala 42:31 63:32]
  wire  _GEN_47 = 3'h0 == io_instr[14:12] & _T_8; // @[Complex.scala 45:29 63:32]
  wire [19:0] _GEN_48 = 3'h0 == io_instr[14:12] ? _GEN_11 : 20'h0; // @[Complex.scala 53:26 63:32]
  wire [4:0] _GEN_49 = 3'h0 == io_instr[14:12] ? _GEN_12 : 5'h0; // @[Complex.scala 36:30 63:32]
  wire [4:0] _GEN_50 = 3'h0 == io_instr[14:12] ? _GEN_13 : 5'h0; // @[Complex.scala 37:30 63:32]
  wire [4:0] _GEN_51 = 3'h0 == io_instr[14:12] ? _GEN_14 : 5'h0; // @[Complex.scala 40:28 63:32]
  wire [4:0] _GEN_53 = 3'h0 == io_instr[14:12] ? _GEN_16 : 5'h0; // @[Complex.scala 36:30 63:32]
  wire [4:0] _GEN_54 = 3'h0 == io_instr[14:12] ? _GEN_17 : 5'h0; // @[Complex.scala 37:30 63:32]
  wire [4:0] _GEN_55 = 3'h0 == io_instr[14:12] ? _GEN_18 : 5'h0; // @[Complex.scala 40:28 63:32]
  wire [4:0] _GEN_57 = 3'h0 == io_instr[14:12] ? _GEN_20 : 5'h0; // @[Complex.scala 36:30 63:32]
  wire [4:0] _GEN_58 = 3'h0 == io_instr[14:12] ? _GEN_21 : 5'h0; // @[Complex.scala 37:30 63:32]
  wire [4:0] _GEN_59 = 3'h0 == io_instr[14:12] ? _GEN_22 : 5'h0; // @[Complex.scala 40:28 63:32]
  wire [4:0] _GEN_61 = 3'h0 == io_instr[14:12] ? _GEN_24 : 5'h0; // @[Complex.scala 36:30 63:32]
  wire [4:0] _GEN_62 = 3'h0 == io_instr[14:12] ? _GEN_25 : 5'h0; // @[Complex.scala 37:30 63:32]
  wire [4:0] _GEN_63 = 3'h0 == io_instr[14:12] ? _GEN_26 : 5'h0; // @[Complex.scala 40:28 63:32]
  wire [4:0] _GEN_65 = 3'h0 == io_instr[14:12] ? _GEN_28 : 5'h0; // @[Complex.scala 36:30 63:32]
  wire [4:0] _GEN_66 = 3'h0 == io_instr[14:12] ? _GEN_29 : 5'h0; // @[Complex.scala 37:30 63:32]
  wire [4:0] _GEN_67 = 3'h0 == io_instr[14:12] ? _GEN_30 : 5'h0; // @[Complex.scala 40:28 63:32]
  wire [4:0] _GEN_69 = 3'h0 == io_instr[14:12] ? _GEN_32 : 5'h0; // @[Complex.scala 36:30 63:32]
  wire [4:0] _GEN_70 = 3'h0 == io_instr[14:12] ? _GEN_33 : 5'h0; // @[Complex.scala 37:30 63:32]
  wire [4:0] _GEN_71 = 3'h0 == io_instr[14:12] ? _GEN_34 : 5'h0; // @[Complex.scala 40:28 63:32]
  wire [4:0] _GEN_73 = 3'h0 == io_instr[14:12] ? _GEN_36 : 5'h0; // @[Complex.scala 36:30 63:32]
  wire [4:0] _GEN_74 = 3'h0 == io_instr[14:12] ? _GEN_37 : 5'h0; // @[Complex.scala 37:30 63:32]
  wire [4:0] _GEN_75 = 3'h0 == io_instr[14:12] ? _GEN_38 : 5'h0; // @[Complex.scala 40:28 63:32]
  wire [2:0] vecCtrlBundle_0_srcType_0 = 7'h57 == io_instr[6:0] ? _GEN_40 : 3'h0; // @[Complex.scala 61:26 32:33]
  wire [4:0] _GEN_79 = 7'h57 == io_instr[6:0] ? _GEN_42 : 5'h0; // @[Complex.scala 61:26 36:30]
  wire [4:0] _GEN_80 = 7'h57 == io_instr[6:0] ? _GEN_43 : 5'h0; // @[Complex.scala 61:26 37:30]
  wire [4:0] _GEN_81 = 7'h57 == io_instr[6:0] ? _GEN_44 : 5'h0; // @[Complex.scala 61:26 40:28]
  wire [4:0] vecCtrlBundle_0_fuType = 7'h57 == io_instr[6:0] ? _GEN_45 : 5'h0; // @[Complex.scala 61:26 41:29]
  wire [6:0] _GEN_83 = 7'h57 == io_instr[6:0] ? _GEN_46 : 7'h0; // @[Complex.scala 61:26 42:31]
  wire  vecCtrlBundle_0_vecWen = 7'h57 == io_instr[6:0] & _GEN_47; // @[Complex.scala 61:26 45:29]
  wire [19:0] vecCtrlBundle_0_imm = 7'h57 == io_instr[6:0] ? _GEN_48 : 20'h0; // @[Complex.scala 53:26 61:26]
  wire [4:0] _GEN_86 = 7'h57 == io_instr[6:0] ? _GEN_49 : 5'h0; // @[Complex.scala 61:26 36:30]
  wire [4:0] _GEN_87 = 7'h57 == io_instr[6:0] ? _GEN_50 : 5'h0; // @[Complex.scala 61:26 37:30]
  wire [4:0] _GEN_88 = 7'h57 == io_instr[6:0] ? _GEN_51 : 5'h0; // @[Complex.scala 61:26 40:28]
  wire [4:0] _GEN_90 = 7'h57 == io_instr[6:0] ? _GEN_53 : 5'h0; // @[Complex.scala 61:26 36:30]
  wire [4:0] _GEN_91 = 7'h57 == io_instr[6:0] ? _GEN_54 : 5'h0; // @[Complex.scala 61:26 37:30]
  wire [4:0] _GEN_92 = 7'h57 == io_instr[6:0] ? _GEN_55 : 5'h0; // @[Complex.scala 61:26 40:28]
  wire [4:0] _GEN_94 = 7'h57 == io_instr[6:0] ? _GEN_57 : 5'h0; // @[Complex.scala 61:26 36:30]
  wire [4:0] _GEN_95 = 7'h57 == io_instr[6:0] ? _GEN_58 : 5'h0; // @[Complex.scala 61:26 37:30]
  wire [4:0] _GEN_96 = 7'h57 == io_instr[6:0] ? _GEN_59 : 5'h0; // @[Complex.scala 61:26 40:28]
  wire [4:0] _GEN_98 = 7'h57 == io_instr[6:0] ? _GEN_61 : 5'h0; // @[Complex.scala 61:26 36:30]
  wire [4:0] _GEN_99 = 7'h57 == io_instr[6:0] ? _GEN_62 : 5'h0; // @[Complex.scala 61:26 37:30]
  wire [4:0] _GEN_100 = 7'h57 == io_instr[6:0] ? _GEN_63 : 5'h0; // @[Complex.scala 61:26 40:28]
  wire [4:0] _GEN_102 = 7'h57 == io_instr[6:0] ? _GEN_65 : 5'h0; // @[Complex.scala 61:26 36:30]
  wire [4:0] _GEN_103 = 7'h57 == io_instr[6:0] ? _GEN_66 : 5'h0; // @[Complex.scala 61:26 37:30]
  wire [4:0] _GEN_104 = 7'h57 == io_instr[6:0] ? _GEN_67 : 5'h0; // @[Complex.scala 61:26 40:28]
  wire [4:0] _GEN_106 = 7'h57 == io_instr[6:0] ? _GEN_69 : 5'h0; // @[Complex.scala 61:26 36:30]
  wire [4:0] _GEN_107 = 7'h57 == io_instr[6:0] ? _GEN_70 : 5'h0; // @[Complex.scala 61:26 37:30]
  wire [4:0] _GEN_108 = 7'h57 == io_instr[6:0] ? _GEN_71 : 5'h0; // @[Complex.scala 61:26 40:28]
  wire [4:0] _GEN_110 = 7'h57 == io_instr[6:0] ? _GEN_73 : 5'h0; // @[Complex.scala 61:26 36:30]
  wire [4:0] _GEN_111 = 7'h57 == io_instr[6:0] ? _GEN_74 : 5'h0; // @[Complex.scala 61:26 37:30]
  wire [4:0] _GEN_112 = 7'h57 == io_instr[6:0] ? _GEN_75 : 5'h0; // @[Complex.scala 61:26 40:28]
  reg [2:0] vecCtrlReg_0_srcType_0; // @[Complex.scala 117:23]
  reg [2:0] vecCtrlReg_0_srcType_1; // @[Complex.scala 117:23]
  reg [5:0] vecCtrlReg_0_lsrc_0; // @[Complex.scala 117:23]
  reg [5:0] vecCtrlReg_0_lsrc_1; // @[Complex.scala 117:23]
  reg [5:0] vecCtrlReg_0_ldest; // @[Complex.scala 117:23]
  reg [4:0] vecCtrlReg_0_fuType; // @[Complex.scala 117:23]
  reg [7:0] vecCtrlReg_0_fuOpType; // @[Complex.scala 117:23]
  reg  vecCtrlReg_0_vecWen; // @[Complex.scala 117:23]
  reg [19:0] vecCtrlReg_0_imm; // @[Complex.scala 117:23]
  reg [2:0] vecCtrlReg_1_srcType_0; // @[Complex.scala 117:23]
  reg [2:0] vecCtrlReg_1_srcType_1; // @[Complex.scala 117:23]
  reg [5:0] vecCtrlReg_1_lsrc_0; // @[Complex.scala 117:23]
  reg [5:0] vecCtrlReg_1_lsrc_1; // @[Complex.scala 117:23]
  reg [5:0] vecCtrlReg_1_ldest; // @[Complex.scala 117:23]
  reg [4:0] vecCtrlReg_1_fuType; // @[Complex.scala 117:23]
  reg [7:0] vecCtrlReg_1_fuOpType; // @[Complex.scala 117:23]
  reg  vecCtrlReg_1_vecWen; // @[Complex.scala 117:23]
  reg [19:0] vecCtrlReg_1_imm; // @[Complex.scala 117:23]
  reg [2:0] vecCtrlReg_2_srcType_0; // @[Complex.scala 117:23]
  reg [2:0] vecCtrlReg_2_srcType_1; // @[Complex.scala 117:23]
  reg [5:0] vecCtrlReg_2_lsrc_0; // @[Complex.scala 117:23]
  reg [5:0] vecCtrlReg_2_lsrc_1; // @[Complex.scala 117:23]
  reg [5:0] vecCtrlReg_2_ldest; // @[Complex.scala 117:23]
  reg [4:0] vecCtrlReg_2_fuType; // @[Complex.scala 117:23]
  reg [7:0] vecCtrlReg_2_fuOpType; // @[Complex.scala 117:23]
  reg  vecCtrlReg_2_vecWen; // @[Complex.scala 117:23]
  reg [19:0] vecCtrlReg_2_imm; // @[Complex.scala 117:23]
  reg [2:0] vecCtrlReg_3_srcType_0; // @[Complex.scala 117:23]
  reg [2:0] vecCtrlReg_3_srcType_1; // @[Complex.scala 117:23]
  reg [5:0] vecCtrlReg_3_lsrc_0; // @[Complex.scala 117:23]
  reg [5:0] vecCtrlReg_3_lsrc_1; // @[Complex.scala 117:23]
  reg [5:0] vecCtrlReg_3_ldest; // @[Complex.scala 117:23]
  reg [4:0] vecCtrlReg_3_fuType; // @[Complex.scala 117:23]
  reg [7:0] vecCtrlReg_3_fuOpType; // @[Complex.scala 117:23]
  reg  vecCtrlReg_3_vecWen; // @[Complex.scala 117:23]
  reg [19:0] vecCtrlReg_3_imm; // @[Complex.scala 117:23]
  reg [2:0] vecCtrlReg_4_srcType_0; // @[Complex.scala 117:23]
  reg [2:0] vecCtrlReg_4_srcType_1; // @[Complex.scala 117:23]
  reg [5:0] vecCtrlReg_4_lsrc_0; // @[Complex.scala 117:23]
  reg [5:0] vecCtrlReg_4_lsrc_1; // @[Complex.scala 117:23]
  reg [5:0] vecCtrlReg_4_ldest; // @[Complex.scala 117:23]
  reg [4:0] vecCtrlReg_4_fuType; // @[Complex.scala 117:23]
  reg [7:0] vecCtrlReg_4_fuOpType; // @[Complex.scala 117:23]
  reg  vecCtrlReg_4_vecWen; // @[Complex.scala 117:23]
  reg [19:0] vecCtrlReg_4_imm; // @[Complex.scala 117:23]
  reg [2:0] vecCtrlReg_5_srcType_0; // @[Complex.scala 117:23]
  reg [2:0] vecCtrlReg_5_srcType_1; // @[Complex.scala 117:23]
  reg [5:0] vecCtrlReg_5_lsrc_0; // @[Complex.scala 117:23]
  reg [5:0] vecCtrlReg_5_lsrc_1; // @[Complex.scala 117:23]
  reg [5:0] vecCtrlReg_5_ldest; // @[Complex.scala 117:23]
  reg [4:0] vecCtrlReg_5_fuType; // @[Complex.scala 117:23]
  reg [7:0] vecCtrlReg_5_fuOpType; // @[Complex.scala 117:23]
  reg  vecCtrlReg_5_vecWen; // @[Complex.scala 117:23]
  reg [19:0] vecCtrlReg_5_imm; // @[Complex.scala 117:23]
  reg  stateReg; // @[Complex.scala 121:25]
  wire  _T_9 = ~stateReg; // @[Complex.scala 122:20]
  wire  _T_10 = numOfUop <= 4'h6; // @[Complex.scala 124:21]
  wire [5:0] vecCtrlBundle_0_lsrc_0 = {{1'd0}, _GEN_79}; // @[Complex.scala 19:27]
  wire [5:0] vecCtrlBundle_0_lsrc_1 = {{1'd0}, _GEN_80}; // @[Complex.scala 19:27]
  wire [5:0] vecCtrlBundle_0_ldest = {{1'd0}, _GEN_81}; // @[Complex.scala 19:27]
  wire [7:0] vecCtrlBundle_0_fuOpType = {{1'd0}, _GEN_83}; // @[Complex.scala 19:27]
  wire [5:0] vecCtrlBundle_1_lsrc_0 = {{1'd0}, _GEN_86}; // @[Complex.scala 19:27]
  wire [5:0] vecCtrlBundle_1_lsrc_1 = {{1'd0}, _GEN_87}; // @[Complex.scala 19:27]
  wire [5:0] vecCtrlBundle_1_ldest = {{1'd0}, _GEN_88}; // @[Complex.scala 19:27]
  wire [5:0] vecCtrlBundle_2_lsrc_0 = {{1'd0}, _GEN_90}; // @[Complex.scala 19:27]
  wire [5:0] vecCtrlBundle_2_lsrc_1 = {{1'd0}, _GEN_91}; // @[Complex.scala 19:27]
  wire [5:0] vecCtrlBundle_2_ldest = {{1'd0}, _GEN_92}; // @[Complex.scala 19:27]
  wire [5:0] vecCtrlBundle_3_lsrc_0 = {{1'd0}, _GEN_94}; // @[Complex.scala 19:27]
  wire [5:0] vecCtrlBundle_3_lsrc_1 = {{1'd0}, _GEN_95}; // @[Complex.scala 19:27]
  wire [5:0] vecCtrlBundle_3_ldest = {{1'd0}, _GEN_96}; // @[Complex.scala 19:27]
  wire [5:0] vecCtrlBundle_4_lsrc_0 = {{1'd0}, _GEN_98}; // @[Complex.scala 19:27]
  wire [5:0] vecCtrlBundle_4_lsrc_1 = {{1'd0}, _GEN_99}; // @[Complex.scala 19:27]
  wire [5:0] vecCtrlBundle_4_ldest = {{1'd0}, _GEN_100}; // @[Complex.scala 19:27]
  wire [5:0] vecCtrlBundle_5_lsrc_0 = {{1'd0}, _GEN_102}; // @[Complex.scala 19:27]
  wire [5:0] vecCtrlBundle_5_lsrc_1 = {{1'd0}, _GEN_103}; // @[Complex.scala 19:27]
  wire [5:0] vecCtrlBundle_5_ldest = {{1'd0}, _GEN_104}; // @[Complex.scala 19:27]
  wire [5:0] vecCtrlBundle_6_lsrc_0 = {{1'd0}, _GEN_106}; // @[Complex.scala 19:27]
  wire [5:0] vecCtrlBundle_6_lsrc_1 = {{1'd0}, _GEN_107}; // @[Complex.scala 19:27]
  wire [5:0] vecCtrlBundle_6_ldest = {{1'd0}, _GEN_108}; // @[Complex.scala 19:27]
  wire [5:0] vecCtrlBundle_7_lsrc_0 = {{1'd0}, _GEN_110}; // @[Complex.scala 19:27]
  wire [5:0] vecCtrlBundle_7_lsrc_1 = {{1'd0}, _GEN_111}; // @[Complex.scala 19:27]
  wire [5:0] vecCtrlBundle_7_ldest = {{1'd0}, _GEN_112}; // @[Complex.scala 19:27]
  wire  _T_14 = _T_9 & _T_10; // @[Complex.scala 154:28]
  wire  _T_17 = _T_9 & numOfUop > 4'h6; // @[Complex.scala 156:35]
  wire [3:0] _num_T_1 = numOfUop - 4'h6; // @[Complex.scala 159:21]
  wire [3:0] _GEN_481 = stateReg ? _num_T_1 : 4'h6; // @[Complex.scala 158:39 159:9 161:9]
  wire [3:0] _GEN_482 = _T_9 & numOfUop > 4'h6 ? 4'h6 : _GEN_481; // @[Complex.scala 156:54 157:9]
  wire [3:0] _GEN_483 = _T_9 & _T_10 ? numOfUop : _GEN_482; // @[Complex.scala 154:48 155:9]
  reg [2:0] io_num_REG; // @[Complex.scala 164:20]
  wire  _offset_2_T_1 = ~io_isComplex_1; // @[Complex.scala 169:39]
  wire  _offset_3_T_3 = ~io_isComplex_2; // @[Complex.scala 170:59]
  wire  _offset_4_T_5 = ~io_isComplex_3; // @[Complex.scala 171:79]
  wire  _offset_5_T_7 = ~io_isComplex_4; // @[Complex.scala 172:99]
  wire  _offset_3_T_14 = _offset_2_T_1 & _offset_3_T_3; // @[Complex.scala 182:35]
  wire  _GEN_484 = stateReg ? 1'h0 : 1'h1; // @[Complex.scala 178:39 179:15 186:15]
  wire  _GEN_485 = stateReg & io_isComplex_1; // @[Complex.scala 178:39 180:15 188:17]
  wire  _GEN_486 = stateReg & (_offset_2_T_1 & io_isComplex_2); // @[Complex.scala 178:39 181:15 188:17]
  wire  _GEN_487 = stateReg & (_offset_2_T_1 & _offset_3_T_3 & io_isComplex_3); // @[Complex.scala 178:39 182:15 188:17]
  wire  _GEN_488 = stateReg & (_offset_3_T_14 & _offset_4_T_5 & io_isComplex_4); // @[Complex.scala 178:39 183:15 188:17]
  wire  _GEN_489 = stateReg & (numOfUop == 4'h8 & _offset_2_T_1 & _offset_3_T_3 & _offset_4_T_5 & _offset_5_T_7 |
    numOfUop < 4'h8 & io_isComplex_5 & _offset_5_T_7 & _offset_4_T_5 & _offset_3_T_3 & _offset_2_T_1); // @[Complex.scala 178:39 184:15 188:17]
  wire  _GEN_490 = _T_17 | _GEN_484; // @[Complex.scala 173:53 174:15]
  wire  _GEN_491 = _T_17 ? 1'h0 : _GEN_485; // @[Complex.scala 173:53 176:17]
  wire  _GEN_492 = _T_17 ? 1'h0 : _GEN_486; // @[Complex.scala 173:53 176:17]
  wire  _GEN_493 = _T_17 ? 1'h0 : _GEN_487; // @[Complex.scala 173:53 176:17]
  wire  _GEN_494 = _T_17 ? 1'h0 : _GEN_488; // @[Complex.scala 173:53 176:17]
  wire  _GEN_495 = _T_17 ? 1'h0 : _GEN_489; // @[Complex.scala 173:53 176:17]
  wire  offset_0 = _T_14 ? 1'h0 : _GEN_490; // @[Complex.scala 166:48 167:15]
  wire  offset_1 = _T_14 ? numOfUop == 4'h6 | numOfUop < 4'h6 & io_isComplex_1 : _GEN_491; // @[Complex.scala 166:48 168:15]
  wire  offset_2 = _T_14 ? numOfUop == 4'h5 & ~io_isComplex_1 | numOfUop < 4'h5 & io_isComplex_2 & ~io_isComplex_1 :
    _GEN_492; // @[Complex.scala 166:48 169:15]
  wire  offset_3 = _T_14 ? numOfUop == 4'h4 & _offset_2_T_1 & ~io_isComplex_2 | numOfUop < 4'h4 & io_isComplex_3 & ~
    io_isComplex_2 & _offset_2_T_1 : _GEN_493; // @[Complex.scala 166:48 170:15]
  wire  offset_4 = _T_14 ? numOfUop == 4'h3 & _offset_2_T_1 & _offset_3_T_3 & ~io_isComplex_3 | numOfUop < 4'h3 &
    io_isComplex_4 & ~io_isComplex_3 & _offset_3_T_3 & _offset_2_T_1 : _GEN_494; // @[Complex.scala 166:48 171:15]
  wire  offset_5 = _T_14 ? numOfUop == 4'h2 & _offset_2_T_1 & _offset_3_T_3 & _offset_4_T_5 & ~io_isComplex_4 | numOfUop
     < 4'h2 & io_isComplex_5 & ~io_isComplex_4 & _offset_4_T_5 & _offset_3_T_3 & _offset_2_T_1 : _GEN_495; // @[Complex.scala 166:48 172:15]
  reg  REG_0; // @[Complex.scala 191:23]
  reg  REG_1; // @[Complex.scala 191:23]
  reg  REG_2; // @[Complex.scala 191:23]
  reg  REG_3; // @[Complex.scala 191:23]
  reg  REG_4; // @[Complex.scala 191:23]
  reg  REG_5; // @[Complex.scala 191:23]
  wire [2:0] _GEN_502 = offset_5 ? 3'h5 : 3'h6; // @[Complex.scala 203:26 204:17 206:17]
  wire [2:0] _GEN_503 = offset_4 ? 3'h4 : _GEN_502; // @[Complex.scala 201:26 202:17]
  wire [2:0] _GEN_504 = offset_3 ? 3'h3 : _GEN_503; // @[Complex.scala 199:26 200:17]
  wire [2:0] _GEN_505 = offset_2 ? 3'h2 : _GEN_504; // @[Complex.scala 197:26 198:17]
  wire [2:0] _GEN_506 = offset_1 ? 3'h1 : _GEN_505; // @[Complex.scala 195:26 196:17]
  assign io_vecCtrl_0_srcType_0 = vecCtrlReg_0_srcType_0; // @[Complex.scala 209:14]
  assign io_vecCtrl_0_srcType_1 = vecCtrlReg_0_srcType_1; // @[Complex.scala 209:14]
  assign io_vecCtrl_0_lsrc_0 = vecCtrlReg_0_lsrc_0; // @[Complex.scala 209:14]
  assign io_vecCtrl_0_lsrc_1 = vecCtrlReg_0_lsrc_1; // @[Complex.scala 209:14]
  assign io_vecCtrl_0_ldest = vecCtrlReg_0_ldest; // @[Complex.scala 209:14]
  assign io_vecCtrl_0_fuType = vecCtrlReg_0_fuType; // @[Complex.scala 209:14]
  assign io_vecCtrl_0_fuOpType = vecCtrlReg_0_fuOpType; // @[Complex.scala 209:14]
  assign io_vecCtrl_0_vecWen = vecCtrlReg_0_vecWen; // @[Complex.scala 209:14]
  assign io_vecCtrl_0_imm = vecCtrlReg_0_imm; // @[Complex.scala 209:14]
  assign io_vecCtrl_1_srcType_0 = vecCtrlReg_1_srcType_0; // @[Complex.scala 209:14]
  assign io_vecCtrl_1_srcType_1 = vecCtrlReg_1_srcType_1; // @[Complex.scala 209:14]
  assign io_vecCtrl_1_lsrc_0 = vecCtrlReg_1_lsrc_0; // @[Complex.scala 209:14]
  assign io_vecCtrl_1_lsrc_1 = vecCtrlReg_1_lsrc_1; // @[Complex.scala 209:14]
  assign io_vecCtrl_1_ldest = vecCtrlReg_1_ldest; // @[Complex.scala 209:14]
  assign io_vecCtrl_1_fuType = vecCtrlReg_1_fuType; // @[Complex.scala 209:14]
  assign io_vecCtrl_1_fuOpType = vecCtrlReg_1_fuOpType; // @[Complex.scala 209:14]
  assign io_vecCtrl_1_vecWen = vecCtrlReg_1_vecWen; // @[Complex.scala 209:14]
  assign io_vecCtrl_1_imm = vecCtrlReg_1_imm; // @[Complex.scala 209:14]
  assign io_vecCtrl_2_srcType_0 = vecCtrlReg_2_srcType_0; // @[Complex.scala 209:14]
  assign io_vecCtrl_2_srcType_1 = vecCtrlReg_2_srcType_1; // @[Complex.scala 209:14]
  assign io_vecCtrl_2_lsrc_0 = vecCtrlReg_2_lsrc_0; // @[Complex.scala 209:14]
  assign io_vecCtrl_2_lsrc_1 = vecCtrlReg_2_lsrc_1; // @[Complex.scala 209:14]
  assign io_vecCtrl_2_ldest = vecCtrlReg_2_ldest; // @[Complex.scala 209:14]
  assign io_vecCtrl_2_fuType = vecCtrlReg_2_fuType; // @[Complex.scala 209:14]
  assign io_vecCtrl_2_fuOpType = vecCtrlReg_2_fuOpType; // @[Complex.scala 209:14]
  assign io_vecCtrl_2_vecWen = vecCtrlReg_2_vecWen; // @[Complex.scala 209:14]
  assign io_vecCtrl_2_imm = vecCtrlReg_2_imm; // @[Complex.scala 209:14]
  assign io_vecCtrl_3_srcType_0 = vecCtrlReg_3_srcType_0; // @[Complex.scala 209:14]
  assign io_vecCtrl_3_srcType_1 = vecCtrlReg_3_srcType_1; // @[Complex.scala 209:14]
  assign io_vecCtrl_3_lsrc_0 = vecCtrlReg_3_lsrc_0; // @[Complex.scala 209:14]
  assign io_vecCtrl_3_lsrc_1 = vecCtrlReg_3_lsrc_1; // @[Complex.scala 209:14]
  assign io_vecCtrl_3_ldest = vecCtrlReg_3_ldest; // @[Complex.scala 209:14]
  assign io_vecCtrl_3_fuType = vecCtrlReg_3_fuType; // @[Complex.scala 209:14]
  assign io_vecCtrl_3_fuOpType = vecCtrlReg_3_fuOpType; // @[Complex.scala 209:14]
  assign io_vecCtrl_3_vecWen = vecCtrlReg_3_vecWen; // @[Complex.scala 209:14]
  assign io_vecCtrl_3_imm = vecCtrlReg_3_imm; // @[Complex.scala 209:14]
  assign io_vecCtrl_4_srcType_0 = vecCtrlReg_4_srcType_0; // @[Complex.scala 209:14]
  assign io_vecCtrl_4_srcType_1 = vecCtrlReg_4_srcType_1; // @[Complex.scala 209:14]
  assign io_vecCtrl_4_lsrc_0 = vecCtrlReg_4_lsrc_0; // @[Complex.scala 209:14]
  assign io_vecCtrl_4_lsrc_1 = vecCtrlReg_4_lsrc_1; // @[Complex.scala 209:14]
  assign io_vecCtrl_4_ldest = vecCtrlReg_4_ldest; // @[Complex.scala 209:14]
  assign io_vecCtrl_4_fuType = vecCtrlReg_4_fuType; // @[Complex.scala 209:14]
  assign io_vecCtrl_4_fuOpType = vecCtrlReg_4_fuOpType; // @[Complex.scala 209:14]
  assign io_vecCtrl_4_vecWen = vecCtrlReg_4_vecWen; // @[Complex.scala 209:14]
  assign io_vecCtrl_4_imm = vecCtrlReg_4_imm; // @[Complex.scala 209:14]
  assign io_vecCtrl_5_srcType_0 = vecCtrlReg_5_srcType_0; // @[Complex.scala 209:14]
  assign io_vecCtrl_5_srcType_1 = vecCtrlReg_5_srcType_1; // @[Complex.scala 209:14]
  assign io_vecCtrl_5_lsrc_0 = vecCtrlReg_5_lsrc_0; // @[Complex.scala 209:14]
  assign io_vecCtrl_5_lsrc_1 = vecCtrlReg_5_lsrc_1; // @[Complex.scala 209:14]
  assign io_vecCtrl_5_ldest = vecCtrlReg_5_ldest; // @[Complex.scala 209:14]
  assign io_vecCtrl_5_fuType = vecCtrlReg_5_fuType; // @[Complex.scala 209:14]
  assign io_vecCtrl_5_fuOpType = vecCtrlReg_5_fuOpType; // @[Complex.scala 209:14]
  assign io_vecCtrl_5_vecWen = vecCtrlReg_5_vecWen; // @[Complex.scala 209:14]
  assign io_vecCtrl_5_imm = vecCtrlReg_5_imm; // @[Complex.scala 209:14]
  assign io_num = io_num_REG; // @[Complex.scala 164:10]
  assign io_offset_0 = REG_0; // @[Complex.scala 191:13]
  assign io_offset_1 = REG_1; // @[Complex.scala 191:13]
  assign io_offset_2 = REG_2; // @[Complex.scala 191:13]
  assign io_offset_3 = REG_3; // @[Complex.scala 191:13]
  assign io_offset_4 = REG_4; // @[Complex.scala 191:13]
  assign io_offset_5 = REG_5; // @[Complex.scala 191:13]
  assign io_strIndex = offset_0 ? 3'h0 : _GEN_506; // @[Complex.scala 193:19 194:17]
  always @(posedge clock) begin
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_0_srcType_0 <= vecCtrlBundle_0_srcType_0;
    end else if (stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_0_srcType_0 <= vecCtrlBundle_0_srcType_0; // @[Complex.scala 147:23]
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_0_srcType_1 <= vecCtrlBundle_0_srcType_0;
    end else if (stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_0_srcType_1 <= vecCtrlBundle_0_srcType_0; // @[Complex.scala 147:23]
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_0_lsrc_0 <= vecCtrlBundle_0_lsrc_0;
    end else if (stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_0_lsrc_0 <= vecCtrlBundle_6_lsrc_0; // @[Complex.scala 147:23]
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_0_lsrc_1 <= vecCtrlBundle_0_lsrc_1;
    end else if (stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_0_lsrc_1 <= vecCtrlBundle_6_lsrc_1; // @[Complex.scala 147:23]
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_0_ldest <= vecCtrlBundle_0_ldest;
    end else if (stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_0_ldest <= vecCtrlBundle_6_ldest; // @[Complex.scala 147:23]
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_0_fuType <= vecCtrlBundle_0_fuType;
    end else if (stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_0_fuType <= vecCtrlBundle_0_fuType; // @[Complex.scala 147:23]
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_0_fuOpType <= vecCtrlBundle_0_fuOpType;
    end else if (stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_0_fuOpType <= vecCtrlBundle_0_fuOpType; // @[Complex.scala 147:23]
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_0_vecWen <= vecCtrlBundle_0_vecWen;
    end else if (stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_0_vecWen <= vecCtrlBundle_0_vecWen; // @[Complex.scala 147:23]
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_0_imm <= vecCtrlBundle_0_imm;
    end else if (stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_0_imm <= vecCtrlBundle_0_imm; // @[Complex.scala 147:23]
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_1_srcType_0 <= vecCtrlBundle_0_srcType_0;
    end else if (stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_1_srcType_0 <= vecCtrlBundle_0_srcType_0; // @[Complex.scala 147:23]
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_1_srcType_1 <= vecCtrlBundle_0_srcType_0;
    end else if (stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_1_srcType_1 <= vecCtrlBundle_0_srcType_0; // @[Complex.scala 147:23]
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_1_lsrc_0 <= vecCtrlBundle_1_lsrc_0;
    end else if (stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_1_lsrc_0 <= vecCtrlBundle_7_lsrc_0; // @[Complex.scala 147:23]
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_1_lsrc_1 <= vecCtrlBundle_1_lsrc_1;
    end else if (stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_1_lsrc_1 <= vecCtrlBundle_7_lsrc_1; // @[Complex.scala 147:23]
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_1_ldest <= vecCtrlBundle_1_ldest;
    end else if (stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_1_ldest <= vecCtrlBundle_7_ldest; // @[Complex.scala 147:23]
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_1_fuType <= vecCtrlBundle_0_fuType;
    end else if (stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_1_fuType <= vecCtrlBundle_0_fuType; // @[Complex.scala 147:23]
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_1_fuOpType <= vecCtrlBundle_0_fuOpType;
    end else if (stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_1_fuOpType <= vecCtrlBundle_0_fuOpType; // @[Complex.scala 147:23]
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_1_vecWen <= vecCtrlBundle_0_vecWen;
    end else if (stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_1_vecWen <= vecCtrlBundle_0_vecWen; // @[Complex.scala 147:23]
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_1_imm <= vecCtrlBundle_0_imm;
    end else if (stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_1_imm <= vecCtrlBundle_0_imm; // @[Complex.scala 147:23]
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      if (7'h57 == io_instr[6:0]) begin // @[Complex.scala 61:26]
        if (3'h0 == io_instr[14:12]) begin // @[Complex.scala 63:32]
          if (6'h0 == io_instr[31:26]) begin // @[Complex.scala 65:36]
            vecCtrlReg_2_srcType_0 <= 3'h4; // @[Complex.scala 69:45]
          end else begin
            vecCtrlReg_2_srcType_0 <= 3'h0; // @[Complex.scala 32:33]
          end
        end else begin
          vecCtrlReg_2_srcType_0 <= 3'h0; // @[Complex.scala 32:33]
        end
      end else begin
        vecCtrlReg_2_srcType_0 <= 3'h0; // @[Complex.scala 32:33]
      end
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      if (7'h57 == io_instr[6:0]) begin // @[Complex.scala 61:26]
        if (3'h0 == io_instr[14:12]) begin // @[Complex.scala 63:32]
          if (6'h0 == io_instr[31:26]) begin // @[Complex.scala 65:36]
            vecCtrlReg_2_srcType_1 <= 3'h4; // @[Complex.scala 69:45]
          end else begin
            vecCtrlReg_2_srcType_1 <= 3'h0; // @[Complex.scala 32:33]
          end
        end else begin
          vecCtrlReg_2_srcType_1 <= 3'h0; // @[Complex.scala 32:33]
        end
      end else begin
        vecCtrlReg_2_srcType_1 <= 3'h0; // @[Complex.scala 32:33]
      end
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_2_lsrc_0 <= vecCtrlBundle_2_lsrc_0;
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_2_lsrc_1 <= vecCtrlBundle_2_lsrc_1;
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_2_ldest <= vecCtrlBundle_2_ldest;
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      if (7'h57 == io_instr[6:0]) begin // @[Complex.scala 61:26]
        if (3'h0 == io_instr[14:12]) begin // @[Complex.scala 63:32]
          if (6'h0 == io_instr[31:26]) begin // @[Complex.scala 65:36]
            vecCtrlReg_2_fuType <= 5'h18; // @[Complex.scala 78:41]
          end else begin
            vecCtrlReg_2_fuType <= 5'h0; // @[Complex.scala 41:29]
          end
        end else begin
          vecCtrlReg_2_fuType <= 5'h0; // @[Complex.scala 41:29]
        end
      end else begin
        vecCtrlReg_2_fuType <= 5'h0; // @[Complex.scala 41:29]
      end
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_2_fuOpType <= vecCtrlBundle_0_fuOpType;
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_2_vecWen <= vecCtrlBundle_0_vecWen;
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      if (7'h57 == io_instr[6:0]) begin // @[Complex.scala 61:26]
        if (3'h0 == io_instr[14:12]) begin // @[Complex.scala 63:32]
          if (6'h0 == io_instr[31:26]) begin // @[Complex.scala 65:36]
            vecCtrlReg_2_imm <= _vecCtrlBundle_0_imm_T_20; // @[Complex.scala 90:38]
          end else begin
            vecCtrlReg_2_imm <= 20'h0; // @[Complex.scala 53:26]
          end
        end else begin
          vecCtrlReg_2_imm <= 20'h0; // @[Complex.scala 53:26]
        end
      end else begin
        vecCtrlReg_2_imm <= 20'h0; // @[Complex.scala 53:26]
      end
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      if (7'h57 == io_instr[6:0]) begin // @[Complex.scala 61:26]
        if (3'h0 == io_instr[14:12]) begin // @[Complex.scala 63:32]
          if (6'h0 == io_instr[31:26]) begin // @[Complex.scala 65:36]
            vecCtrlReg_3_srcType_0 <= 3'h4; // @[Complex.scala 69:45]
          end else begin
            vecCtrlReg_3_srcType_0 <= 3'h0; // @[Complex.scala 32:33]
          end
        end else begin
          vecCtrlReg_3_srcType_0 <= 3'h0; // @[Complex.scala 32:33]
        end
      end else begin
        vecCtrlReg_3_srcType_0 <= 3'h0; // @[Complex.scala 32:33]
      end
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      if (7'h57 == io_instr[6:0]) begin // @[Complex.scala 61:26]
        if (3'h0 == io_instr[14:12]) begin // @[Complex.scala 63:32]
          if (6'h0 == io_instr[31:26]) begin // @[Complex.scala 65:36]
            vecCtrlReg_3_srcType_1 <= 3'h4; // @[Complex.scala 69:45]
          end else begin
            vecCtrlReg_3_srcType_1 <= 3'h0; // @[Complex.scala 32:33]
          end
        end else begin
          vecCtrlReg_3_srcType_1 <= 3'h0; // @[Complex.scala 32:33]
        end
      end else begin
        vecCtrlReg_3_srcType_1 <= 3'h0; // @[Complex.scala 32:33]
      end
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_3_lsrc_0 <= vecCtrlBundle_3_lsrc_0;
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_3_lsrc_1 <= vecCtrlBundle_3_lsrc_1;
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_3_ldest <= vecCtrlBundle_3_ldest;
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      if (7'h57 == io_instr[6:0]) begin // @[Complex.scala 61:26]
        if (3'h0 == io_instr[14:12]) begin // @[Complex.scala 63:32]
          if (6'h0 == io_instr[31:26]) begin // @[Complex.scala 65:36]
            vecCtrlReg_3_fuType <= 5'h18; // @[Complex.scala 78:41]
          end else begin
            vecCtrlReg_3_fuType <= 5'h0; // @[Complex.scala 41:29]
          end
        end else begin
          vecCtrlReg_3_fuType <= 5'h0; // @[Complex.scala 41:29]
        end
      end else begin
        vecCtrlReg_3_fuType <= 5'h0; // @[Complex.scala 41:29]
      end
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_3_fuOpType <= vecCtrlBundle_0_fuOpType;
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_3_vecWen <= vecCtrlBundle_0_vecWen;
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      if (7'h57 == io_instr[6:0]) begin // @[Complex.scala 61:26]
        if (3'h0 == io_instr[14:12]) begin // @[Complex.scala 63:32]
          if (6'h0 == io_instr[31:26]) begin // @[Complex.scala 65:36]
            vecCtrlReg_3_imm <= _vecCtrlBundle_0_imm_T_20; // @[Complex.scala 90:38]
          end else begin
            vecCtrlReg_3_imm <= 20'h0; // @[Complex.scala 53:26]
          end
        end else begin
          vecCtrlReg_3_imm <= 20'h0; // @[Complex.scala 53:26]
        end
      end else begin
        vecCtrlReg_3_imm <= 20'h0; // @[Complex.scala 53:26]
      end
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      if (7'h57 == io_instr[6:0]) begin // @[Complex.scala 61:26]
        if (3'h0 == io_instr[14:12]) begin // @[Complex.scala 63:32]
          if (6'h0 == io_instr[31:26]) begin // @[Complex.scala 65:36]
            vecCtrlReg_4_srcType_0 <= 3'h4; // @[Complex.scala 69:45]
          end else begin
            vecCtrlReg_4_srcType_0 <= 3'h0; // @[Complex.scala 32:33]
          end
        end else begin
          vecCtrlReg_4_srcType_0 <= 3'h0; // @[Complex.scala 32:33]
        end
      end else begin
        vecCtrlReg_4_srcType_0 <= 3'h0; // @[Complex.scala 32:33]
      end
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      if (7'h57 == io_instr[6:0]) begin // @[Complex.scala 61:26]
        if (3'h0 == io_instr[14:12]) begin // @[Complex.scala 63:32]
          if (6'h0 == io_instr[31:26]) begin // @[Complex.scala 65:36]
            vecCtrlReg_4_srcType_1 <= 3'h4; // @[Complex.scala 69:45]
          end else begin
            vecCtrlReg_4_srcType_1 <= 3'h0; // @[Complex.scala 32:33]
          end
        end else begin
          vecCtrlReg_4_srcType_1 <= 3'h0; // @[Complex.scala 32:33]
        end
      end else begin
        vecCtrlReg_4_srcType_1 <= 3'h0; // @[Complex.scala 32:33]
      end
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_4_lsrc_0 <= vecCtrlBundle_4_lsrc_0;
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_4_lsrc_1 <= vecCtrlBundle_4_lsrc_1;
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_4_ldest <= vecCtrlBundle_4_ldest;
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      if (7'h57 == io_instr[6:0]) begin // @[Complex.scala 61:26]
        if (3'h0 == io_instr[14:12]) begin // @[Complex.scala 63:32]
          if (6'h0 == io_instr[31:26]) begin // @[Complex.scala 65:36]
            vecCtrlReg_4_fuType <= 5'h18; // @[Complex.scala 78:41]
          end else begin
            vecCtrlReg_4_fuType <= 5'h0; // @[Complex.scala 41:29]
          end
        end else begin
          vecCtrlReg_4_fuType <= 5'h0; // @[Complex.scala 41:29]
        end
      end else begin
        vecCtrlReg_4_fuType <= 5'h0; // @[Complex.scala 41:29]
      end
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_4_fuOpType <= vecCtrlBundle_0_fuOpType;
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_4_vecWen <= vecCtrlBundle_0_vecWen;
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      if (7'h57 == io_instr[6:0]) begin // @[Complex.scala 61:26]
        if (3'h0 == io_instr[14:12]) begin // @[Complex.scala 63:32]
          if (6'h0 == io_instr[31:26]) begin // @[Complex.scala 65:36]
            vecCtrlReg_4_imm <= _vecCtrlBundle_0_imm_T_20; // @[Complex.scala 90:38]
          end else begin
            vecCtrlReg_4_imm <= 20'h0; // @[Complex.scala 53:26]
          end
        end else begin
          vecCtrlReg_4_imm <= 20'h0; // @[Complex.scala 53:26]
        end
      end else begin
        vecCtrlReg_4_imm <= 20'h0; // @[Complex.scala 53:26]
      end
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      if (7'h57 == io_instr[6:0]) begin // @[Complex.scala 61:26]
        if (3'h0 == io_instr[14:12]) begin // @[Complex.scala 63:32]
          if (6'h0 == io_instr[31:26]) begin // @[Complex.scala 65:36]
            vecCtrlReg_5_srcType_0 <= 3'h4; // @[Complex.scala 69:45]
          end else begin
            vecCtrlReg_5_srcType_0 <= 3'h0; // @[Complex.scala 32:33]
          end
        end else begin
          vecCtrlReg_5_srcType_0 <= 3'h0; // @[Complex.scala 32:33]
        end
      end else begin
        vecCtrlReg_5_srcType_0 <= 3'h0; // @[Complex.scala 32:33]
      end
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      if (7'h57 == io_instr[6:0]) begin // @[Complex.scala 61:26]
        if (3'h0 == io_instr[14:12]) begin // @[Complex.scala 63:32]
          if (6'h0 == io_instr[31:26]) begin // @[Complex.scala 65:36]
            vecCtrlReg_5_srcType_1 <= 3'h4; // @[Complex.scala 69:45]
          end else begin
            vecCtrlReg_5_srcType_1 <= 3'h0; // @[Complex.scala 32:33]
          end
        end else begin
          vecCtrlReg_5_srcType_1 <= 3'h0; // @[Complex.scala 32:33]
        end
      end else begin
        vecCtrlReg_5_srcType_1 <= 3'h0; // @[Complex.scala 32:33]
      end
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_5_lsrc_0 <= vecCtrlBundle_5_lsrc_0;
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_5_lsrc_1 <= vecCtrlBundle_5_lsrc_1;
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_5_ldest <= vecCtrlBundle_5_ldest;
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      if (7'h57 == io_instr[6:0]) begin // @[Complex.scala 61:26]
        if (3'h0 == io_instr[14:12]) begin // @[Complex.scala 63:32]
          if (6'h0 == io_instr[31:26]) begin // @[Complex.scala 65:36]
            vecCtrlReg_5_fuType <= 5'h18; // @[Complex.scala 78:41]
          end else begin
            vecCtrlReg_5_fuType <= 5'h0; // @[Complex.scala 41:29]
          end
        end else begin
          vecCtrlReg_5_fuType <= 5'h0; // @[Complex.scala 41:29]
        end
      end else begin
        vecCtrlReg_5_fuType <= 5'h0; // @[Complex.scala 41:29]
      end
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_5_fuOpType <= vecCtrlBundle_0_fuOpType;
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      vecCtrlReg_5_vecWen <= vecCtrlBundle_0_vecWen;
    end
    if (~stateReg) begin // @[Complex.scala 122:20]
      if (7'h57 == io_instr[6:0]) begin // @[Complex.scala 61:26]
        if (3'h0 == io_instr[14:12]) begin // @[Complex.scala 63:32]
          if (6'h0 == io_instr[31:26]) begin // @[Complex.scala 65:36]
            vecCtrlReg_5_imm <= _vecCtrlBundle_0_imm_T_20; // @[Complex.scala 90:38]
          end else begin
            vecCtrlReg_5_imm <= 20'h0; // @[Complex.scala 53:26]
          end
        end else begin
          vecCtrlReg_5_imm <= 20'h0; // @[Complex.scala 53:26]
        end
      end else begin
        vecCtrlReg_5_imm <= 20'h0; // @[Complex.scala 53:26]
      end
    end
    if (reset) begin // @[Complex.scala 121:25]
      stateReg <= 1'h0; // @[Complex.scala 121:25]
    end else if (~stateReg) begin // @[Complex.scala 122:20]
      if (numOfUop <= 4'h6) begin // @[Complex.scala 124:29]
        stateReg <= 1'h0; // @[Complex.scala 126:18]
      end else begin
        stateReg <= 1'h1; // @[Complex.scala 135:18]
      end
    end else if (stateReg) begin // @[Complex.scala 122:20]
      stateReg <= 1'h0; // @[Complex.scala 145:16]
    end
    io_num_REG <= _GEN_483[2:0]; // @[Complex.scala 118:17]
    if (_T_14) begin // @[Complex.scala 166:48]
      REG_0 <= 1'h0; // @[Complex.scala 167:15]
    end else begin
      REG_0 <= _GEN_490;
    end
    if (_T_14) begin // @[Complex.scala 166:48]
      REG_1 <= numOfUop == 4'h6 | numOfUop < 4'h6 & io_isComplex_1; // @[Complex.scala 168:15]
    end else if (_T_17) begin // @[Complex.scala 173:53]
      REG_1 <= 1'h0; // @[Complex.scala 176:17]
    end else begin
      REG_1 <= _GEN_485;
    end
    if (_T_14) begin // @[Complex.scala 166:48]
      REG_2 <= numOfUop == 4'h5 & ~io_isComplex_1 | numOfUop < 4'h5 & io_isComplex_2 & ~io_isComplex_1; // @[Complex.scala 169:15]
    end else if (_T_17) begin // @[Complex.scala 173:53]
      REG_2 <= 1'h0; // @[Complex.scala 176:17]
    end else begin
      REG_2 <= _GEN_486;
    end
    if (_T_14) begin // @[Complex.scala 166:48]
      REG_3 <= numOfUop == 4'h4 & _offset_2_T_1 & ~io_isComplex_2 | numOfUop < 4'h4 & io_isComplex_3 & ~io_isComplex_2
         & _offset_2_T_1; // @[Complex.scala 170:15]
    end else if (_T_17) begin // @[Complex.scala 173:53]
      REG_3 <= 1'h0; // @[Complex.scala 176:17]
    end else begin
      REG_3 <= _GEN_487;
    end
    if (_T_14) begin // @[Complex.scala 166:48]
      REG_4 <= numOfUop == 4'h3 & _offset_2_T_1 & _offset_3_T_3 & ~io_isComplex_3 | numOfUop < 4'h3 & io_isComplex_4 & ~
        io_isComplex_3 & _offset_3_T_3 & _offset_2_T_1; // @[Complex.scala 171:15]
    end else if (_T_17) begin // @[Complex.scala 173:53]
      REG_4 <= 1'h0; // @[Complex.scala 176:17]
    end else begin
      REG_4 <= _GEN_488;
    end
    if (_T_14) begin // @[Complex.scala 166:48]
      REG_5 <= numOfUop == 4'h2 & _offset_2_T_1 & _offset_3_T_3 & _offset_4_T_5 & ~io_isComplex_4 | numOfUop < 4'h2 &
        io_isComplex_5 & ~io_isComplex_4 & _offset_4_T_5 & _offset_3_T_3 & _offset_2_T_1; // @[Complex.scala 172:15]
    end else if (_T_17) begin // @[Complex.scala 173:53]
      REG_5 <= 1'h0; // @[Complex.scala 176:17]
    end else begin
      REG_5 <= _GEN_489;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  vecCtrlReg_0_srcType_0 = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  vecCtrlReg_0_srcType_1 = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  vecCtrlReg_0_lsrc_0 = _RAND_2[5:0];
  _RAND_3 = {1{`RANDOM}};
  vecCtrlReg_0_lsrc_1 = _RAND_3[5:0];
  _RAND_4 = {1{`RANDOM}};
  vecCtrlReg_0_ldest = _RAND_4[5:0];
  _RAND_5 = {1{`RANDOM}};
  vecCtrlReg_0_fuType = _RAND_5[4:0];
  _RAND_6 = {1{`RANDOM}};
  vecCtrlReg_0_fuOpType = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  vecCtrlReg_0_vecWen = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  vecCtrlReg_0_imm = _RAND_8[19:0];
  _RAND_9 = {1{`RANDOM}};
  vecCtrlReg_1_srcType_0 = _RAND_9[2:0];
  _RAND_10 = {1{`RANDOM}};
  vecCtrlReg_1_srcType_1 = _RAND_10[2:0];
  _RAND_11 = {1{`RANDOM}};
  vecCtrlReg_1_lsrc_0 = _RAND_11[5:0];
  _RAND_12 = {1{`RANDOM}};
  vecCtrlReg_1_lsrc_1 = _RAND_12[5:0];
  _RAND_13 = {1{`RANDOM}};
  vecCtrlReg_1_ldest = _RAND_13[5:0];
  _RAND_14 = {1{`RANDOM}};
  vecCtrlReg_1_fuType = _RAND_14[4:0];
  _RAND_15 = {1{`RANDOM}};
  vecCtrlReg_1_fuOpType = _RAND_15[7:0];
  _RAND_16 = {1{`RANDOM}};
  vecCtrlReg_1_vecWen = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  vecCtrlReg_1_imm = _RAND_17[19:0];
  _RAND_18 = {1{`RANDOM}};
  vecCtrlReg_2_srcType_0 = _RAND_18[2:0];
  _RAND_19 = {1{`RANDOM}};
  vecCtrlReg_2_srcType_1 = _RAND_19[2:0];
  _RAND_20 = {1{`RANDOM}};
  vecCtrlReg_2_lsrc_0 = _RAND_20[5:0];
  _RAND_21 = {1{`RANDOM}};
  vecCtrlReg_2_lsrc_1 = _RAND_21[5:0];
  _RAND_22 = {1{`RANDOM}};
  vecCtrlReg_2_ldest = _RAND_22[5:0];
  _RAND_23 = {1{`RANDOM}};
  vecCtrlReg_2_fuType = _RAND_23[4:0];
  _RAND_24 = {1{`RANDOM}};
  vecCtrlReg_2_fuOpType = _RAND_24[7:0];
  _RAND_25 = {1{`RANDOM}};
  vecCtrlReg_2_vecWen = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  vecCtrlReg_2_imm = _RAND_26[19:0];
  _RAND_27 = {1{`RANDOM}};
  vecCtrlReg_3_srcType_0 = _RAND_27[2:0];
  _RAND_28 = {1{`RANDOM}};
  vecCtrlReg_3_srcType_1 = _RAND_28[2:0];
  _RAND_29 = {1{`RANDOM}};
  vecCtrlReg_3_lsrc_0 = _RAND_29[5:0];
  _RAND_30 = {1{`RANDOM}};
  vecCtrlReg_3_lsrc_1 = _RAND_30[5:0];
  _RAND_31 = {1{`RANDOM}};
  vecCtrlReg_3_ldest = _RAND_31[5:0];
  _RAND_32 = {1{`RANDOM}};
  vecCtrlReg_3_fuType = _RAND_32[4:0];
  _RAND_33 = {1{`RANDOM}};
  vecCtrlReg_3_fuOpType = _RAND_33[7:0];
  _RAND_34 = {1{`RANDOM}};
  vecCtrlReg_3_vecWen = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  vecCtrlReg_3_imm = _RAND_35[19:0];
  _RAND_36 = {1{`RANDOM}};
  vecCtrlReg_4_srcType_0 = _RAND_36[2:0];
  _RAND_37 = {1{`RANDOM}};
  vecCtrlReg_4_srcType_1 = _RAND_37[2:0];
  _RAND_38 = {1{`RANDOM}};
  vecCtrlReg_4_lsrc_0 = _RAND_38[5:0];
  _RAND_39 = {1{`RANDOM}};
  vecCtrlReg_4_lsrc_1 = _RAND_39[5:0];
  _RAND_40 = {1{`RANDOM}};
  vecCtrlReg_4_ldest = _RAND_40[5:0];
  _RAND_41 = {1{`RANDOM}};
  vecCtrlReg_4_fuType = _RAND_41[4:0];
  _RAND_42 = {1{`RANDOM}};
  vecCtrlReg_4_fuOpType = _RAND_42[7:0];
  _RAND_43 = {1{`RANDOM}};
  vecCtrlReg_4_vecWen = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  vecCtrlReg_4_imm = _RAND_44[19:0];
  _RAND_45 = {1{`RANDOM}};
  vecCtrlReg_5_srcType_0 = _RAND_45[2:0];
  _RAND_46 = {1{`RANDOM}};
  vecCtrlReg_5_srcType_1 = _RAND_46[2:0];
  _RAND_47 = {1{`RANDOM}};
  vecCtrlReg_5_lsrc_0 = _RAND_47[5:0];
  _RAND_48 = {1{`RANDOM}};
  vecCtrlReg_5_lsrc_1 = _RAND_48[5:0];
  _RAND_49 = {1{`RANDOM}};
  vecCtrlReg_5_ldest = _RAND_49[5:0];
  _RAND_50 = {1{`RANDOM}};
  vecCtrlReg_5_fuType = _RAND_50[4:0];
  _RAND_51 = {1{`RANDOM}};
  vecCtrlReg_5_fuOpType = _RAND_51[7:0];
  _RAND_52 = {1{`RANDOM}};
  vecCtrlReg_5_vecWen = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  vecCtrlReg_5_imm = _RAND_53[19:0];
  _RAND_54 = {1{`RANDOM}};
  stateReg = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  io_num_REG = _RAND_55[2:0];
  _RAND_56 = {1{`RANDOM}};
  REG_0 = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  REG_1 = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  REG_2 = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  REG_3 = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  REG_4 = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  REG_5 = _RAND_61[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Simple(
  input         clock,
  input  [31:0] io_instr,
  output [2:0]  io_vecCtrl_srcType_0,
  output [2:0]  io_vecCtrl_srcType_1,
  output [5:0]  io_vecCtrl_lsrc_0,
  output [5:0]  io_vecCtrl_lsrc_1,
  output [5:0]  io_vecCtrl_ldest,
  output [4:0]  io_vecCtrl_fuType,
  output [7:0]  io_vecCtrl_fuOpType,
  output        io_vecCtrl_vecWen,
  output [19:0] io_vecCtrl_imm
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
`endif // RANDOMIZE_REG_INIT
  wire  _T_5 = 6'h0 == io_instr[31:26]; // @[Simple.scala 46:36]
  wire [11:0] vecCtrl_imm_minBits_1 = {io_instr[31:25],io_instr[11:7]}; // @[Cat.scala 33:92]
  wire [19:0] _vecCtrl_imm_T_20 = {{8'd0}, vecCtrl_imm_minBits_1}; // @[Mux.scala 27:73]
  wire [4:0] _GEN_2 = 6'h0 == io_instr[31:26] ? io_instr[19:15] : 5'h0; // @[Simple.scala 19:19 46:36 53:31]
  wire [4:0] _GEN_3 = 6'h0 == io_instr[31:26] ? io_instr[24:20] : 5'h0; // @[Simple.scala 20:19 46:36 54:31]
  wire [4:0] _GEN_4 = 6'h0 == io_instr[31:26] ? io_instr[11:7] : 5'h0; // @[Simple.scala 23:17 46:36 57:29]
  wire [6:0] _GEN_6 = 6'h0 == io_instr[31:26] ? 7'hf : 7'h0; // @[Simple.scala 25:20 46:36 59:32]
  wire [4:0] _GEN_11 = 3'h0 == io_instr[14:12] ? _GEN_2 : 5'h0; // @[Simple.scala 19:19 44:32]
  wire [4:0] _GEN_12 = 3'h0 == io_instr[14:12] ? _GEN_3 : 5'h0; // @[Simple.scala 20:19 44:32]
  wire [4:0] _GEN_13 = 3'h0 == io_instr[14:12] ? _GEN_4 : 5'h0; // @[Simple.scala 23:17 44:32]
  wire [6:0] _GEN_15 = 3'h0 == io_instr[14:12] ? _GEN_6 : 7'h0; // @[Simple.scala 25:20 44:32]
  wire  _GEN_16 = 3'h0 == io_instr[14:12] & _T_5; // @[Simple.scala 28:18 44:32]
  wire [4:0] _GEN_20 = 7'h57 == io_instr[6:0] ? _GEN_11 : 5'h0; // @[Simple.scala 19:19 42:26]
  wire [4:0] _GEN_21 = 7'h57 == io_instr[6:0] ? _GEN_12 : 5'h0; // @[Simple.scala 20:19 42:26]
  wire [4:0] _GEN_22 = 7'h57 == io_instr[6:0] ? _GEN_13 : 5'h0; // @[Simple.scala 23:17 42:26]
  wire [6:0] _GEN_24 = 7'h57 == io_instr[6:0] ? _GEN_15 : 7'h0; // @[Simple.scala 25:20 42:26]
  reg [2:0] ctrlReg_srcType_0; // @[Simple.scala 92:24]
  reg [2:0] ctrlReg_srcType_1; // @[Simple.scala 92:24]
  reg [5:0] ctrlReg_lsrc_0; // @[Simple.scala 92:24]
  reg [5:0] ctrlReg_lsrc_1; // @[Simple.scala 92:24]
  reg [5:0] ctrlReg_ldest; // @[Simple.scala 92:24]
  reg [4:0] ctrlReg_fuType; // @[Simple.scala 92:24]
  reg [7:0] ctrlReg_fuOpType; // @[Simple.scala 92:24]
  reg  ctrlReg_vecWen; // @[Simple.scala 92:24]
  reg [19:0] ctrlReg_imm; // @[Simple.scala 92:24]
  assign io_vecCtrl_srcType_0 = ctrlReg_srcType_0; // @[Simple.scala 94:14]
  assign io_vecCtrl_srcType_1 = ctrlReg_srcType_1; // @[Simple.scala 94:14]
  assign io_vecCtrl_lsrc_0 = ctrlReg_lsrc_0; // @[Simple.scala 94:14]
  assign io_vecCtrl_lsrc_1 = ctrlReg_lsrc_1; // @[Simple.scala 94:14]
  assign io_vecCtrl_ldest = ctrlReg_ldest; // @[Simple.scala 94:14]
  assign io_vecCtrl_fuType = ctrlReg_fuType; // @[Simple.scala 94:14]
  assign io_vecCtrl_fuOpType = ctrlReg_fuOpType; // @[Simple.scala 94:14]
  assign io_vecCtrl_vecWen = ctrlReg_vecWen; // @[Simple.scala 94:14]
  assign io_vecCtrl_imm = ctrlReg_imm; // @[Simple.scala 94:14]
  always @(posedge clock) begin
    if (7'h57 == io_instr[6:0]) begin // @[Simple.scala 42:26]
      if (3'h0 == io_instr[14:12]) begin // @[Simple.scala 44:32]
        if (6'h0 == io_instr[31:26]) begin // @[Simple.scala 46:36]
          ctrlReg_srcType_0 <= 3'h4; // @[Simple.scala 49:34]
        end else begin
          ctrlReg_srcType_0 <= 3'h0; // @[Simple.scala 15:22]
        end
      end else begin
        ctrlReg_srcType_0 <= 3'h0; // @[Simple.scala 15:22]
      end
    end else begin
      ctrlReg_srcType_0 <= 3'h0; // @[Simple.scala 15:22]
    end
    if (7'h57 == io_instr[6:0]) begin // @[Simple.scala 42:26]
      if (3'h0 == io_instr[14:12]) begin // @[Simple.scala 44:32]
        if (6'h0 == io_instr[31:26]) begin // @[Simple.scala 46:36]
          ctrlReg_srcType_1 <= 3'h4; // @[Simple.scala 49:34]
        end else begin
          ctrlReg_srcType_1 <= 3'h0; // @[Simple.scala 15:22]
        end
      end else begin
        ctrlReg_srcType_1 <= 3'h0; // @[Simple.scala 15:22]
      end
    end else begin
      ctrlReg_srcType_1 <= 3'h0; // @[Simple.scala 15:22]
    end
    ctrlReg_lsrc_0 <= {{1'd0}, _GEN_20}; // @[Simple.scala 13:21]
    ctrlReg_lsrc_1 <= {{1'd0}, _GEN_21}; // @[Simple.scala 13:21]
    ctrlReg_ldest <= {{1'd0}, _GEN_22}; // @[Simple.scala 13:21]
    if (7'h57 == io_instr[6:0]) begin // @[Simple.scala 42:26]
      if (3'h0 == io_instr[14:12]) begin // @[Simple.scala 44:32]
        if (6'h0 == io_instr[31:26]) begin // @[Simple.scala 46:36]
          ctrlReg_fuType <= 5'h18; // @[Simple.scala 58:30]
        end else begin
          ctrlReg_fuType <= 5'h0; // @[Simple.scala 24:18]
        end
      end else begin
        ctrlReg_fuType <= 5'h0; // @[Simple.scala 24:18]
      end
    end else begin
      ctrlReg_fuType <= 5'h0; // @[Simple.scala 24:18]
    end
    ctrlReg_fuOpType <= {{1'd0}, _GEN_24}; // @[Simple.scala 13:21]
    ctrlReg_vecWen <= 7'h57 == io_instr[6:0] & _GEN_16; // @[Simple.scala 28:18 42:26]
    if (7'h57 == io_instr[6:0]) begin // @[Simple.scala 42:26]
      if (3'h0 == io_instr[14:12]) begin // @[Simple.scala 44:32]
        if (6'h0 == io_instr[31:26]) begin // @[Simple.scala 46:36]
          ctrlReg_imm <= _vecCtrl_imm_T_20; // @[Simple.scala 70:27]
        end else begin
          ctrlReg_imm <= 20'h0; // @[Simple.scala 36:15]
        end
      end else begin
        ctrlReg_imm <= 20'h0; // @[Simple.scala 36:15]
      end
    end else begin
      ctrlReg_imm <= 20'h0; // @[Simple.scala 36:15]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  ctrlReg_srcType_0 = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  ctrlReg_srcType_1 = _RAND_1[2:0];
  _RAND_2 = {1{`RANDOM}};
  ctrlReg_lsrc_0 = _RAND_2[5:0];
  _RAND_3 = {1{`RANDOM}};
  ctrlReg_lsrc_1 = _RAND_3[5:0];
  _RAND_4 = {1{`RANDOM}};
  ctrlReg_ldest = _RAND_4[5:0];
  _RAND_5 = {1{`RANDOM}};
  ctrlReg_fuType = _RAND_5[4:0];
  _RAND_6 = {1{`RANDOM}};
  ctrlReg_fuOpType = _RAND_6[7:0];
  _RAND_7 = {1{`RANDOM}};
  ctrlReg_vecWen = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  ctrlReg_imm = _RAND_8[19:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module VectorDiv(
  input         clock,
  input         reset,
  input  [31:0] io_instr_0,
  input  [31:0] io_instr_1,
  input  [31:0] io_instr_2,
  input  [31:0] io_instr_3,
  input  [31:0] io_instr_4,
  input  [31:0] io_instr_5,
  input  [2:0]  io_vlmul_0,
  input  [2:0]  io_vlmul_1,
  input  [2:0]  io_vlmul_2,
  input  [2:0]  io_vlmul_3,
  input  [2:0]  io_vlmul_4,
  input  [2:0]  io_vlmul_5,
  output [2:0]  io_outCtrlSignals_0_srcType_0,
  output [2:0]  io_outCtrlSignals_0_srcType_1,
  output [2:0]  io_outCtrlSignals_0_srcType_2,
  output [2:0]  io_outCtrlSignals_0_srcType_3,
  output [5:0]  io_outCtrlSignals_0_lsrc_0,
  output [5:0]  io_outCtrlSignals_0_lsrc_1,
  output [5:0]  io_outCtrlSignals_0_lsrc_2,
  output [5:0]  io_outCtrlSignals_0_lsrc_3,
  output [5:0]  io_outCtrlSignals_0_ldest,
  output [4:0]  io_outCtrlSignals_0_fuType,
  output [7:0]  io_outCtrlSignals_0_fuOpType,
  output        io_outCtrlSignals_0_rfWen,
  output        io_outCtrlSignals_0_fpWen,
  output        io_outCtrlSignals_0_vecWen,
  output        io_outCtrlSignals_0_mWen,
  output        io_outCtrlSignals_0_vxsatWen,
  output        io_outCtrlSignals_0_isXSTrap,
  output        io_outCtrlSignals_0_noSpecExec,
  output        io_outCtrlSignals_0_blockBackward,
  output        io_outCtrlSignals_0_flushPipe,
  output [3:0]  io_outCtrlSignals_0_selImm,
  output [19:0] io_outCtrlSignals_0_imm,
  output [2:0]  io_outCtrlSignals_0_commitType,
  output        io_outCtrlSignals_0_isMove,
  output        io_outCtrlSignals_0_singleStep,
  output        io_outCtrlSignals_0_replayInst,
  output [2:0]  io_outCtrlSignals_1_srcType_0,
  output [2:0]  io_outCtrlSignals_1_srcType_1,
  output [2:0]  io_outCtrlSignals_1_srcType_2,
  output [2:0]  io_outCtrlSignals_1_srcType_3,
  output [5:0]  io_outCtrlSignals_1_lsrc_0,
  output [5:0]  io_outCtrlSignals_1_lsrc_1,
  output [5:0]  io_outCtrlSignals_1_lsrc_2,
  output [5:0]  io_outCtrlSignals_1_lsrc_3,
  output [5:0]  io_outCtrlSignals_1_ldest,
  output [4:0]  io_outCtrlSignals_1_fuType,
  output [7:0]  io_outCtrlSignals_1_fuOpType,
  output        io_outCtrlSignals_1_rfWen,
  output        io_outCtrlSignals_1_fpWen,
  output        io_outCtrlSignals_1_vecWen,
  output        io_outCtrlSignals_1_mWen,
  output        io_outCtrlSignals_1_vxsatWen,
  output        io_outCtrlSignals_1_isXSTrap,
  output        io_outCtrlSignals_1_noSpecExec,
  output        io_outCtrlSignals_1_blockBackward,
  output        io_outCtrlSignals_1_flushPipe,
  output [3:0]  io_outCtrlSignals_1_selImm,
  output [19:0] io_outCtrlSignals_1_imm,
  output [2:0]  io_outCtrlSignals_1_commitType,
  output        io_outCtrlSignals_1_isMove,
  output        io_outCtrlSignals_1_singleStep,
  output        io_outCtrlSignals_1_replayInst,
  output [2:0]  io_outCtrlSignals_2_srcType_0,
  output [2:0]  io_outCtrlSignals_2_srcType_1,
  output [2:0]  io_outCtrlSignals_2_srcType_2,
  output [2:0]  io_outCtrlSignals_2_srcType_3,
  output [5:0]  io_outCtrlSignals_2_lsrc_0,
  output [5:0]  io_outCtrlSignals_2_lsrc_1,
  output [5:0]  io_outCtrlSignals_2_lsrc_2,
  output [5:0]  io_outCtrlSignals_2_lsrc_3,
  output [5:0]  io_outCtrlSignals_2_ldest,
  output [4:0]  io_outCtrlSignals_2_fuType,
  output [7:0]  io_outCtrlSignals_2_fuOpType,
  output        io_outCtrlSignals_2_rfWen,
  output        io_outCtrlSignals_2_fpWen,
  output        io_outCtrlSignals_2_vecWen,
  output        io_outCtrlSignals_2_mWen,
  output        io_outCtrlSignals_2_vxsatWen,
  output        io_outCtrlSignals_2_isXSTrap,
  output        io_outCtrlSignals_2_noSpecExec,
  output        io_outCtrlSignals_2_blockBackward,
  output        io_outCtrlSignals_2_flushPipe,
  output [3:0]  io_outCtrlSignals_2_selImm,
  output [19:0] io_outCtrlSignals_2_imm,
  output [2:0]  io_outCtrlSignals_2_commitType,
  output        io_outCtrlSignals_2_isMove,
  output        io_outCtrlSignals_2_singleStep,
  output        io_outCtrlSignals_2_replayInst,
  output [2:0]  io_outCtrlSignals_3_srcType_0,
  output [2:0]  io_outCtrlSignals_3_srcType_1,
  output [2:0]  io_outCtrlSignals_3_srcType_2,
  output [2:0]  io_outCtrlSignals_3_srcType_3,
  output [5:0]  io_outCtrlSignals_3_lsrc_0,
  output [5:0]  io_outCtrlSignals_3_lsrc_1,
  output [5:0]  io_outCtrlSignals_3_lsrc_2,
  output [5:0]  io_outCtrlSignals_3_lsrc_3,
  output [5:0]  io_outCtrlSignals_3_ldest,
  output [4:0]  io_outCtrlSignals_3_fuType,
  output [7:0]  io_outCtrlSignals_3_fuOpType,
  output        io_outCtrlSignals_3_rfWen,
  output        io_outCtrlSignals_3_fpWen,
  output        io_outCtrlSignals_3_vecWen,
  output        io_outCtrlSignals_3_mWen,
  output        io_outCtrlSignals_3_vxsatWen,
  output        io_outCtrlSignals_3_isXSTrap,
  output        io_outCtrlSignals_3_noSpecExec,
  output        io_outCtrlSignals_3_blockBackward,
  output        io_outCtrlSignals_3_flushPipe,
  output [3:0]  io_outCtrlSignals_3_selImm,
  output [19:0] io_outCtrlSignals_3_imm,
  output [2:0]  io_outCtrlSignals_3_commitType,
  output        io_outCtrlSignals_3_isMove,
  output        io_outCtrlSignals_3_singleStep,
  output        io_outCtrlSignals_3_replayInst,
  output [2:0]  io_outCtrlSignals_4_srcType_0,
  output [2:0]  io_outCtrlSignals_4_srcType_1,
  output [2:0]  io_outCtrlSignals_4_srcType_2,
  output [2:0]  io_outCtrlSignals_4_srcType_3,
  output [5:0]  io_outCtrlSignals_4_lsrc_0,
  output [5:0]  io_outCtrlSignals_4_lsrc_1,
  output [5:0]  io_outCtrlSignals_4_lsrc_2,
  output [5:0]  io_outCtrlSignals_4_lsrc_3,
  output [5:0]  io_outCtrlSignals_4_ldest,
  output [4:0]  io_outCtrlSignals_4_fuType,
  output [7:0]  io_outCtrlSignals_4_fuOpType,
  output        io_outCtrlSignals_4_rfWen,
  output        io_outCtrlSignals_4_fpWen,
  output        io_outCtrlSignals_4_vecWen,
  output        io_outCtrlSignals_4_mWen,
  output        io_outCtrlSignals_4_vxsatWen,
  output        io_outCtrlSignals_4_isXSTrap,
  output        io_outCtrlSignals_4_noSpecExec,
  output        io_outCtrlSignals_4_blockBackward,
  output        io_outCtrlSignals_4_flushPipe,
  output [3:0]  io_outCtrlSignals_4_selImm,
  output [19:0] io_outCtrlSignals_4_imm,
  output [2:0]  io_outCtrlSignals_4_commitType,
  output        io_outCtrlSignals_4_isMove,
  output        io_outCtrlSignals_4_singleStep,
  output        io_outCtrlSignals_4_replayInst,
  output [2:0]  io_outCtrlSignals_5_srcType_0,
  output [2:0]  io_outCtrlSignals_5_srcType_1,
  output [2:0]  io_outCtrlSignals_5_srcType_2,
  output [2:0]  io_outCtrlSignals_5_srcType_3,
  output [5:0]  io_outCtrlSignals_5_lsrc_0,
  output [5:0]  io_outCtrlSignals_5_lsrc_1,
  output [5:0]  io_outCtrlSignals_5_lsrc_2,
  output [5:0]  io_outCtrlSignals_5_lsrc_3,
  output [5:0]  io_outCtrlSignals_5_ldest,
  output [4:0]  io_outCtrlSignals_5_fuType,
  output [7:0]  io_outCtrlSignals_5_fuOpType,
  output        io_outCtrlSignals_5_rfWen,
  output        io_outCtrlSignals_5_fpWen,
  output        io_outCtrlSignals_5_vecWen,
  output        io_outCtrlSignals_5_mWen,
  output        io_outCtrlSignals_5_vxsatWen,
  output        io_outCtrlSignals_5_isXSTrap,
  output        io_outCtrlSignals_5_noSpecExec,
  output        io_outCtrlSignals_5_blockBackward,
  output        io_outCtrlSignals_5_flushPipe,
  output [3:0]  io_outCtrlSignals_5_selImm,
  output [19:0] io_outCtrlSignals_5_imm,
  output [2:0]  io_outCtrlSignals_5_commitType,
  output        io_outCtrlSignals_5_isMove,
  output        io_outCtrlSignals_5_singleStep,
  output        io_outCtrlSignals_5_replayInst,
  output        io_valid_0,
  output        io_valid_1,
  output        io_valid_2,
  output        io_valid_3,
  output        io_valid_4,
  output        io_valid_5,
  output [2:0]  io_strIndex
);
  wire  decoder0_clock; // @[VectorDiv.scala 17:24]
  wire  decoder0_reset; // @[VectorDiv.scala 17:24]
  wire [31:0] decoder0_io_instr; // @[VectorDiv.scala 17:24]
  wire [2:0] decoder0_io_vlmul; // @[VectorDiv.scala 17:24]
  wire  decoder0_io_isComplex_1; // @[VectorDiv.scala 17:24]
  wire  decoder0_io_isComplex_2; // @[VectorDiv.scala 17:24]
  wire  decoder0_io_isComplex_3; // @[VectorDiv.scala 17:24]
  wire  decoder0_io_isComplex_4; // @[VectorDiv.scala 17:24]
  wire  decoder0_io_isComplex_5; // @[VectorDiv.scala 17:24]
  wire [2:0] decoder0_io_vecCtrl_0_srcType_0; // @[VectorDiv.scala 17:24]
  wire [2:0] decoder0_io_vecCtrl_0_srcType_1; // @[VectorDiv.scala 17:24]
  wire [5:0] decoder0_io_vecCtrl_0_lsrc_0; // @[VectorDiv.scala 17:24]
  wire [5:0] decoder0_io_vecCtrl_0_lsrc_1; // @[VectorDiv.scala 17:24]
  wire [5:0] decoder0_io_vecCtrl_0_ldest; // @[VectorDiv.scala 17:24]
  wire [4:0] decoder0_io_vecCtrl_0_fuType; // @[VectorDiv.scala 17:24]
  wire [7:0] decoder0_io_vecCtrl_0_fuOpType; // @[VectorDiv.scala 17:24]
  wire  decoder0_io_vecCtrl_0_vecWen; // @[VectorDiv.scala 17:24]
  wire [19:0] decoder0_io_vecCtrl_0_imm; // @[VectorDiv.scala 17:24]
  wire [2:0] decoder0_io_vecCtrl_1_srcType_0; // @[VectorDiv.scala 17:24]
  wire [2:0] decoder0_io_vecCtrl_1_srcType_1; // @[VectorDiv.scala 17:24]
  wire [5:0] decoder0_io_vecCtrl_1_lsrc_0; // @[VectorDiv.scala 17:24]
  wire [5:0] decoder0_io_vecCtrl_1_lsrc_1; // @[VectorDiv.scala 17:24]
  wire [5:0] decoder0_io_vecCtrl_1_ldest; // @[VectorDiv.scala 17:24]
  wire [4:0] decoder0_io_vecCtrl_1_fuType; // @[VectorDiv.scala 17:24]
  wire [7:0] decoder0_io_vecCtrl_1_fuOpType; // @[VectorDiv.scala 17:24]
  wire  decoder0_io_vecCtrl_1_vecWen; // @[VectorDiv.scala 17:24]
  wire [19:0] decoder0_io_vecCtrl_1_imm; // @[VectorDiv.scala 17:24]
  wire [2:0] decoder0_io_vecCtrl_2_srcType_0; // @[VectorDiv.scala 17:24]
  wire [2:0] decoder0_io_vecCtrl_2_srcType_1; // @[VectorDiv.scala 17:24]
  wire [5:0] decoder0_io_vecCtrl_2_lsrc_0; // @[VectorDiv.scala 17:24]
  wire [5:0] decoder0_io_vecCtrl_2_lsrc_1; // @[VectorDiv.scala 17:24]
  wire [5:0] decoder0_io_vecCtrl_2_ldest; // @[VectorDiv.scala 17:24]
  wire [4:0] decoder0_io_vecCtrl_2_fuType; // @[VectorDiv.scala 17:24]
  wire [7:0] decoder0_io_vecCtrl_2_fuOpType; // @[VectorDiv.scala 17:24]
  wire  decoder0_io_vecCtrl_2_vecWen; // @[VectorDiv.scala 17:24]
  wire [19:0] decoder0_io_vecCtrl_2_imm; // @[VectorDiv.scala 17:24]
  wire [2:0] decoder0_io_vecCtrl_3_srcType_0; // @[VectorDiv.scala 17:24]
  wire [2:0] decoder0_io_vecCtrl_3_srcType_1; // @[VectorDiv.scala 17:24]
  wire [5:0] decoder0_io_vecCtrl_3_lsrc_0; // @[VectorDiv.scala 17:24]
  wire [5:0] decoder0_io_vecCtrl_3_lsrc_1; // @[VectorDiv.scala 17:24]
  wire [5:0] decoder0_io_vecCtrl_3_ldest; // @[VectorDiv.scala 17:24]
  wire [4:0] decoder0_io_vecCtrl_3_fuType; // @[VectorDiv.scala 17:24]
  wire [7:0] decoder0_io_vecCtrl_3_fuOpType; // @[VectorDiv.scala 17:24]
  wire  decoder0_io_vecCtrl_3_vecWen; // @[VectorDiv.scala 17:24]
  wire [19:0] decoder0_io_vecCtrl_3_imm; // @[VectorDiv.scala 17:24]
  wire [2:0] decoder0_io_vecCtrl_4_srcType_0; // @[VectorDiv.scala 17:24]
  wire [2:0] decoder0_io_vecCtrl_4_srcType_1; // @[VectorDiv.scala 17:24]
  wire [5:0] decoder0_io_vecCtrl_4_lsrc_0; // @[VectorDiv.scala 17:24]
  wire [5:0] decoder0_io_vecCtrl_4_lsrc_1; // @[VectorDiv.scala 17:24]
  wire [5:0] decoder0_io_vecCtrl_4_ldest; // @[VectorDiv.scala 17:24]
  wire [4:0] decoder0_io_vecCtrl_4_fuType; // @[VectorDiv.scala 17:24]
  wire [7:0] decoder0_io_vecCtrl_4_fuOpType; // @[VectorDiv.scala 17:24]
  wire  decoder0_io_vecCtrl_4_vecWen; // @[VectorDiv.scala 17:24]
  wire [19:0] decoder0_io_vecCtrl_4_imm; // @[VectorDiv.scala 17:24]
  wire [2:0] decoder0_io_vecCtrl_5_srcType_0; // @[VectorDiv.scala 17:24]
  wire [2:0] decoder0_io_vecCtrl_5_srcType_1; // @[VectorDiv.scala 17:24]
  wire [5:0] decoder0_io_vecCtrl_5_lsrc_0; // @[VectorDiv.scala 17:24]
  wire [5:0] decoder0_io_vecCtrl_5_lsrc_1; // @[VectorDiv.scala 17:24]
  wire [5:0] decoder0_io_vecCtrl_5_ldest; // @[VectorDiv.scala 17:24]
  wire [4:0] decoder0_io_vecCtrl_5_fuType; // @[VectorDiv.scala 17:24]
  wire [7:0] decoder0_io_vecCtrl_5_fuOpType; // @[VectorDiv.scala 17:24]
  wire  decoder0_io_vecCtrl_5_vecWen; // @[VectorDiv.scala 17:24]
  wire [19:0] decoder0_io_vecCtrl_5_imm; // @[VectorDiv.scala 17:24]
  wire [2:0] decoder0_io_num; // @[VectorDiv.scala 17:24]
  wire  decoder0_io_offset_0; // @[VectorDiv.scala 17:24]
  wire  decoder0_io_offset_1; // @[VectorDiv.scala 17:24]
  wire  decoder0_io_offset_2; // @[VectorDiv.scala 17:24]
  wire  decoder0_io_offset_3; // @[VectorDiv.scala 17:24]
  wire  decoder0_io_offset_4; // @[VectorDiv.scala 17:24]
  wire  decoder0_io_offset_5; // @[VectorDiv.scala 17:24]
  wire [2:0] decoder0_io_strIndex; // @[VectorDiv.scala 17:24]
  wire  decoders_0_clock; // @[VectorDiv.scala 18:36]
  wire [31:0] decoders_0_io_instr; // @[VectorDiv.scala 18:36]
  wire [2:0] decoders_0_io_vecCtrl_srcType_0; // @[VectorDiv.scala 18:36]
  wire [2:0] decoders_0_io_vecCtrl_srcType_1; // @[VectorDiv.scala 18:36]
  wire [5:0] decoders_0_io_vecCtrl_lsrc_0; // @[VectorDiv.scala 18:36]
  wire [5:0] decoders_0_io_vecCtrl_lsrc_1; // @[VectorDiv.scala 18:36]
  wire [5:0] decoders_0_io_vecCtrl_ldest; // @[VectorDiv.scala 18:36]
  wire [4:0] decoders_0_io_vecCtrl_fuType; // @[VectorDiv.scala 18:36]
  wire [7:0] decoders_0_io_vecCtrl_fuOpType; // @[VectorDiv.scala 18:36]
  wire  decoders_0_io_vecCtrl_vecWen; // @[VectorDiv.scala 18:36]
  wire [19:0] decoders_0_io_vecCtrl_imm; // @[VectorDiv.scala 18:36]
  wire  decoders_1_clock; // @[VectorDiv.scala 18:36]
  wire [31:0] decoders_1_io_instr; // @[VectorDiv.scala 18:36]
  wire [2:0] decoders_1_io_vecCtrl_srcType_0; // @[VectorDiv.scala 18:36]
  wire [2:0] decoders_1_io_vecCtrl_srcType_1; // @[VectorDiv.scala 18:36]
  wire [5:0] decoders_1_io_vecCtrl_lsrc_0; // @[VectorDiv.scala 18:36]
  wire [5:0] decoders_1_io_vecCtrl_lsrc_1; // @[VectorDiv.scala 18:36]
  wire [5:0] decoders_1_io_vecCtrl_ldest; // @[VectorDiv.scala 18:36]
  wire [4:0] decoders_1_io_vecCtrl_fuType; // @[VectorDiv.scala 18:36]
  wire [7:0] decoders_1_io_vecCtrl_fuOpType; // @[VectorDiv.scala 18:36]
  wire  decoders_1_io_vecCtrl_vecWen; // @[VectorDiv.scala 18:36]
  wire [19:0] decoders_1_io_vecCtrl_imm; // @[VectorDiv.scala 18:36]
  wire  decoders_2_clock; // @[VectorDiv.scala 18:36]
  wire [31:0] decoders_2_io_instr; // @[VectorDiv.scala 18:36]
  wire [2:0] decoders_2_io_vecCtrl_srcType_0; // @[VectorDiv.scala 18:36]
  wire [2:0] decoders_2_io_vecCtrl_srcType_1; // @[VectorDiv.scala 18:36]
  wire [5:0] decoders_2_io_vecCtrl_lsrc_0; // @[VectorDiv.scala 18:36]
  wire [5:0] decoders_2_io_vecCtrl_lsrc_1; // @[VectorDiv.scala 18:36]
  wire [5:0] decoders_2_io_vecCtrl_ldest; // @[VectorDiv.scala 18:36]
  wire [4:0] decoders_2_io_vecCtrl_fuType; // @[VectorDiv.scala 18:36]
  wire [7:0] decoders_2_io_vecCtrl_fuOpType; // @[VectorDiv.scala 18:36]
  wire  decoders_2_io_vecCtrl_vecWen; // @[VectorDiv.scala 18:36]
  wire [19:0] decoders_2_io_vecCtrl_imm; // @[VectorDiv.scala 18:36]
  wire  decoders_3_clock; // @[VectorDiv.scala 18:36]
  wire [31:0] decoders_3_io_instr; // @[VectorDiv.scala 18:36]
  wire [2:0] decoders_3_io_vecCtrl_srcType_0; // @[VectorDiv.scala 18:36]
  wire [2:0] decoders_3_io_vecCtrl_srcType_1; // @[VectorDiv.scala 18:36]
  wire [5:0] decoders_3_io_vecCtrl_lsrc_0; // @[VectorDiv.scala 18:36]
  wire [5:0] decoders_3_io_vecCtrl_lsrc_1; // @[VectorDiv.scala 18:36]
  wire [5:0] decoders_3_io_vecCtrl_ldest; // @[VectorDiv.scala 18:36]
  wire [4:0] decoders_3_io_vecCtrl_fuType; // @[VectorDiv.scala 18:36]
  wire [7:0] decoders_3_io_vecCtrl_fuOpType; // @[VectorDiv.scala 18:36]
  wire  decoders_3_io_vecCtrl_vecWen; // @[VectorDiv.scala 18:36]
  wire [19:0] decoders_3_io_vecCtrl_imm; // @[VectorDiv.scala 18:36]
  wire  decoders_4_clock; // @[VectorDiv.scala 18:36]
  wire [31:0] decoders_4_io_instr; // @[VectorDiv.scala 18:36]
  wire [2:0] decoders_4_io_vecCtrl_srcType_0; // @[VectorDiv.scala 18:36]
  wire [2:0] decoders_4_io_vecCtrl_srcType_1; // @[VectorDiv.scala 18:36]
  wire [5:0] decoders_4_io_vecCtrl_lsrc_0; // @[VectorDiv.scala 18:36]
  wire [5:0] decoders_4_io_vecCtrl_lsrc_1; // @[VectorDiv.scala 18:36]
  wire [5:0] decoders_4_io_vecCtrl_ldest; // @[VectorDiv.scala 18:36]
  wire [4:0] decoders_4_io_vecCtrl_fuType; // @[VectorDiv.scala 18:36]
  wire [7:0] decoders_4_io_vecCtrl_fuOpType; // @[VectorDiv.scala 18:36]
  wire  decoders_4_io_vecCtrl_vecWen; // @[VectorDiv.scala 18:36]
  wire [19:0] decoders_4_io_vecCtrl_imm; // @[VectorDiv.scala 18:36]
  wire [5:0] offset = {decoder0_io_offset_5,decoder0_io_offset_4,decoder0_io_offset_3,decoder0_io_offset_2,
    decoder0_io_offset_1,decoder0_io_offset_0}; // @[VectorDiv.scala 32:32]
  wire [2:0] num = decoder0_io_num; // @[VectorDiv.scala 22:17 31:7]
  wire  _T_33 = 3'h1 == num; // @[VectorDiv.scala 80:19]
  wire  _T_34 = 3'h2 == num; // @[VectorDiv.scala 80:19]
  wire  _T_35 = 3'h3 == num; // @[VectorDiv.scala 80:19]
  wire  _T_36 = 3'h4 == num; // @[VectorDiv.scala 80:19]
  wire  _T_37 = 3'h5 == num; // @[VectorDiv.scala 80:19]
  wire [2:0] ctrlComplex_1_srcType_0 = decoder0_io_vecCtrl_1_srcType_0; // @[VectorDiv.scala 21:25 30:15]
  wire [2:0] ctrlComplex_1_srcType_1 = decoder0_io_vecCtrl_1_srcType_1; // @[VectorDiv.scala 21:25 30:15]
  wire [5:0] ctrlComplex_1_lsrc_0 = decoder0_io_vecCtrl_1_lsrc_0; // @[VectorDiv.scala 21:25 30:15]
  wire [5:0] ctrlComplex_1_lsrc_1 = decoder0_io_vecCtrl_1_lsrc_1; // @[VectorDiv.scala 21:25 30:15]
  wire [5:0] ctrlComplex_1_ldest = decoder0_io_vecCtrl_1_ldest; // @[VectorDiv.scala 21:25 30:15]
  wire [4:0] ctrlComplex_1_fuType = decoder0_io_vecCtrl_1_fuType; // @[VectorDiv.scala 21:25 30:15]
  wire [7:0] ctrlComplex_1_fuOpType = decoder0_io_vecCtrl_1_fuOpType; // @[VectorDiv.scala 21:25 30:15]
  wire  ctrlComplex_1_vecWen = decoder0_io_vecCtrl_1_vecWen; // @[VectorDiv.scala 21:25 30:15]
  wire [19:0] ctrlComplex_1_imm = decoder0_io_vecCtrl_1_imm; // @[VectorDiv.scala 21:25 30:15]
  wire [2:0] ctrlComplex_2_srcType_0 = decoder0_io_vecCtrl_2_srcType_0; // @[VectorDiv.scala 21:25 30:15]
  wire [2:0] ctrlComplex_2_srcType_1 = decoder0_io_vecCtrl_2_srcType_1; // @[VectorDiv.scala 21:25 30:15]
  wire [5:0] ctrlComplex_2_lsrc_0 = decoder0_io_vecCtrl_2_lsrc_0; // @[VectorDiv.scala 21:25 30:15]
  wire [5:0] ctrlComplex_2_lsrc_1 = decoder0_io_vecCtrl_2_lsrc_1; // @[VectorDiv.scala 21:25 30:15]
  wire [5:0] ctrlComplex_2_ldest = decoder0_io_vecCtrl_2_ldest; // @[VectorDiv.scala 21:25 30:15]
  wire [4:0] ctrlComplex_2_fuType = decoder0_io_vecCtrl_2_fuType; // @[VectorDiv.scala 21:25 30:15]
  wire [7:0] ctrlComplex_2_fuOpType = decoder0_io_vecCtrl_2_fuOpType; // @[VectorDiv.scala 21:25 30:15]
  wire  ctrlComplex_2_vecWen = decoder0_io_vecCtrl_2_vecWen; // @[VectorDiv.scala 21:25 30:15]
  wire [19:0] ctrlComplex_2_imm = decoder0_io_vecCtrl_2_imm; // @[VectorDiv.scala 21:25 30:15]
  wire [2:0] ctrlComplex_3_srcType_0 = decoder0_io_vecCtrl_3_srcType_0; // @[VectorDiv.scala 21:25 30:15]
  wire [2:0] ctrlComplex_3_srcType_1 = decoder0_io_vecCtrl_3_srcType_1; // @[VectorDiv.scala 21:25 30:15]
  wire [5:0] ctrlComplex_3_lsrc_0 = decoder0_io_vecCtrl_3_lsrc_0; // @[VectorDiv.scala 21:25 30:15]
  wire [5:0] ctrlComplex_3_lsrc_1 = decoder0_io_vecCtrl_3_lsrc_1; // @[VectorDiv.scala 21:25 30:15]
  wire [5:0] ctrlComplex_3_ldest = decoder0_io_vecCtrl_3_ldest; // @[VectorDiv.scala 21:25 30:15]
  wire [4:0] ctrlComplex_3_fuType = decoder0_io_vecCtrl_3_fuType; // @[VectorDiv.scala 21:25 30:15]
  wire [7:0] ctrlComplex_3_fuOpType = decoder0_io_vecCtrl_3_fuOpType; // @[VectorDiv.scala 21:25 30:15]
  wire  ctrlComplex_3_vecWen = decoder0_io_vecCtrl_3_vecWen; // @[VectorDiv.scala 21:25 30:15]
  wire [19:0] ctrlComplex_3_imm = decoder0_io_vecCtrl_3_imm; // @[VectorDiv.scala 21:25 30:15]
  wire [2:0] ctrlComplex_4_srcType_0 = decoder0_io_vecCtrl_4_srcType_0; // @[VectorDiv.scala 21:25 30:15]
  wire [2:0] ctrlComplex_4_srcType_1 = decoder0_io_vecCtrl_4_srcType_1; // @[VectorDiv.scala 21:25 30:15]
  wire [5:0] ctrlComplex_4_lsrc_0 = decoder0_io_vecCtrl_4_lsrc_0; // @[VectorDiv.scala 21:25 30:15]
  wire [5:0] ctrlComplex_4_lsrc_1 = decoder0_io_vecCtrl_4_lsrc_1; // @[VectorDiv.scala 21:25 30:15]
  wire [5:0] ctrlComplex_4_ldest = decoder0_io_vecCtrl_4_ldest; // @[VectorDiv.scala 21:25 30:15]
  wire [4:0] ctrlComplex_4_fuType = decoder0_io_vecCtrl_4_fuType; // @[VectorDiv.scala 21:25 30:15]
  wire [7:0] ctrlComplex_4_fuOpType = decoder0_io_vecCtrl_4_fuOpType; // @[VectorDiv.scala 21:25 30:15]
  wire  ctrlComplex_4_vecWen = decoder0_io_vecCtrl_4_vecWen; // @[VectorDiv.scala 21:25 30:15]
  wire [19:0] ctrlComplex_4_imm = decoder0_io_vecCtrl_4_imm; // @[VectorDiv.scala 21:25 30:15]
  wire [2:0] ctrlComplex_5_srcType_0 = decoder0_io_vecCtrl_5_srcType_0; // @[VectorDiv.scala 21:25 30:15]
  wire [2:0] ctrlComplex_5_srcType_1 = decoder0_io_vecCtrl_5_srcType_1; // @[VectorDiv.scala 21:25 30:15]
  wire [5:0] ctrlComplex_5_lsrc_0 = decoder0_io_vecCtrl_5_lsrc_0; // @[VectorDiv.scala 21:25 30:15]
  wire [5:0] ctrlComplex_5_lsrc_1 = decoder0_io_vecCtrl_5_lsrc_1; // @[VectorDiv.scala 21:25 30:15]
  wire [5:0] ctrlComplex_5_ldest = decoder0_io_vecCtrl_5_ldest; // @[VectorDiv.scala 21:25 30:15]
  wire [4:0] ctrlComplex_5_fuType = decoder0_io_vecCtrl_5_fuType; // @[VectorDiv.scala 21:25 30:15]
  wire [7:0] ctrlComplex_5_fuOpType = decoder0_io_vecCtrl_5_fuOpType; // @[VectorDiv.scala 21:25 30:15]
  wire  ctrlComplex_5_vecWen = decoder0_io_vecCtrl_5_vecWen; // @[VectorDiv.scala 21:25 30:15]
  wire [19:0] ctrlComplex_5_imm = decoder0_io_vecCtrl_5_imm; // @[VectorDiv.scala 21:25 30:15]
  wire  _GEN_293 = 3'h5 == num | 3'h6 == num; // @[VectorDiv.scala 80:19 138:25]
  wire  _GEN_294 = 3'h5 == num ? 1'h0 : 3'h6 == num; // @[VectorDiv.scala 80:19 141:25]
  wire  _GEN_425 = 3'h4 == num | _GEN_293; // @[VectorDiv.scala 80:19 125:25]
  wire  _GEN_426 = 3'h4 == num ? 1'h0 : _GEN_293; // @[VectorDiv.scala 80:19 128:25]
  wire  _GEN_427 = 3'h4 == num ? 1'h0 : _GEN_294; // @[VectorDiv.scala 80:19 128:25]
  wire  _GEN_558 = 3'h3 == num | _GEN_425; // @[VectorDiv.scala 80:19 112:25]
  wire  _GEN_559 = 3'h3 == num ? 1'h0 : _GEN_425; // @[VectorDiv.scala 80:19 115:25]
  wire  _GEN_560 = 3'h3 == num ? 1'h0 : _GEN_426; // @[VectorDiv.scala 80:19 115:25]
  wire  _GEN_561 = 3'h3 == num ? 1'h0 : _GEN_427; // @[VectorDiv.scala 80:19 115:25]
  wire  _GEN_692 = 3'h2 == num | _GEN_558; // @[VectorDiv.scala 80:19 99:25]
  wire  _GEN_693 = 3'h2 == num ? 1'h0 : _GEN_558; // @[VectorDiv.scala 80:19 102:25]
  wire  _GEN_694 = 3'h2 == num ? 1'h0 : _GEN_559; // @[VectorDiv.scala 80:19 102:25]
  wire  _GEN_695 = 3'h2 == num ? 1'h0 : _GEN_560; // @[VectorDiv.scala 80:19 102:25]
  wire  _GEN_696 = 3'h2 == num ? 1'h0 : _GEN_561; // @[VectorDiv.scala 80:19 102:25]
  wire  _GEN_827 = 3'h1 == num | _GEN_692; // @[VectorDiv.scala 80:19 86:25]
  wire  _GEN_828 = 3'h1 == num ? 1'h0 : _GEN_692; // @[VectorDiv.scala 80:19 89:25]
  wire  _GEN_829 = 3'h1 == num ? 1'h0 : _GEN_693; // @[VectorDiv.scala 80:19 89:25]
  wire  _GEN_830 = 3'h1 == num ? 1'h0 : _GEN_694; // @[VectorDiv.scala 80:19 89:25]
  wire  _GEN_831 = 3'h1 == num ? 1'h0 : _GEN_695; // @[VectorDiv.scala 80:19 89:25]
  wire  _GEN_832 = 3'h1 == num ? 1'h0 : _GEN_696; // @[VectorDiv.scala 80:19 89:25]
  wire [2:0] ctrlSimple_0_srcType_0 = decoders_0_io_vecCtrl_srcType_0; // @[VectorDiv.scala 25:24 36:19]
  wire [2:0] _GEN_1093 = _T_37 ? ctrlSimple_0_srcType_0 : ctrlComplex_5_srcType_0; // @[VectorDiv.scala 159:19 222:32 47:21]
  wire [2:0] ctrlSimple_0_srcType_1 = decoders_0_io_vecCtrl_srcType_1; // @[VectorDiv.scala 25:24 36:19]
  wire [2:0] _GEN_1094 = _T_37 ? ctrlSimple_0_srcType_1 : ctrlComplex_5_srcType_1; // @[VectorDiv.scala 159:19 222:32 47:21]
  wire [5:0] ctrlSimple_0_lsrc_0 = decoders_0_io_vecCtrl_lsrc_0; // @[VectorDiv.scala 25:24 36:19]
  wire [5:0] _GEN_1097 = _T_37 ? ctrlSimple_0_lsrc_0 : ctrlComplex_5_lsrc_0; // @[VectorDiv.scala 159:19 222:32 47:21]
  wire [5:0] ctrlSimple_0_lsrc_1 = decoders_0_io_vecCtrl_lsrc_1; // @[VectorDiv.scala 25:24 36:19]
  wire [5:0] _GEN_1098 = _T_37 ? ctrlSimple_0_lsrc_1 : ctrlComplex_5_lsrc_1; // @[VectorDiv.scala 159:19 222:32 47:21]
  wire [5:0] ctrlSimple_0_ldest = decoders_0_io_vecCtrl_ldest; // @[VectorDiv.scala 25:24 36:19]
  wire [5:0] _GEN_1101 = _T_37 ? ctrlSimple_0_ldest : ctrlComplex_5_ldest; // @[VectorDiv.scala 159:19 222:32 47:21]
  wire [4:0] ctrlSimple_0_fuType = decoders_0_io_vecCtrl_fuType; // @[VectorDiv.scala 25:24 36:19]
  wire [4:0] _GEN_1102 = _T_37 ? ctrlSimple_0_fuType : ctrlComplex_5_fuType; // @[VectorDiv.scala 159:19 222:32 47:21]
  wire [7:0] ctrlSimple_0_fuOpType = decoders_0_io_vecCtrl_fuOpType; // @[VectorDiv.scala 25:24 36:19]
  wire [7:0] _GEN_1103 = _T_37 ? ctrlSimple_0_fuOpType : ctrlComplex_5_fuOpType; // @[VectorDiv.scala 159:19 222:32 47:21]
  wire  ctrlSimple_0_vecWen = decoders_0_io_vecCtrl_vecWen; // @[VectorDiv.scala 25:24 36:19]
  wire  _GEN_1106 = _T_37 ? ctrlSimple_0_vecWen : ctrlComplex_5_vecWen; // @[VectorDiv.scala 159:19 222:32 47:21]
  wire [19:0] ctrlSimple_0_imm = decoders_0_io_vecCtrl_imm; // @[VectorDiv.scala 25:24 36:19]
  wire [19:0] _GEN_1114 = _T_37 ? ctrlSimple_0_imm : ctrlComplex_5_imm; // @[VectorDiv.scala 159:19 222:32 47:21]
  wire [2:0] _GEN_1224 = _T_36 ? ctrlSimple_0_srcType_0 : ctrlComplex_4_srcType_0; // @[VectorDiv.scala 159:19 207:32]
  wire [2:0] _GEN_1225 = _T_36 ? ctrlSimple_0_srcType_1 : ctrlComplex_4_srcType_1; // @[VectorDiv.scala 159:19 207:32]
  wire [5:0] _GEN_1228 = _T_36 ? ctrlSimple_0_lsrc_0 : ctrlComplex_4_lsrc_0; // @[VectorDiv.scala 159:19 207:32]
  wire [5:0] _GEN_1229 = _T_36 ? ctrlSimple_0_lsrc_1 : ctrlComplex_4_lsrc_1; // @[VectorDiv.scala 159:19 207:32]
  wire [5:0] _GEN_1232 = _T_36 ? ctrlSimple_0_ldest : ctrlComplex_4_ldest; // @[VectorDiv.scala 159:19 207:32]
  wire [4:0] _GEN_1233 = _T_36 ? ctrlSimple_0_fuType : ctrlComplex_4_fuType; // @[VectorDiv.scala 159:19 207:32]
  wire [7:0] _GEN_1234 = _T_36 ? ctrlSimple_0_fuOpType : ctrlComplex_4_fuOpType; // @[VectorDiv.scala 159:19 207:32]
  wire  _GEN_1237 = _T_36 ? ctrlSimple_0_vecWen : ctrlComplex_4_vecWen; // @[VectorDiv.scala 159:19 207:32]
  wire [19:0] _GEN_1245 = _T_36 ? ctrlSimple_0_imm : ctrlComplex_4_imm; // @[VectorDiv.scala 159:19 207:32]
  wire  _GEN_1250 = _T_36 | _T_37; // @[VectorDiv.scala 159:19 211:25]
  wire  _GEN_1251 = _T_36 ? 1'h0 : _T_37; // @[VectorDiv.scala 159:19 214:25]
  wire [2:0] _GEN_1252 = _T_36 ? ctrlComplex_5_srcType_0 : _GEN_1093; // @[VectorDiv.scala 159:19 47:21]
  wire [2:0] _GEN_1253 = _T_36 ? ctrlComplex_5_srcType_1 : _GEN_1094; // @[VectorDiv.scala 159:19 47:21]
  wire [5:0] _GEN_1256 = _T_36 ? ctrlComplex_5_lsrc_0 : _GEN_1097; // @[VectorDiv.scala 159:19 47:21]
  wire [5:0] _GEN_1257 = _T_36 ? ctrlComplex_5_lsrc_1 : _GEN_1098; // @[VectorDiv.scala 159:19 47:21]
  wire [5:0] _GEN_1260 = _T_36 ? ctrlComplex_5_ldest : _GEN_1101; // @[VectorDiv.scala 159:19 47:21]
  wire [4:0] _GEN_1261 = _T_36 ? ctrlComplex_5_fuType : _GEN_1102; // @[VectorDiv.scala 159:19 47:21]
  wire [7:0] _GEN_1262 = _T_36 ? ctrlComplex_5_fuOpType : _GEN_1103; // @[VectorDiv.scala 159:19 47:21]
  wire  _GEN_1265 = _T_36 ? ctrlComplex_5_vecWen : _GEN_1106; // @[VectorDiv.scala 159:19 47:21]
  wire [19:0] _GEN_1273 = _T_36 ? ctrlComplex_5_imm : _GEN_1114; // @[VectorDiv.scala 159:19 47:21]
  wire [2:0] _GEN_1356 = _T_35 ? ctrlSimple_0_srcType_0 : ctrlComplex_3_srcType_0; // @[VectorDiv.scala 159:19 193:32]
  wire [2:0] _GEN_1357 = _T_35 ? ctrlSimple_0_srcType_1 : ctrlComplex_3_srcType_1; // @[VectorDiv.scala 159:19 193:32]
  wire [5:0] _GEN_1360 = _T_35 ? ctrlSimple_0_lsrc_0 : ctrlComplex_3_lsrc_0; // @[VectorDiv.scala 159:19 193:32]
  wire [5:0] _GEN_1361 = _T_35 ? ctrlSimple_0_lsrc_1 : ctrlComplex_3_lsrc_1; // @[VectorDiv.scala 159:19 193:32]
  wire [5:0] _GEN_1364 = _T_35 ? ctrlSimple_0_ldest : ctrlComplex_3_ldest; // @[VectorDiv.scala 159:19 193:32]
  wire [4:0] _GEN_1365 = _T_35 ? ctrlSimple_0_fuType : ctrlComplex_3_fuType; // @[VectorDiv.scala 159:19 193:32]
  wire [7:0] _GEN_1366 = _T_35 ? ctrlSimple_0_fuOpType : ctrlComplex_3_fuOpType; // @[VectorDiv.scala 159:19 193:32]
  wire  _GEN_1369 = _T_35 ? ctrlSimple_0_vecWen : ctrlComplex_3_vecWen; // @[VectorDiv.scala 159:19 193:32]
  wire [19:0] _GEN_1377 = _T_35 ? ctrlSimple_0_imm : ctrlComplex_3_imm; // @[VectorDiv.scala 159:19 193:32]
  wire  _GEN_1382 = _T_35 | _GEN_1250; // @[VectorDiv.scala 159:19 196:25]
  wire  _GEN_1383 = _T_35 ? 1'h0 : _GEN_1250; // @[VectorDiv.scala 159:19 199:25]
  wire  _GEN_1384 = _T_35 ? 1'h0 : _GEN_1251; // @[VectorDiv.scala 159:19 199:25]
  wire [2:0] _GEN_1385 = _T_35 ? ctrlComplex_4_srcType_0 : _GEN_1224; // @[VectorDiv.scala 159:19 47:21]
  wire [2:0] _GEN_1386 = _T_35 ? ctrlComplex_4_srcType_1 : _GEN_1225; // @[VectorDiv.scala 159:19 47:21]
  wire [5:0] _GEN_1389 = _T_35 ? ctrlComplex_4_lsrc_0 : _GEN_1228; // @[VectorDiv.scala 159:19 47:21]
  wire [5:0] _GEN_1390 = _T_35 ? ctrlComplex_4_lsrc_1 : _GEN_1229; // @[VectorDiv.scala 159:19 47:21]
  wire [5:0] _GEN_1393 = _T_35 ? ctrlComplex_4_ldest : _GEN_1232; // @[VectorDiv.scala 159:19 47:21]
  wire [4:0] _GEN_1394 = _T_35 ? ctrlComplex_4_fuType : _GEN_1233; // @[VectorDiv.scala 159:19 47:21]
  wire [7:0] _GEN_1395 = _T_35 ? ctrlComplex_4_fuOpType : _GEN_1234; // @[VectorDiv.scala 159:19 47:21]
  wire  _GEN_1398 = _T_35 ? ctrlComplex_4_vecWen : _GEN_1237; // @[VectorDiv.scala 159:19 47:21]
  wire [19:0] _GEN_1406 = _T_35 ? ctrlComplex_4_imm : _GEN_1245; // @[VectorDiv.scala 159:19 47:21]
  wire [2:0] _GEN_1411 = _T_35 ? ctrlComplex_5_srcType_0 : _GEN_1252; // @[VectorDiv.scala 159:19 47:21]
  wire [2:0] _GEN_1412 = _T_35 ? ctrlComplex_5_srcType_1 : _GEN_1253; // @[VectorDiv.scala 159:19 47:21]
  wire [5:0] _GEN_1415 = _T_35 ? ctrlComplex_5_lsrc_0 : _GEN_1256; // @[VectorDiv.scala 159:19 47:21]
  wire [5:0] _GEN_1416 = _T_35 ? ctrlComplex_5_lsrc_1 : _GEN_1257; // @[VectorDiv.scala 159:19 47:21]
  wire [5:0] _GEN_1419 = _T_35 ? ctrlComplex_5_ldest : _GEN_1260; // @[VectorDiv.scala 159:19 47:21]
  wire [4:0] _GEN_1420 = _T_35 ? ctrlComplex_5_fuType : _GEN_1261; // @[VectorDiv.scala 159:19 47:21]
  wire [7:0] _GEN_1421 = _T_35 ? ctrlComplex_5_fuOpType : _GEN_1262; // @[VectorDiv.scala 159:19 47:21]
  wire  _GEN_1424 = _T_35 ? ctrlComplex_5_vecWen : _GEN_1265; // @[VectorDiv.scala 159:19 47:21]
  wire [19:0] _GEN_1432 = _T_35 ? ctrlComplex_5_imm : _GEN_1273; // @[VectorDiv.scala 159:19 47:21]
  wire [2:0] _GEN_1489 = _T_34 ? ctrlSimple_0_srcType_0 : ctrlComplex_2_srcType_0; // @[VectorDiv.scala 159:19 178:32]
  wire [2:0] _GEN_1490 = _T_34 ? ctrlSimple_0_srcType_1 : ctrlComplex_2_srcType_1; // @[VectorDiv.scala 159:19 178:32]
  wire [5:0] _GEN_1493 = _T_34 ? ctrlSimple_0_lsrc_0 : ctrlComplex_2_lsrc_0; // @[VectorDiv.scala 159:19 178:32]
  wire [5:0] _GEN_1494 = _T_34 ? ctrlSimple_0_lsrc_1 : ctrlComplex_2_lsrc_1; // @[VectorDiv.scala 159:19 178:32]
  wire [5:0] _GEN_1497 = _T_34 ? ctrlSimple_0_ldest : ctrlComplex_2_ldest; // @[VectorDiv.scala 159:19 178:32]
  wire [4:0] _GEN_1498 = _T_34 ? ctrlSimple_0_fuType : ctrlComplex_2_fuType; // @[VectorDiv.scala 159:19 178:32]
  wire [7:0] _GEN_1499 = _T_34 ? ctrlSimple_0_fuOpType : ctrlComplex_2_fuOpType; // @[VectorDiv.scala 159:19 178:32]
  wire  _GEN_1502 = _T_34 ? ctrlSimple_0_vecWen : ctrlComplex_2_vecWen; // @[VectorDiv.scala 159:19 178:32]
  wire [19:0] _GEN_1510 = _T_34 ? ctrlSimple_0_imm : ctrlComplex_2_imm; // @[VectorDiv.scala 159:19 178:32]
  wire  _GEN_1515 = _T_34 | _GEN_1382; // @[VectorDiv.scala 159:19 182:25]
  wire  _GEN_1516 = _T_34 ? 1'h0 : _GEN_1382; // @[VectorDiv.scala 159:19 185:25]
  wire  _GEN_1517 = _T_34 ? 1'h0 : _GEN_1383; // @[VectorDiv.scala 159:19 185:25]
  wire  _GEN_1518 = _T_34 ? 1'h0 : _GEN_1384; // @[VectorDiv.scala 159:19 185:25]
  wire [2:0] _GEN_1519 = _T_34 ? ctrlComplex_3_srcType_0 : _GEN_1356; // @[VectorDiv.scala 159:19 47:21]
  wire [2:0] _GEN_1520 = _T_34 ? ctrlComplex_3_srcType_1 : _GEN_1357; // @[VectorDiv.scala 159:19 47:21]
  wire [5:0] _GEN_1523 = _T_34 ? ctrlComplex_3_lsrc_0 : _GEN_1360; // @[VectorDiv.scala 159:19 47:21]
  wire [5:0] _GEN_1524 = _T_34 ? ctrlComplex_3_lsrc_1 : _GEN_1361; // @[VectorDiv.scala 159:19 47:21]
  wire [5:0] _GEN_1527 = _T_34 ? ctrlComplex_3_ldest : _GEN_1364; // @[VectorDiv.scala 159:19 47:21]
  wire [4:0] _GEN_1528 = _T_34 ? ctrlComplex_3_fuType : _GEN_1365; // @[VectorDiv.scala 159:19 47:21]
  wire [7:0] _GEN_1529 = _T_34 ? ctrlComplex_3_fuOpType : _GEN_1366; // @[VectorDiv.scala 159:19 47:21]
  wire  _GEN_1532 = _T_34 ? ctrlComplex_3_vecWen : _GEN_1369; // @[VectorDiv.scala 159:19 47:21]
  wire [19:0] _GEN_1540 = _T_34 ? ctrlComplex_3_imm : _GEN_1377; // @[VectorDiv.scala 159:19 47:21]
  wire [2:0] _GEN_1545 = _T_34 ? ctrlComplex_4_srcType_0 : _GEN_1385; // @[VectorDiv.scala 159:19 47:21]
  wire [2:0] _GEN_1546 = _T_34 ? ctrlComplex_4_srcType_1 : _GEN_1386; // @[VectorDiv.scala 159:19 47:21]
  wire [5:0] _GEN_1549 = _T_34 ? ctrlComplex_4_lsrc_0 : _GEN_1389; // @[VectorDiv.scala 159:19 47:21]
  wire [5:0] _GEN_1550 = _T_34 ? ctrlComplex_4_lsrc_1 : _GEN_1390; // @[VectorDiv.scala 159:19 47:21]
  wire [5:0] _GEN_1553 = _T_34 ? ctrlComplex_4_ldest : _GEN_1393; // @[VectorDiv.scala 159:19 47:21]
  wire [4:0] _GEN_1554 = _T_34 ? ctrlComplex_4_fuType : _GEN_1394; // @[VectorDiv.scala 159:19 47:21]
  wire [7:0] _GEN_1555 = _T_34 ? ctrlComplex_4_fuOpType : _GEN_1395; // @[VectorDiv.scala 159:19 47:21]
  wire  _GEN_1558 = _T_34 ? ctrlComplex_4_vecWen : _GEN_1398; // @[VectorDiv.scala 159:19 47:21]
  wire [19:0] _GEN_1566 = _T_34 ? ctrlComplex_4_imm : _GEN_1406; // @[VectorDiv.scala 159:19 47:21]
  wire [2:0] _GEN_1571 = _T_34 ? ctrlComplex_5_srcType_0 : _GEN_1411; // @[VectorDiv.scala 159:19 47:21]
  wire [2:0] _GEN_1572 = _T_34 ? ctrlComplex_5_srcType_1 : _GEN_1412; // @[VectorDiv.scala 159:19 47:21]
  wire [5:0] _GEN_1575 = _T_34 ? ctrlComplex_5_lsrc_0 : _GEN_1415; // @[VectorDiv.scala 159:19 47:21]
  wire [5:0] _GEN_1576 = _T_34 ? ctrlComplex_5_lsrc_1 : _GEN_1416; // @[VectorDiv.scala 159:19 47:21]
  wire [5:0] _GEN_1579 = _T_34 ? ctrlComplex_5_ldest : _GEN_1419; // @[VectorDiv.scala 159:19 47:21]
  wire [4:0] _GEN_1580 = _T_34 ? ctrlComplex_5_fuType : _GEN_1420; // @[VectorDiv.scala 159:19 47:21]
  wire [7:0] _GEN_1581 = _T_34 ? ctrlComplex_5_fuOpType : _GEN_1421; // @[VectorDiv.scala 159:19 47:21]
  wire  _GEN_1584 = _T_34 ? ctrlComplex_5_vecWen : _GEN_1424; // @[VectorDiv.scala 159:19 47:21]
  wire [19:0] _GEN_1592 = _T_34 ? ctrlComplex_5_imm : _GEN_1432; // @[VectorDiv.scala 159:19 47:21]
  wire [2:0] _GEN_1623 = _T_33 ? ctrlSimple_0_srcType_0 : ctrlComplex_1_srcType_0; // @[VectorDiv.scala 159:19 163:32]
  wire [2:0] _GEN_1624 = _T_33 ? ctrlSimple_0_srcType_1 : ctrlComplex_1_srcType_1; // @[VectorDiv.scala 159:19 163:32]
  wire [5:0] _GEN_1627 = _T_33 ? ctrlSimple_0_lsrc_0 : ctrlComplex_1_lsrc_0; // @[VectorDiv.scala 159:19 163:32]
  wire [5:0] _GEN_1628 = _T_33 ? ctrlSimple_0_lsrc_1 : ctrlComplex_1_lsrc_1; // @[VectorDiv.scala 159:19 163:32]
  wire [5:0] _GEN_1631 = _T_33 ? ctrlSimple_0_ldest : ctrlComplex_1_ldest; // @[VectorDiv.scala 159:19 163:32]
  wire [4:0] _GEN_1632 = _T_33 ? ctrlSimple_0_fuType : ctrlComplex_1_fuType; // @[VectorDiv.scala 159:19 163:32]
  wire [7:0] _GEN_1633 = _T_33 ? ctrlSimple_0_fuOpType : ctrlComplex_1_fuOpType; // @[VectorDiv.scala 159:19 163:32]
  wire  _GEN_1636 = _T_33 ? ctrlSimple_0_vecWen : ctrlComplex_1_vecWen; // @[VectorDiv.scala 159:19 163:32]
  wire [19:0] _GEN_1644 = _T_33 ? ctrlSimple_0_imm : ctrlComplex_1_imm; // @[VectorDiv.scala 159:19 163:32]
  wire  _GEN_1649 = _T_33 | _GEN_1515; // @[VectorDiv.scala 159:19 167:25]
  wire  _GEN_1650 = _T_33 ? 1'h0 : _GEN_1515; // @[VectorDiv.scala 159:19 170:25]
  wire  _GEN_1651 = _T_33 ? 1'h0 : _GEN_1516; // @[VectorDiv.scala 159:19 170:25]
  wire  _GEN_1652 = _T_33 ? 1'h0 : _GEN_1517; // @[VectorDiv.scala 159:19 170:25]
  wire  _GEN_1653 = _T_33 ? 1'h0 : _GEN_1518; // @[VectorDiv.scala 159:19 170:25]
  wire [2:0] _GEN_1654 = _T_33 ? ctrlComplex_2_srcType_0 : _GEN_1489; // @[VectorDiv.scala 159:19 47:21]
  wire [2:0] _GEN_1655 = _T_33 ? ctrlComplex_2_srcType_1 : _GEN_1490; // @[VectorDiv.scala 159:19 47:21]
  wire [5:0] _GEN_1658 = _T_33 ? ctrlComplex_2_lsrc_0 : _GEN_1493; // @[VectorDiv.scala 159:19 47:21]
  wire [5:0] _GEN_1659 = _T_33 ? ctrlComplex_2_lsrc_1 : _GEN_1494; // @[VectorDiv.scala 159:19 47:21]
  wire [5:0] _GEN_1662 = _T_33 ? ctrlComplex_2_ldest : _GEN_1497; // @[VectorDiv.scala 159:19 47:21]
  wire [4:0] _GEN_1663 = _T_33 ? ctrlComplex_2_fuType : _GEN_1498; // @[VectorDiv.scala 159:19 47:21]
  wire [7:0] _GEN_1664 = _T_33 ? ctrlComplex_2_fuOpType : _GEN_1499; // @[VectorDiv.scala 159:19 47:21]
  wire  _GEN_1667 = _T_33 ? ctrlComplex_2_vecWen : _GEN_1502; // @[VectorDiv.scala 159:19 47:21]
  wire [19:0] _GEN_1675 = _T_33 ? ctrlComplex_2_imm : _GEN_1510; // @[VectorDiv.scala 159:19 47:21]
  wire [2:0] _GEN_1680 = _T_33 ? ctrlComplex_3_srcType_0 : _GEN_1519; // @[VectorDiv.scala 159:19 47:21]
  wire [2:0] _GEN_1681 = _T_33 ? ctrlComplex_3_srcType_1 : _GEN_1520; // @[VectorDiv.scala 159:19 47:21]
  wire [5:0] _GEN_1684 = _T_33 ? ctrlComplex_3_lsrc_0 : _GEN_1523; // @[VectorDiv.scala 159:19 47:21]
  wire [5:0] _GEN_1685 = _T_33 ? ctrlComplex_3_lsrc_1 : _GEN_1524; // @[VectorDiv.scala 159:19 47:21]
  wire [5:0] _GEN_1688 = _T_33 ? ctrlComplex_3_ldest : _GEN_1527; // @[VectorDiv.scala 159:19 47:21]
  wire [4:0] _GEN_1689 = _T_33 ? ctrlComplex_3_fuType : _GEN_1528; // @[VectorDiv.scala 159:19 47:21]
  wire [7:0] _GEN_1690 = _T_33 ? ctrlComplex_3_fuOpType : _GEN_1529; // @[VectorDiv.scala 159:19 47:21]
  wire  _GEN_1693 = _T_33 ? ctrlComplex_3_vecWen : _GEN_1532; // @[VectorDiv.scala 159:19 47:21]
  wire [19:0] _GEN_1701 = _T_33 ? ctrlComplex_3_imm : _GEN_1540; // @[VectorDiv.scala 159:19 47:21]
  wire [2:0] _GEN_1706 = _T_33 ? ctrlComplex_4_srcType_0 : _GEN_1545; // @[VectorDiv.scala 159:19 47:21]
  wire [2:0] _GEN_1707 = _T_33 ? ctrlComplex_4_srcType_1 : _GEN_1546; // @[VectorDiv.scala 159:19 47:21]
  wire [5:0] _GEN_1710 = _T_33 ? ctrlComplex_4_lsrc_0 : _GEN_1549; // @[VectorDiv.scala 159:19 47:21]
  wire [5:0] _GEN_1711 = _T_33 ? ctrlComplex_4_lsrc_1 : _GEN_1550; // @[VectorDiv.scala 159:19 47:21]
  wire [5:0] _GEN_1714 = _T_33 ? ctrlComplex_4_ldest : _GEN_1553; // @[VectorDiv.scala 159:19 47:21]
  wire [4:0] _GEN_1715 = _T_33 ? ctrlComplex_4_fuType : _GEN_1554; // @[VectorDiv.scala 159:19 47:21]
  wire [7:0] _GEN_1716 = _T_33 ? ctrlComplex_4_fuOpType : _GEN_1555; // @[VectorDiv.scala 159:19 47:21]
  wire  _GEN_1719 = _T_33 ? ctrlComplex_4_vecWen : _GEN_1558; // @[VectorDiv.scala 159:19 47:21]
  wire [19:0] _GEN_1727 = _T_33 ? ctrlComplex_4_imm : _GEN_1566; // @[VectorDiv.scala 159:19 47:21]
  wire [2:0] _GEN_1732 = _T_33 ? ctrlComplex_5_srcType_0 : _GEN_1571; // @[VectorDiv.scala 159:19 47:21]
  wire [2:0] _GEN_1733 = _T_33 ? ctrlComplex_5_srcType_1 : _GEN_1572; // @[VectorDiv.scala 159:19 47:21]
  wire [5:0] _GEN_1736 = _T_33 ? ctrlComplex_5_lsrc_0 : _GEN_1575; // @[VectorDiv.scala 159:19 47:21]
  wire [5:0] _GEN_1737 = _T_33 ? ctrlComplex_5_lsrc_1 : _GEN_1576; // @[VectorDiv.scala 159:19 47:21]
  wire [5:0] _GEN_1740 = _T_33 ? ctrlComplex_5_ldest : _GEN_1579; // @[VectorDiv.scala 159:19 47:21]
  wire [4:0] _GEN_1741 = _T_33 ? ctrlComplex_5_fuType : _GEN_1580; // @[VectorDiv.scala 159:19 47:21]
  wire [7:0] _GEN_1742 = _T_33 ? ctrlComplex_5_fuOpType : _GEN_1581; // @[VectorDiv.scala 159:19 47:21]
  wire  _GEN_1745 = _T_33 ? ctrlComplex_5_vecWen : _GEN_1584; // @[VectorDiv.scala 159:19 47:21]
  wire [19:0] _GEN_1753 = _T_33 ? ctrlComplex_5_imm : _GEN_1592; // @[VectorDiv.scala 159:19 47:21]
  wire [2:0] ctrlSimple_1_srcType_0 = decoders_1_io_vecCtrl_srcType_0; // @[VectorDiv.scala 25:24 36:19]
  wire [2:0] _GEN_1888 = _T_36 ? ctrlSimple_1_srcType_0 : ctrlComplex_5_srcType_0; // @[VectorDiv.scala 235:19 291:38 47:21]
  wire [2:0] ctrlSimple_1_srcType_1 = decoders_1_io_vecCtrl_srcType_1; // @[VectorDiv.scala 25:24 36:19]
  wire [2:0] _GEN_1889 = _T_36 ? ctrlSimple_1_srcType_1 : ctrlComplex_5_srcType_1; // @[VectorDiv.scala 235:19 291:38 47:21]
  wire [5:0] ctrlSimple_1_lsrc_0 = decoders_1_io_vecCtrl_lsrc_0; // @[VectorDiv.scala 25:24 36:19]
  wire [5:0] _GEN_1892 = _T_36 ? ctrlSimple_1_lsrc_0 : ctrlComplex_5_lsrc_0; // @[VectorDiv.scala 235:19 291:38 47:21]
  wire [5:0] ctrlSimple_1_lsrc_1 = decoders_1_io_vecCtrl_lsrc_1; // @[VectorDiv.scala 25:24 36:19]
  wire [5:0] _GEN_1893 = _T_36 ? ctrlSimple_1_lsrc_1 : ctrlComplex_5_lsrc_1; // @[VectorDiv.scala 235:19 291:38 47:21]
  wire [5:0] ctrlSimple_1_ldest = decoders_1_io_vecCtrl_ldest; // @[VectorDiv.scala 25:24 36:19]
  wire [5:0] _GEN_1896 = _T_36 ? ctrlSimple_1_ldest : ctrlComplex_5_ldest; // @[VectorDiv.scala 235:19 291:38 47:21]
  wire [4:0] ctrlSimple_1_fuType = decoders_1_io_vecCtrl_fuType; // @[VectorDiv.scala 25:24 36:19]
  wire [4:0] _GEN_1897 = _T_36 ? ctrlSimple_1_fuType : ctrlComplex_5_fuType; // @[VectorDiv.scala 235:19 291:38 47:21]
  wire [7:0] ctrlSimple_1_fuOpType = decoders_1_io_vecCtrl_fuOpType; // @[VectorDiv.scala 25:24 36:19]
  wire [7:0] _GEN_1898 = _T_36 ? ctrlSimple_1_fuOpType : ctrlComplex_5_fuOpType; // @[VectorDiv.scala 235:19 291:38 47:21]
  wire  ctrlSimple_1_vecWen = decoders_1_io_vecCtrl_vecWen; // @[VectorDiv.scala 25:24 36:19]
  wire  _GEN_1901 = _T_36 ? ctrlSimple_1_vecWen : ctrlComplex_5_vecWen; // @[VectorDiv.scala 235:19 291:38 47:21]
  wire [19:0] ctrlSimple_1_imm = decoders_1_io_vecCtrl_imm; // @[VectorDiv.scala 25:24 36:19]
  wire [19:0] _GEN_1909 = _T_36 ? ctrlSimple_1_imm : ctrlComplex_5_imm; // @[VectorDiv.scala 235:19 291:38 47:21]
  wire [2:0] _GEN_2019 = _T_35 ? ctrlSimple_1_srcType_0 : _GEN_1224; // @[VectorDiv.scala 235:19 274:38]
  wire [2:0] _GEN_2020 = _T_35 ? ctrlSimple_1_srcType_1 : _GEN_1225; // @[VectorDiv.scala 235:19 274:38]
  wire [5:0] _GEN_2023 = _T_35 ? ctrlSimple_1_lsrc_0 : _GEN_1228; // @[VectorDiv.scala 235:19 274:38]
  wire [5:0] _GEN_2024 = _T_35 ? ctrlSimple_1_lsrc_1 : _GEN_1229; // @[VectorDiv.scala 235:19 274:38]
  wire [5:0] _GEN_2027 = _T_35 ? ctrlSimple_1_ldest : _GEN_1232; // @[VectorDiv.scala 235:19 274:38]
  wire [4:0] _GEN_2028 = _T_35 ? ctrlSimple_1_fuType : _GEN_1233; // @[VectorDiv.scala 235:19 274:38]
  wire [7:0] _GEN_2029 = _T_35 ? ctrlSimple_1_fuOpType : _GEN_1234; // @[VectorDiv.scala 235:19 274:38]
  wire  _GEN_2032 = _T_35 ? ctrlSimple_1_vecWen : _GEN_1237; // @[VectorDiv.scala 235:19 274:38]
  wire [19:0] _GEN_2040 = _T_35 ? ctrlSimple_1_imm : _GEN_1245; // @[VectorDiv.scala 235:19 274:38]
  wire  _GEN_2045 = _T_35 | _T_36; // @[VectorDiv.scala 235:19 279:25]
  wire  _GEN_2046 = _T_35 ? 1'h0 : _T_36; // @[VectorDiv.scala 235:19 282:25]
  wire [2:0] _GEN_2047 = _T_35 ? ctrlComplex_5_srcType_0 : _GEN_1888; // @[VectorDiv.scala 235:19 47:21]
  wire [2:0] _GEN_2048 = _T_35 ? ctrlComplex_5_srcType_1 : _GEN_1889; // @[VectorDiv.scala 235:19 47:21]
  wire [5:0] _GEN_2051 = _T_35 ? ctrlComplex_5_lsrc_0 : _GEN_1892; // @[VectorDiv.scala 235:19 47:21]
  wire [5:0] _GEN_2052 = _T_35 ? ctrlComplex_5_lsrc_1 : _GEN_1893; // @[VectorDiv.scala 235:19 47:21]
  wire [5:0] _GEN_2055 = _T_35 ? ctrlComplex_5_ldest : _GEN_1896; // @[VectorDiv.scala 235:19 47:21]
  wire [4:0] _GEN_2056 = _T_35 ? ctrlComplex_5_fuType : _GEN_1897; // @[VectorDiv.scala 235:19 47:21]
  wire [7:0] _GEN_2057 = _T_35 ? ctrlComplex_5_fuOpType : _GEN_1898; // @[VectorDiv.scala 235:19 47:21]
  wire  _GEN_2060 = _T_35 ? ctrlComplex_5_vecWen : _GEN_1901; // @[VectorDiv.scala 235:19 47:21]
  wire [19:0] _GEN_2068 = _T_35 ? ctrlComplex_5_imm : _GEN_1909; // @[VectorDiv.scala 235:19 47:21]
  wire [2:0] _GEN_2151 = _T_34 ? ctrlSimple_1_srcType_0 : _GEN_1356; // @[VectorDiv.scala 235:19 257:38]
  wire [2:0] _GEN_2152 = _T_34 ? ctrlSimple_1_srcType_1 : _GEN_1357; // @[VectorDiv.scala 235:19 257:38]
  wire [5:0] _GEN_2155 = _T_34 ? ctrlSimple_1_lsrc_0 : _GEN_1360; // @[VectorDiv.scala 235:19 257:38]
  wire [5:0] _GEN_2156 = _T_34 ? ctrlSimple_1_lsrc_1 : _GEN_1361; // @[VectorDiv.scala 235:19 257:38]
  wire [5:0] _GEN_2159 = _T_34 ? ctrlSimple_1_ldest : _GEN_1364; // @[VectorDiv.scala 235:19 257:38]
  wire [4:0] _GEN_2160 = _T_34 ? ctrlSimple_1_fuType : _GEN_1365; // @[VectorDiv.scala 235:19 257:38]
  wire [7:0] _GEN_2161 = _T_34 ? ctrlSimple_1_fuOpType : _GEN_1366; // @[VectorDiv.scala 235:19 257:38]
  wire  _GEN_2164 = _T_34 ? ctrlSimple_1_vecWen : _GEN_1369; // @[VectorDiv.scala 235:19 257:38]
  wire [19:0] _GEN_2172 = _T_34 ? ctrlSimple_1_imm : _GEN_1377; // @[VectorDiv.scala 235:19 257:38]
  wire  _GEN_2177 = _T_34 | _GEN_2045; // @[VectorDiv.scala 235:19 262:25]
  wire  _GEN_2178 = _T_34 ? 1'h0 : _GEN_2045; // @[VectorDiv.scala 235:19 265:25]
  wire  _GEN_2179 = _T_34 ? 1'h0 : _GEN_2046; // @[VectorDiv.scala 235:19 265:25]
  wire [2:0] _GEN_2180 = _T_34 ? ctrlComplex_4_srcType_0 : _GEN_2019; // @[VectorDiv.scala 235:19 47:21]
  wire [2:0] _GEN_2181 = _T_34 ? ctrlComplex_4_srcType_1 : _GEN_2020; // @[VectorDiv.scala 235:19 47:21]
  wire [5:0] _GEN_2184 = _T_34 ? ctrlComplex_4_lsrc_0 : _GEN_2023; // @[VectorDiv.scala 235:19 47:21]
  wire [5:0] _GEN_2185 = _T_34 ? ctrlComplex_4_lsrc_1 : _GEN_2024; // @[VectorDiv.scala 235:19 47:21]
  wire [5:0] _GEN_2188 = _T_34 ? ctrlComplex_4_ldest : _GEN_2027; // @[VectorDiv.scala 235:19 47:21]
  wire [4:0] _GEN_2189 = _T_34 ? ctrlComplex_4_fuType : _GEN_2028; // @[VectorDiv.scala 235:19 47:21]
  wire [7:0] _GEN_2190 = _T_34 ? ctrlComplex_4_fuOpType : _GEN_2029; // @[VectorDiv.scala 235:19 47:21]
  wire  _GEN_2193 = _T_34 ? ctrlComplex_4_vecWen : _GEN_2032; // @[VectorDiv.scala 235:19 47:21]
  wire [19:0] _GEN_2201 = _T_34 ? ctrlComplex_4_imm : _GEN_2040; // @[VectorDiv.scala 235:19 47:21]
  wire [2:0] _GEN_2206 = _T_34 ? ctrlComplex_5_srcType_0 : _GEN_2047; // @[VectorDiv.scala 235:19 47:21]
  wire [2:0] _GEN_2207 = _T_34 ? ctrlComplex_5_srcType_1 : _GEN_2048; // @[VectorDiv.scala 235:19 47:21]
  wire [5:0] _GEN_2210 = _T_34 ? ctrlComplex_5_lsrc_0 : _GEN_2051; // @[VectorDiv.scala 235:19 47:21]
  wire [5:0] _GEN_2211 = _T_34 ? ctrlComplex_5_lsrc_1 : _GEN_2052; // @[VectorDiv.scala 235:19 47:21]
  wire [5:0] _GEN_2214 = _T_34 ? ctrlComplex_5_ldest : _GEN_2055; // @[VectorDiv.scala 235:19 47:21]
  wire [4:0] _GEN_2215 = _T_34 ? ctrlComplex_5_fuType : _GEN_2056; // @[VectorDiv.scala 235:19 47:21]
  wire [7:0] _GEN_2216 = _T_34 ? ctrlComplex_5_fuOpType : _GEN_2057; // @[VectorDiv.scala 235:19 47:21]
  wire  _GEN_2219 = _T_34 ? ctrlComplex_5_vecWen : _GEN_2060; // @[VectorDiv.scala 235:19 47:21]
  wire [19:0] _GEN_2227 = _T_34 ? ctrlComplex_5_imm : _GEN_2068; // @[VectorDiv.scala 235:19 47:21]
  wire [2:0] _GEN_2284 = _T_33 ? ctrlSimple_1_srcType_0 : _GEN_1489; // @[VectorDiv.scala 235:19 240:38]
  wire [2:0] _GEN_2285 = _T_33 ? ctrlSimple_1_srcType_1 : _GEN_1490; // @[VectorDiv.scala 235:19 240:38]
  wire [5:0] _GEN_2288 = _T_33 ? ctrlSimple_1_lsrc_0 : _GEN_1493; // @[VectorDiv.scala 235:19 240:38]
  wire [5:0] _GEN_2289 = _T_33 ? ctrlSimple_1_lsrc_1 : _GEN_1494; // @[VectorDiv.scala 235:19 240:38]
  wire [5:0] _GEN_2292 = _T_33 ? ctrlSimple_1_ldest : _GEN_1497; // @[VectorDiv.scala 235:19 240:38]
  wire [4:0] _GEN_2293 = _T_33 ? ctrlSimple_1_fuType : _GEN_1498; // @[VectorDiv.scala 235:19 240:38]
  wire [7:0] _GEN_2294 = _T_33 ? ctrlSimple_1_fuOpType : _GEN_1499; // @[VectorDiv.scala 235:19 240:38]
  wire  _GEN_2297 = _T_33 ? ctrlSimple_1_vecWen : _GEN_1502; // @[VectorDiv.scala 235:19 240:38]
  wire [19:0] _GEN_2305 = _T_33 ? ctrlSimple_1_imm : _GEN_1510; // @[VectorDiv.scala 235:19 240:38]
  wire  _GEN_2310 = _T_33 | _GEN_2177; // @[VectorDiv.scala 235:19 245:25]
  wire  _GEN_2311 = _T_33 ? 1'h0 : _GEN_2177; // @[VectorDiv.scala 235:19 248:25]
  wire  _GEN_2312 = _T_33 ? 1'h0 : _GEN_2178; // @[VectorDiv.scala 235:19 248:25]
  wire  _GEN_2313 = _T_33 ? 1'h0 : _GEN_2179; // @[VectorDiv.scala 235:19 248:25]
  wire [2:0] _GEN_2314 = _T_33 ? ctrlComplex_3_srcType_0 : _GEN_2151; // @[VectorDiv.scala 235:19 47:21]
  wire [2:0] _GEN_2315 = _T_33 ? ctrlComplex_3_srcType_1 : _GEN_2152; // @[VectorDiv.scala 235:19 47:21]
  wire [5:0] _GEN_2318 = _T_33 ? ctrlComplex_3_lsrc_0 : _GEN_2155; // @[VectorDiv.scala 235:19 47:21]
  wire [5:0] _GEN_2319 = _T_33 ? ctrlComplex_3_lsrc_1 : _GEN_2156; // @[VectorDiv.scala 235:19 47:21]
  wire [5:0] _GEN_2322 = _T_33 ? ctrlComplex_3_ldest : _GEN_2159; // @[VectorDiv.scala 235:19 47:21]
  wire [4:0] _GEN_2323 = _T_33 ? ctrlComplex_3_fuType : _GEN_2160; // @[VectorDiv.scala 235:19 47:21]
  wire [7:0] _GEN_2324 = _T_33 ? ctrlComplex_3_fuOpType : _GEN_2161; // @[VectorDiv.scala 235:19 47:21]
  wire  _GEN_2327 = _T_33 ? ctrlComplex_3_vecWen : _GEN_2164; // @[VectorDiv.scala 235:19 47:21]
  wire [19:0] _GEN_2335 = _T_33 ? ctrlComplex_3_imm : _GEN_2172; // @[VectorDiv.scala 235:19 47:21]
  wire [2:0] _GEN_2340 = _T_33 ? ctrlComplex_4_srcType_0 : _GEN_2180; // @[VectorDiv.scala 235:19 47:21]
  wire [2:0] _GEN_2341 = _T_33 ? ctrlComplex_4_srcType_1 : _GEN_2181; // @[VectorDiv.scala 235:19 47:21]
  wire [5:0] _GEN_2344 = _T_33 ? ctrlComplex_4_lsrc_0 : _GEN_2184; // @[VectorDiv.scala 235:19 47:21]
  wire [5:0] _GEN_2345 = _T_33 ? ctrlComplex_4_lsrc_1 : _GEN_2185; // @[VectorDiv.scala 235:19 47:21]
  wire [5:0] _GEN_2348 = _T_33 ? ctrlComplex_4_ldest : _GEN_2188; // @[VectorDiv.scala 235:19 47:21]
  wire [4:0] _GEN_2349 = _T_33 ? ctrlComplex_4_fuType : _GEN_2189; // @[VectorDiv.scala 235:19 47:21]
  wire [7:0] _GEN_2350 = _T_33 ? ctrlComplex_4_fuOpType : _GEN_2190; // @[VectorDiv.scala 235:19 47:21]
  wire  _GEN_2353 = _T_33 ? ctrlComplex_4_vecWen : _GEN_2193; // @[VectorDiv.scala 235:19 47:21]
  wire [19:0] _GEN_2361 = _T_33 ? ctrlComplex_4_imm : _GEN_2201; // @[VectorDiv.scala 235:19 47:21]
  wire [2:0] _GEN_2366 = _T_33 ? ctrlComplex_5_srcType_0 : _GEN_2206; // @[VectorDiv.scala 235:19 47:21]
  wire [2:0] _GEN_2367 = _T_33 ? ctrlComplex_5_srcType_1 : _GEN_2207; // @[VectorDiv.scala 235:19 47:21]
  wire [5:0] _GEN_2370 = _T_33 ? ctrlComplex_5_lsrc_0 : _GEN_2210; // @[VectorDiv.scala 235:19 47:21]
  wire [5:0] _GEN_2371 = _T_33 ? ctrlComplex_5_lsrc_1 : _GEN_2211; // @[VectorDiv.scala 235:19 47:21]
  wire [5:0] _GEN_2374 = _T_33 ? ctrlComplex_5_ldest : _GEN_2214; // @[VectorDiv.scala 235:19 47:21]
  wire [4:0] _GEN_2375 = _T_33 ? ctrlComplex_5_fuType : _GEN_2215; // @[VectorDiv.scala 235:19 47:21]
  wire [7:0] _GEN_2376 = _T_33 ? ctrlComplex_5_fuOpType : _GEN_2216; // @[VectorDiv.scala 235:19 47:21]
  wire  _GEN_2379 = _T_33 ? ctrlComplex_5_vecWen : _GEN_2219; // @[VectorDiv.scala 235:19 47:21]
  wire [19:0] _GEN_2387 = _T_33 ? ctrlComplex_5_imm : _GEN_2227; // @[VectorDiv.scala 235:19 47:21]
  wire [2:0] _GEN_2496 = _T_35 ? ctrlSimple_1_srcType_0 : ctrlComplex_4_srcType_0; // @[VectorDiv.scala 305:19 344:38 47:21]
  wire [2:0] _GEN_2497 = _T_35 ? ctrlSimple_1_srcType_1 : ctrlComplex_4_srcType_1; // @[VectorDiv.scala 305:19 344:38 47:21]
  wire [5:0] _GEN_2500 = _T_35 ? ctrlSimple_1_lsrc_0 : ctrlComplex_4_lsrc_0; // @[VectorDiv.scala 305:19 344:38 47:21]
  wire [5:0] _GEN_2501 = _T_35 ? ctrlSimple_1_lsrc_1 : ctrlComplex_4_lsrc_1; // @[VectorDiv.scala 305:19 344:38 47:21]
  wire [5:0] _GEN_2504 = _T_35 ? ctrlSimple_1_ldest : ctrlComplex_4_ldest; // @[VectorDiv.scala 305:19 344:38 47:21]
  wire [4:0] _GEN_2505 = _T_35 ? ctrlSimple_1_fuType : ctrlComplex_4_fuType; // @[VectorDiv.scala 305:19 344:38 47:21]
  wire [7:0] _GEN_2506 = _T_35 ? ctrlSimple_1_fuOpType : ctrlComplex_4_fuOpType; // @[VectorDiv.scala 305:19 344:38 47:21]
  wire  _GEN_2509 = _T_35 ? ctrlSimple_1_vecWen : ctrlComplex_4_vecWen; // @[VectorDiv.scala 305:19 344:38 47:21]
  wire [19:0] _GEN_2517 = _T_35 ? ctrlSimple_1_imm : ctrlComplex_4_imm; // @[VectorDiv.scala 305:19 344:38 47:21]
  wire [2:0] ctrlSimple_2_srcType_0 = decoders_2_io_vecCtrl_srcType_0; // @[VectorDiv.scala 25:24 36:19]
  wire [2:0] _GEN_2522 = _T_35 ? ctrlSimple_2_srcType_0 : ctrlComplex_5_srcType_0; // @[VectorDiv.scala 305:19 344:38 47:21]
  wire [2:0] ctrlSimple_2_srcType_1 = decoders_2_io_vecCtrl_srcType_1; // @[VectorDiv.scala 25:24 36:19]
  wire [2:0] _GEN_2523 = _T_35 ? ctrlSimple_2_srcType_1 : ctrlComplex_5_srcType_1; // @[VectorDiv.scala 305:19 344:38 47:21]
  wire [5:0] ctrlSimple_2_lsrc_0 = decoders_2_io_vecCtrl_lsrc_0; // @[VectorDiv.scala 25:24 36:19]
  wire [5:0] _GEN_2526 = _T_35 ? ctrlSimple_2_lsrc_0 : ctrlComplex_5_lsrc_0; // @[VectorDiv.scala 305:19 344:38 47:21]
  wire [5:0] ctrlSimple_2_lsrc_1 = decoders_2_io_vecCtrl_lsrc_1; // @[VectorDiv.scala 25:24 36:19]
  wire [5:0] _GEN_2527 = _T_35 ? ctrlSimple_2_lsrc_1 : ctrlComplex_5_lsrc_1; // @[VectorDiv.scala 305:19 344:38 47:21]
  wire [5:0] ctrlSimple_2_ldest = decoders_2_io_vecCtrl_ldest; // @[VectorDiv.scala 25:24 36:19]
  wire [5:0] _GEN_2530 = _T_35 ? ctrlSimple_2_ldest : ctrlComplex_5_ldest; // @[VectorDiv.scala 305:19 344:38 47:21]
  wire [4:0] ctrlSimple_2_fuType = decoders_2_io_vecCtrl_fuType; // @[VectorDiv.scala 25:24 36:19]
  wire [4:0] _GEN_2531 = _T_35 ? ctrlSimple_2_fuType : ctrlComplex_5_fuType; // @[VectorDiv.scala 305:19 344:38 47:21]
  wire [7:0] ctrlSimple_2_fuOpType = decoders_2_io_vecCtrl_fuOpType; // @[VectorDiv.scala 25:24 36:19]
  wire [7:0] _GEN_2532 = _T_35 ? ctrlSimple_2_fuOpType : ctrlComplex_5_fuOpType; // @[VectorDiv.scala 305:19 344:38 47:21]
  wire  ctrlSimple_2_vecWen = decoders_2_io_vecCtrl_vecWen; // @[VectorDiv.scala 25:24 36:19]
  wire  _GEN_2535 = _T_35 ? ctrlSimple_2_vecWen : ctrlComplex_5_vecWen; // @[VectorDiv.scala 305:19 344:38 47:21]
  wire [19:0] ctrlSimple_2_imm = decoders_2_io_vecCtrl_imm; // @[VectorDiv.scala 25:24 36:19]
  wire [19:0] _GEN_2543 = _T_35 ? ctrlSimple_2_imm : ctrlComplex_5_imm; // @[VectorDiv.scala 305:19 344:38 47:21]
  wire [2:0] _GEN_2653 = _T_34 ? ctrlSimple_2_srcType_0 : _GEN_2496; // @[VectorDiv.scala 305:19 327:38]
  wire [2:0] _GEN_2654 = _T_34 ? ctrlSimple_2_srcType_1 : _GEN_2497; // @[VectorDiv.scala 305:19 327:38]
  wire [5:0] _GEN_2657 = _T_34 ? ctrlSimple_2_lsrc_0 : _GEN_2500; // @[VectorDiv.scala 305:19 327:38]
  wire [5:0] _GEN_2658 = _T_34 ? ctrlSimple_2_lsrc_1 : _GEN_2501; // @[VectorDiv.scala 305:19 327:38]
  wire [5:0] _GEN_2661 = _T_34 ? ctrlSimple_2_ldest : _GEN_2504; // @[VectorDiv.scala 305:19 327:38]
  wire [4:0] _GEN_2662 = _T_34 ? ctrlSimple_2_fuType : _GEN_2505; // @[VectorDiv.scala 305:19 327:38]
  wire [7:0] _GEN_2663 = _T_34 ? ctrlSimple_2_fuOpType : _GEN_2506; // @[VectorDiv.scala 305:19 327:38]
  wire  _GEN_2666 = _T_34 ? ctrlSimple_2_vecWen : _GEN_2509; // @[VectorDiv.scala 305:19 327:38]
  wire [19:0] _GEN_2674 = _T_34 ? ctrlSimple_2_imm : _GEN_2517; // @[VectorDiv.scala 305:19 327:38]
  wire  _GEN_2679 = _T_34 | _T_35; // @[VectorDiv.scala 305:19 332:25]
  wire  _GEN_2680 = _T_34 ? 1'h0 : _T_35; // @[VectorDiv.scala 305:19 335:25]
  wire [2:0] _GEN_2681 = _T_34 ? ctrlComplex_5_srcType_0 : _GEN_2522; // @[VectorDiv.scala 305:19 47:21]
  wire [2:0] _GEN_2682 = _T_34 ? ctrlComplex_5_srcType_1 : _GEN_2523; // @[VectorDiv.scala 305:19 47:21]
  wire [5:0] _GEN_2685 = _T_34 ? ctrlComplex_5_lsrc_0 : _GEN_2526; // @[VectorDiv.scala 305:19 47:21]
  wire [5:0] _GEN_2686 = _T_34 ? ctrlComplex_5_lsrc_1 : _GEN_2527; // @[VectorDiv.scala 305:19 47:21]
  wire [5:0] _GEN_2689 = _T_34 ? ctrlComplex_5_ldest : _GEN_2530; // @[VectorDiv.scala 305:19 47:21]
  wire [4:0] _GEN_2690 = _T_34 ? ctrlComplex_5_fuType : _GEN_2531; // @[VectorDiv.scala 305:19 47:21]
  wire [7:0] _GEN_2691 = _T_34 ? ctrlComplex_5_fuOpType : _GEN_2532; // @[VectorDiv.scala 305:19 47:21]
  wire  _GEN_2694 = _T_34 ? ctrlComplex_5_vecWen : _GEN_2535; // @[VectorDiv.scala 305:19 47:21]
  wire [19:0] _GEN_2702 = _T_34 ? ctrlComplex_5_imm : _GEN_2543; // @[VectorDiv.scala 305:19 47:21]
  wire [2:0] _GEN_2785 = _T_33 ? ctrlSimple_2_srcType_0 : _GEN_2151; // @[VectorDiv.scala 305:19 310:38]
  wire [2:0] _GEN_2786 = _T_33 ? ctrlSimple_2_srcType_1 : _GEN_2152; // @[VectorDiv.scala 305:19 310:38]
  wire [5:0] _GEN_2789 = _T_33 ? ctrlSimple_2_lsrc_0 : _GEN_2155; // @[VectorDiv.scala 305:19 310:38]
  wire [5:0] _GEN_2790 = _T_33 ? ctrlSimple_2_lsrc_1 : _GEN_2156; // @[VectorDiv.scala 305:19 310:38]
  wire [5:0] _GEN_2793 = _T_33 ? ctrlSimple_2_ldest : _GEN_2159; // @[VectorDiv.scala 305:19 310:38]
  wire [4:0] _GEN_2794 = _T_33 ? ctrlSimple_2_fuType : _GEN_2160; // @[VectorDiv.scala 305:19 310:38]
  wire [7:0] _GEN_2795 = _T_33 ? ctrlSimple_2_fuOpType : _GEN_2161; // @[VectorDiv.scala 305:19 310:38]
  wire  _GEN_2798 = _T_33 ? ctrlSimple_2_vecWen : _GEN_2164; // @[VectorDiv.scala 305:19 310:38]
  wire [19:0] _GEN_2806 = _T_33 ? ctrlSimple_2_imm : _GEN_2172; // @[VectorDiv.scala 305:19 310:38]
  wire  _GEN_2811 = _T_33 | _GEN_2679; // @[VectorDiv.scala 305:19 315:25]
  wire  _GEN_2812 = _T_33 ? 1'h0 : _GEN_2679; // @[VectorDiv.scala 305:19 318:25]
  wire  _GEN_2813 = _T_33 ? 1'h0 : _GEN_2680; // @[VectorDiv.scala 305:19 318:25]
  wire [2:0] _GEN_2814 = _T_33 ? ctrlComplex_4_srcType_0 : _GEN_2653; // @[VectorDiv.scala 305:19 47:21]
  wire [2:0] _GEN_2815 = _T_33 ? ctrlComplex_4_srcType_1 : _GEN_2654; // @[VectorDiv.scala 305:19 47:21]
  wire [5:0] _GEN_2818 = _T_33 ? ctrlComplex_4_lsrc_0 : _GEN_2657; // @[VectorDiv.scala 305:19 47:21]
  wire [5:0] _GEN_2819 = _T_33 ? ctrlComplex_4_lsrc_1 : _GEN_2658; // @[VectorDiv.scala 305:19 47:21]
  wire [5:0] _GEN_2822 = _T_33 ? ctrlComplex_4_ldest : _GEN_2661; // @[VectorDiv.scala 305:19 47:21]
  wire [4:0] _GEN_2823 = _T_33 ? ctrlComplex_4_fuType : _GEN_2662; // @[VectorDiv.scala 305:19 47:21]
  wire [7:0] _GEN_2824 = _T_33 ? ctrlComplex_4_fuOpType : _GEN_2663; // @[VectorDiv.scala 305:19 47:21]
  wire  _GEN_2827 = _T_33 ? ctrlComplex_4_vecWen : _GEN_2666; // @[VectorDiv.scala 305:19 47:21]
  wire [19:0] _GEN_2835 = _T_33 ? ctrlComplex_4_imm : _GEN_2674; // @[VectorDiv.scala 305:19 47:21]
  wire [2:0] _GEN_2840 = _T_33 ? ctrlComplex_5_srcType_0 : _GEN_2681; // @[VectorDiv.scala 305:19 47:21]
  wire [2:0] _GEN_2841 = _T_33 ? ctrlComplex_5_srcType_1 : _GEN_2682; // @[VectorDiv.scala 305:19 47:21]
  wire [5:0] _GEN_2844 = _T_33 ? ctrlComplex_5_lsrc_0 : _GEN_2685; // @[VectorDiv.scala 305:19 47:21]
  wire [5:0] _GEN_2845 = _T_33 ? ctrlComplex_5_lsrc_1 : _GEN_2686; // @[VectorDiv.scala 305:19 47:21]
  wire [5:0] _GEN_2848 = _T_33 ? ctrlComplex_5_ldest : _GEN_2689; // @[VectorDiv.scala 305:19 47:21]
  wire [4:0] _GEN_2849 = _T_33 ? ctrlComplex_5_fuType : _GEN_2690; // @[VectorDiv.scala 305:19 47:21]
  wire [7:0] _GEN_2850 = _T_33 ? ctrlComplex_5_fuOpType : _GEN_2691; // @[VectorDiv.scala 305:19 47:21]
  wire  _GEN_2853 = _T_33 ? ctrlComplex_5_vecWen : _GEN_2694; // @[VectorDiv.scala 305:19 47:21]
  wire [19:0] _GEN_2861 = _T_33 ? ctrlComplex_5_imm : _GEN_2702; // @[VectorDiv.scala 305:19 47:21]
  wire [2:0] _GEN_2944 = _T_34 ? ctrlSimple_1_srcType_0 : ctrlComplex_3_srcType_0; // @[VectorDiv.scala 359:19 381:38 47:21]
  wire [2:0] _GEN_2945 = _T_34 ? ctrlSimple_1_srcType_1 : ctrlComplex_3_srcType_1; // @[VectorDiv.scala 359:19 381:38 47:21]
  wire [5:0] _GEN_2948 = _T_34 ? ctrlSimple_1_lsrc_0 : ctrlComplex_3_lsrc_0; // @[VectorDiv.scala 359:19 381:38 47:21]
  wire [5:0] _GEN_2949 = _T_34 ? ctrlSimple_1_lsrc_1 : ctrlComplex_3_lsrc_1; // @[VectorDiv.scala 359:19 381:38 47:21]
  wire [5:0] _GEN_2952 = _T_34 ? ctrlSimple_1_ldest : ctrlComplex_3_ldest; // @[VectorDiv.scala 359:19 381:38 47:21]
  wire [4:0] _GEN_2953 = _T_34 ? ctrlSimple_1_fuType : ctrlComplex_3_fuType; // @[VectorDiv.scala 359:19 381:38 47:21]
  wire [7:0] _GEN_2954 = _T_34 ? ctrlSimple_1_fuOpType : ctrlComplex_3_fuOpType; // @[VectorDiv.scala 359:19 381:38 47:21]
  wire  _GEN_2957 = _T_34 ? ctrlSimple_1_vecWen : ctrlComplex_3_vecWen; // @[VectorDiv.scala 359:19 381:38 47:21]
  wire [19:0] _GEN_2965 = _T_34 ? ctrlSimple_1_imm : ctrlComplex_3_imm; // @[VectorDiv.scala 359:19 381:38 47:21]
  wire [2:0] _GEN_2970 = _T_34 ? ctrlSimple_2_srcType_0 : ctrlComplex_4_srcType_0; // @[VectorDiv.scala 359:19 381:38 47:21]
  wire [2:0] _GEN_2971 = _T_34 ? ctrlSimple_2_srcType_1 : ctrlComplex_4_srcType_1; // @[VectorDiv.scala 359:19 381:38 47:21]
  wire [5:0] _GEN_2974 = _T_34 ? ctrlSimple_2_lsrc_0 : ctrlComplex_4_lsrc_0; // @[VectorDiv.scala 359:19 381:38 47:21]
  wire [5:0] _GEN_2975 = _T_34 ? ctrlSimple_2_lsrc_1 : ctrlComplex_4_lsrc_1; // @[VectorDiv.scala 359:19 381:38 47:21]
  wire [5:0] _GEN_2978 = _T_34 ? ctrlSimple_2_ldest : ctrlComplex_4_ldest; // @[VectorDiv.scala 359:19 381:38 47:21]
  wire [4:0] _GEN_2979 = _T_34 ? ctrlSimple_2_fuType : ctrlComplex_4_fuType; // @[VectorDiv.scala 359:19 381:38 47:21]
  wire [7:0] _GEN_2980 = _T_34 ? ctrlSimple_2_fuOpType : ctrlComplex_4_fuOpType; // @[VectorDiv.scala 359:19 381:38 47:21]
  wire  _GEN_2983 = _T_34 ? ctrlSimple_2_vecWen : ctrlComplex_4_vecWen; // @[VectorDiv.scala 359:19 381:38 47:21]
  wire [19:0] _GEN_2991 = _T_34 ? ctrlSimple_2_imm : ctrlComplex_4_imm; // @[VectorDiv.scala 359:19 381:38 47:21]
  wire [2:0] ctrlSimple_3_srcType_0 = decoders_3_io_vecCtrl_srcType_0; // @[VectorDiv.scala 25:24 36:19]
  wire [2:0] _GEN_2996 = _T_34 ? ctrlSimple_3_srcType_0 : ctrlComplex_5_srcType_0; // @[VectorDiv.scala 359:19 381:38 47:21]
  wire [2:0] ctrlSimple_3_srcType_1 = decoders_3_io_vecCtrl_srcType_1; // @[VectorDiv.scala 25:24 36:19]
  wire [2:0] _GEN_2997 = _T_34 ? ctrlSimple_3_srcType_1 : ctrlComplex_5_srcType_1; // @[VectorDiv.scala 359:19 381:38 47:21]
  wire [5:0] ctrlSimple_3_lsrc_0 = decoders_3_io_vecCtrl_lsrc_0; // @[VectorDiv.scala 25:24 36:19]
  wire [5:0] _GEN_3000 = _T_34 ? ctrlSimple_3_lsrc_0 : ctrlComplex_5_lsrc_0; // @[VectorDiv.scala 359:19 381:38 47:21]
  wire [5:0] ctrlSimple_3_lsrc_1 = decoders_3_io_vecCtrl_lsrc_1; // @[VectorDiv.scala 25:24 36:19]
  wire [5:0] _GEN_3001 = _T_34 ? ctrlSimple_3_lsrc_1 : ctrlComplex_5_lsrc_1; // @[VectorDiv.scala 359:19 381:38 47:21]
  wire [5:0] ctrlSimple_3_ldest = decoders_3_io_vecCtrl_ldest; // @[VectorDiv.scala 25:24 36:19]
  wire [5:0] _GEN_3004 = _T_34 ? ctrlSimple_3_ldest : ctrlComplex_5_ldest; // @[VectorDiv.scala 359:19 381:38 47:21]
  wire [4:0] ctrlSimple_3_fuType = decoders_3_io_vecCtrl_fuType; // @[VectorDiv.scala 25:24 36:19]
  wire [4:0] _GEN_3005 = _T_34 ? ctrlSimple_3_fuType : ctrlComplex_5_fuType; // @[VectorDiv.scala 359:19 381:38 47:21]
  wire [7:0] ctrlSimple_3_fuOpType = decoders_3_io_vecCtrl_fuOpType; // @[VectorDiv.scala 25:24 36:19]
  wire [7:0] _GEN_3006 = _T_34 ? ctrlSimple_3_fuOpType : ctrlComplex_5_fuOpType; // @[VectorDiv.scala 359:19 381:38 47:21]
  wire  ctrlSimple_3_vecWen = decoders_3_io_vecCtrl_vecWen; // @[VectorDiv.scala 25:24 36:19]
  wire  _GEN_3009 = _T_34 ? ctrlSimple_3_vecWen : ctrlComplex_5_vecWen; // @[VectorDiv.scala 359:19 381:38 47:21]
  wire [19:0] ctrlSimple_3_imm = decoders_3_io_vecCtrl_imm; // @[VectorDiv.scala 25:24 36:19]
  wire [19:0] _GEN_3017 = _T_34 ? ctrlSimple_3_imm : ctrlComplex_5_imm; // @[VectorDiv.scala 359:19 381:38 47:21]
  wire [2:0] _GEN_3101 = _T_33 ? ctrlSimple_2_srcType_0 : _GEN_2944; // @[VectorDiv.scala 359:19 364:38]
  wire [2:0] _GEN_3102 = _T_33 ? ctrlSimple_2_srcType_1 : _GEN_2945; // @[VectorDiv.scala 359:19 364:38]
  wire [5:0] _GEN_3105 = _T_33 ? ctrlSimple_2_lsrc_0 : _GEN_2948; // @[VectorDiv.scala 359:19 364:38]
  wire [5:0] _GEN_3106 = _T_33 ? ctrlSimple_2_lsrc_1 : _GEN_2949; // @[VectorDiv.scala 359:19 364:38]
  wire [5:0] _GEN_3109 = _T_33 ? ctrlSimple_2_ldest : _GEN_2952; // @[VectorDiv.scala 359:19 364:38]
  wire [4:0] _GEN_3110 = _T_33 ? ctrlSimple_2_fuType : _GEN_2953; // @[VectorDiv.scala 359:19 364:38]
  wire [7:0] _GEN_3111 = _T_33 ? ctrlSimple_2_fuOpType : _GEN_2954; // @[VectorDiv.scala 359:19 364:38]
  wire  _GEN_3114 = _T_33 ? ctrlSimple_2_vecWen : _GEN_2957; // @[VectorDiv.scala 359:19 364:38]
  wire [19:0] _GEN_3122 = _T_33 ? ctrlSimple_2_imm : _GEN_2965; // @[VectorDiv.scala 359:19 364:38]
  wire [2:0] _GEN_3127 = _T_33 ? ctrlSimple_3_srcType_0 : _GEN_2970; // @[VectorDiv.scala 359:19 364:38]
  wire [2:0] _GEN_3128 = _T_33 ? ctrlSimple_3_srcType_1 : _GEN_2971; // @[VectorDiv.scala 359:19 364:38]
  wire [5:0] _GEN_3131 = _T_33 ? ctrlSimple_3_lsrc_0 : _GEN_2974; // @[VectorDiv.scala 359:19 364:38]
  wire [5:0] _GEN_3132 = _T_33 ? ctrlSimple_3_lsrc_1 : _GEN_2975; // @[VectorDiv.scala 359:19 364:38]
  wire [5:0] _GEN_3135 = _T_33 ? ctrlSimple_3_ldest : _GEN_2978; // @[VectorDiv.scala 359:19 364:38]
  wire [4:0] _GEN_3136 = _T_33 ? ctrlSimple_3_fuType : _GEN_2979; // @[VectorDiv.scala 359:19 364:38]
  wire [7:0] _GEN_3137 = _T_33 ? ctrlSimple_3_fuOpType : _GEN_2980; // @[VectorDiv.scala 359:19 364:38]
  wire  _GEN_3140 = _T_33 ? ctrlSimple_3_vecWen : _GEN_2983; // @[VectorDiv.scala 359:19 364:38]
  wire [19:0] _GEN_3148 = _T_33 ? ctrlSimple_3_imm : _GEN_2991; // @[VectorDiv.scala 359:19 364:38]
  wire  _GEN_3153 = _T_33 | _T_34; // @[VectorDiv.scala 359:19 369:25]
  wire  _GEN_3154 = _T_33 ? 1'h0 : _T_34; // @[VectorDiv.scala 359:19 372:25]
  wire [2:0] _GEN_3155 = _T_33 ? ctrlComplex_5_srcType_0 : _GEN_2996; // @[VectorDiv.scala 359:19 47:21]
  wire [2:0] _GEN_3156 = _T_33 ? ctrlComplex_5_srcType_1 : _GEN_2997; // @[VectorDiv.scala 359:19 47:21]
  wire [5:0] _GEN_3159 = _T_33 ? ctrlComplex_5_lsrc_0 : _GEN_3000; // @[VectorDiv.scala 359:19 47:21]
  wire [5:0] _GEN_3160 = _T_33 ? ctrlComplex_5_lsrc_1 : _GEN_3001; // @[VectorDiv.scala 359:19 47:21]
  wire [5:0] _GEN_3163 = _T_33 ? ctrlComplex_5_ldest : _GEN_3004; // @[VectorDiv.scala 359:19 47:21]
  wire [4:0] _GEN_3164 = _T_33 ? ctrlComplex_5_fuType : _GEN_3005; // @[VectorDiv.scala 359:19 47:21]
  wire [7:0] _GEN_3165 = _T_33 ? ctrlComplex_5_fuOpType : _GEN_3006; // @[VectorDiv.scala 359:19 47:21]
  wire  _GEN_3168 = _T_33 ? ctrlComplex_5_vecWen : _GEN_3009; // @[VectorDiv.scala 359:19 47:21]
  wire [19:0] _GEN_3176 = _T_33 ? ctrlComplex_5_imm : _GEN_3017; // @[VectorDiv.scala 359:19 47:21]
  wire [2:0] _GEN_3207 = 6'h20 == offset ? _GEN_1623 : ctrlComplex_1_srcType_0; // @[VectorDiv.scala 54:18 47:21]
  wire [2:0] _GEN_3208 = 6'h20 == offset ? _GEN_1624 : ctrlComplex_1_srcType_1; // @[VectorDiv.scala 54:18 47:21]
  wire [5:0] _GEN_3211 = 6'h20 == offset ? _GEN_1627 : ctrlComplex_1_lsrc_0; // @[VectorDiv.scala 54:18 47:21]
  wire [5:0] _GEN_3212 = 6'h20 == offset ? _GEN_1628 : ctrlComplex_1_lsrc_1; // @[VectorDiv.scala 54:18 47:21]
  wire [5:0] _GEN_3215 = 6'h20 == offset ? _GEN_1631 : ctrlComplex_1_ldest; // @[VectorDiv.scala 54:18 47:21]
  wire [4:0] _GEN_3216 = 6'h20 == offset ? _GEN_1632 : ctrlComplex_1_fuType; // @[VectorDiv.scala 54:18 47:21]
  wire [7:0] _GEN_3217 = 6'h20 == offset ? _GEN_1633 : ctrlComplex_1_fuOpType; // @[VectorDiv.scala 54:18 47:21]
  wire  _GEN_3220 = 6'h20 == offset ? _GEN_1636 : ctrlComplex_1_vecWen; // @[VectorDiv.scala 54:18 47:21]
  wire [19:0] _GEN_3228 = 6'h20 == offset ? _GEN_1644 : ctrlComplex_1_imm; // @[VectorDiv.scala 54:18 47:21]
  wire [2:0] _GEN_3233 = 6'h20 == offset ? _GEN_2284 : ctrlComplex_2_srcType_0; // @[VectorDiv.scala 54:18 47:21]
  wire [2:0] _GEN_3234 = 6'h20 == offset ? _GEN_2285 : ctrlComplex_2_srcType_1; // @[VectorDiv.scala 54:18 47:21]
  wire [5:0] _GEN_3237 = 6'h20 == offset ? _GEN_2288 : ctrlComplex_2_lsrc_0; // @[VectorDiv.scala 54:18 47:21]
  wire [5:0] _GEN_3238 = 6'h20 == offset ? _GEN_2289 : ctrlComplex_2_lsrc_1; // @[VectorDiv.scala 54:18 47:21]
  wire [5:0] _GEN_3241 = 6'h20 == offset ? _GEN_2292 : ctrlComplex_2_ldest; // @[VectorDiv.scala 54:18 47:21]
  wire [4:0] _GEN_3242 = 6'h20 == offset ? _GEN_2293 : ctrlComplex_2_fuType; // @[VectorDiv.scala 54:18 47:21]
  wire [7:0] _GEN_3243 = 6'h20 == offset ? _GEN_2294 : ctrlComplex_2_fuOpType; // @[VectorDiv.scala 54:18 47:21]
  wire  _GEN_3246 = 6'h20 == offset ? _GEN_2297 : ctrlComplex_2_vecWen; // @[VectorDiv.scala 54:18 47:21]
  wire [19:0] _GEN_3254 = 6'h20 == offset ? _GEN_2305 : ctrlComplex_2_imm; // @[VectorDiv.scala 54:18 47:21]
  wire [2:0] _GEN_3259 = 6'h20 == offset ? _GEN_3101 : ctrlComplex_3_srcType_0; // @[VectorDiv.scala 54:18 47:21]
  wire [2:0] _GEN_3260 = 6'h20 == offset ? _GEN_3102 : ctrlComplex_3_srcType_1; // @[VectorDiv.scala 54:18 47:21]
  wire [5:0] _GEN_3263 = 6'h20 == offset ? _GEN_3105 : ctrlComplex_3_lsrc_0; // @[VectorDiv.scala 54:18 47:21]
  wire [5:0] _GEN_3264 = 6'h20 == offset ? _GEN_3106 : ctrlComplex_3_lsrc_1; // @[VectorDiv.scala 54:18 47:21]
  wire [5:0] _GEN_3267 = 6'h20 == offset ? _GEN_3109 : ctrlComplex_3_ldest; // @[VectorDiv.scala 54:18 47:21]
  wire [4:0] _GEN_3268 = 6'h20 == offset ? _GEN_3110 : ctrlComplex_3_fuType; // @[VectorDiv.scala 54:18 47:21]
  wire [7:0] _GEN_3269 = 6'h20 == offset ? _GEN_3111 : ctrlComplex_3_fuOpType; // @[VectorDiv.scala 54:18 47:21]
  wire  _GEN_3272 = 6'h20 == offset ? _GEN_3114 : ctrlComplex_3_vecWen; // @[VectorDiv.scala 54:18 47:21]
  wire [19:0] _GEN_3280 = 6'h20 == offset ? _GEN_3122 : ctrlComplex_3_imm; // @[VectorDiv.scala 54:18 47:21]
  wire [2:0] _GEN_3285 = 6'h20 == offset ? _GEN_3127 : ctrlComplex_4_srcType_0; // @[VectorDiv.scala 54:18 47:21]
  wire [2:0] _GEN_3286 = 6'h20 == offset ? _GEN_3128 : ctrlComplex_4_srcType_1; // @[VectorDiv.scala 54:18 47:21]
  wire [5:0] _GEN_3289 = 6'h20 == offset ? _GEN_3131 : ctrlComplex_4_lsrc_0; // @[VectorDiv.scala 54:18 47:21]
  wire [5:0] _GEN_3290 = 6'h20 == offset ? _GEN_3132 : ctrlComplex_4_lsrc_1; // @[VectorDiv.scala 54:18 47:21]
  wire [5:0] _GEN_3293 = 6'h20 == offset ? _GEN_3135 : ctrlComplex_4_ldest; // @[VectorDiv.scala 54:18 47:21]
  wire [4:0] _GEN_3294 = 6'h20 == offset ? _GEN_3136 : ctrlComplex_4_fuType; // @[VectorDiv.scala 54:18 47:21]
  wire [7:0] _GEN_3295 = 6'h20 == offset ? _GEN_3137 : ctrlComplex_4_fuOpType; // @[VectorDiv.scala 54:18 47:21]
  wire  _GEN_3298 = 6'h20 == offset ? _GEN_3140 : ctrlComplex_4_vecWen; // @[VectorDiv.scala 54:18 47:21]
  wire [19:0] _GEN_3306 = 6'h20 == offset ? _GEN_3148 : ctrlComplex_4_imm; // @[VectorDiv.scala 54:18 47:21]
  wire  _GEN_3311 = 6'h20 == offset & _GEN_3153; // @[VectorDiv.scala 50:17 54:18]
  wire  _GEN_3312 = 6'h20 == offset & _GEN_3154; // @[VectorDiv.scala 50:17 54:18]
  wire [2:0] _GEN_3313 = 6'h20 == offset ? _GEN_3155 : ctrlComplex_5_srcType_0; // @[VectorDiv.scala 54:18 47:21]
  wire [2:0] _GEN_3314 = 6'h20 == offset ? _GEN_3156 : ctrlComplex_5_srcType_1; // @[VectorDiv.scala 54:18 47:21]
  wire [5:0] _GEN_3317 = 6'h20 == offset ? _GEN_3159 : ctrlComplex_5_lsrc_0; // @[VectorDiv.scala 54:18 47:21]
  wire [5:0] _GEN_3318 = 6'h20 == offset ? _GEN_3160 : ctrlComplex_5_lsrc_1; // @[VectorDiv.scala 54:18 47:21]
  wire [5:0] _GEN_3321 = 6'h20 == offset ? _GEN_3163 : ctrlComplex_5_ldest; // @[VectorDiv.scala 54:18 47:21]
  wire [4:0] _GEN_3322 = 6'h20 == offset ? _GEN_3164 : ctrlComplex_5_fuType; // @[VectorDiv.scala 54:18 47:21]
  wire [7:0] _GEN_3323 = 6'h20 == offset ? _GEN_3165 : ctrlComplex_5_fuOpType; // @[VectorDiv.scala 54:18 47:21]
  wire  _GEN_3326 = 6'h20 == offset ? _GEN_3168 : ctrlComplex_5_vecWen; // @[VectorDiv.scala 54:18 47:21]
  wire [19:0] _GEN_3334 = 6'h20 == offset ? _GEN_3176 : ctrlComplex_5_imm; // @[VectorDiv.scala 54:18 47:21]
  wire [2:0] _GEN_3365 = 6'h10 == offset ? _GEN_1623 : _GEN_3207; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3366 = 6'h10 == offset ? _GEN_1624 : _GEN_3208; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3369 = 6'h10 == offset ? _GEN_1627 : _GEN_3211; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3370 = 6'h10 == offset ? _GEN_1628 : _GEN_3212; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3373 = 6'h10 == offset ? _GEN_1631 : _GEN_3215; // @[VectorDiv.scala 54:18]
  wire [4:0] _GEN_3374 = 6'h10 == offset ? _GEN_1632 : _GEN_3216; // @[VectorDiv.scala 54:18]
  wire [7:0] _GEN_3375 = 6'h10 == offset ? _GEN_1633 : _GEN_3217; // @[VectorDiv.scala 54:18]
  wire  _GEN_3378 = 6'h10 == offset ? _GEN_1636 : _GEN_3220; // @[VectorDiv.scala 54:18]
  wire [19:0] _GEN_3386 = 6'h10 == offset ? _GEN_1644 : _GEN_3228; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3391 = 6'h10 == offset ? _GEN_2284 : _GEN_3233; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3392 = 6'h10 == offset ? _GEN_2285 : _GEN_3234; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3395 = 6'h10 == offset ? _GEN_2288 : _GEN_3237; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3396 = 6'h10 == offset ? _GEN_2289 : _GEN_3238; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3399 = 6'h10 == offset ? _GEN_2292 : _GEN_3241; // @[VectorDiv.scala 54:18]
  wire [4:0] _GEN_3400 = 6'h10 == offset ? _GEN_2293 : _GEN_3242; // @[VectorDiv.scala 54:18]
  wire [7:0] _GEN_3401 = 6'h10 == offset ? _GEN_2294 : _GEN_3243; // @[VectorDiv.scala 54:18]
  wire  _GEN_3404 = 6'h10 == offset ? _GEN_2297 : _GEN_3246; // @[VectorDiv.scala 54:18]
  wire [19:0] _GEN_3412 = 6'h10 == offset ? _GEN_2305 : _GEN_3254; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3417 = 6'h10 == offset ? _GEN_2785 : _GEN_3259; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3418 = 6'h10 == offset ? _GEN_2786 : _GEN_3260; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3421 = 6'h10 == offset ? _GEN_2789 : _GEN_3263; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3422 = 6'h10 == offset ? _GEN_2790 : _GEN_3264; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3425 = 6'h10 == offset ? _GEN_2793 : _GEN_3267; // @[VectorDiv.scala 54:18]
  wire [4:0] _GEN_3426 = 6'h10 == offset ? _GEN_2794 : _GEN_3268; // @[VectorDiv.scala 54:18]
  wire [7:0] _GEN_3427 = 6'h10 == offset ? _GEN_2795 : _GEN_3269; // @[VectorDiv.scala 54:18]
  wire  _GEN_3430 = 6'h10 == offset ? _GEN_2798 : _GEN_3272; // @[VectorDiv.scala 54:18]
  wire [19:0] _GEN_3438 = 6'h10 == offset ? _GEN_2806 : _GEN_3280; // @[VectorDiv.scala 54:18]
  wire  _GEN_3443 = 6'h10 == offset ? _GEN_2811 : _GEN_3311; // @[VectorDiv.scala 54:18]
  wire  _GEN_3444 = 6'h10 == offset ? _GEN_2812 : _GEN_3311; // @[VectorDiv.scala 54:18]
  wire  _GEN_3445 = 6'h10 == offset ? _GEN_2813 : _GEN_3312; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3446 = 6'h10 == offset ? _GEN_2814 : _GEN_3285; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3447 = 6'h10 == offset ? _GEN_2815 : _GEN_3286; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3450 = 6'h10 == offset ? _GEN_2818 : _GEN_3289; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3451 = 6'h10 == offset ? _GEN_2819 : _GEN_3290; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3454 = 6'h10 == offset ? _GEN_2822 : _GEN_3293; // @[VectorDiv.scala 54:18]
  wire [4:0] _GEN_3455 = 6'h10 == offset ? _GEN_2823 : _GEN_3294; // @[VectorDiv.scala 54:18]
  wire [7:0] _GEN_3456 = 6'h10 == offset ? _GEN_2824 : _GEN_3295; // @[VectorDiv.scala 54:18]
  wire  _GEN_3459 = 6'h10 == offset ? _GEN_2827 : _GEN_3298; // @[VectorDiv.scala 54:18]
  wire [19:0] _GEN_3467 = 6'h10 == offset ? _GEN_2835 : _GEN_3306; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3472 = 6'h10 == offset ? _GEN_2840 : _GEN_3313; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3473 = 6'h10 == offset ? _GEN_2841 : _GEN_3314; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3476 = 6'h10 == offset ? _GEN_2844 : _GEN_3317; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3477 = 6'h10 == offset ? _GEN_2845 : _GEN_3318; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3480 = 6'h10 == offset ? _GEN_2848 : _GEN_3321; // @[VectorDiv.scala 54:18]
  wire [4:0] _GEN_3481 = 6'h10 == offset ? _GEN_2849 : _GEN_3322; // @[VectorDiv.scala 54:18]
  wire [7:0] _GEN_3482 = 6'h10 == offset ? _GEN_2850 : _GEN_3323; // @[VectorDiv.scala 54:18]
  wire  _GEN_3485 = 6'h10 == offset ? _GEN_2853 : _GEN_3326; // @[VectorDiv.scala 54:18]
  wire [19:0] _GEN_3493 = 6'h10 == offset ? _GEN_2861 : _GEN_3334; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3524 = 6'h8 == offset ? _GEN_1623 : _GEN_3365; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3525 = 6'h8 == offset ? _GEN_1624 : _GEN_3366; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3528 = 6'h8 == offset ? _GEN_1627 : _GEN_3369; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3529 = 6'h8 == offset ? _GEN_1628 : _GEN_3370; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3532 = 6'h8 == offset ? _GEN_1631 : _GEN_3373; // @[VectorDiv.scala 54:18]
  wire [4:0] _GEN_3533 = 6'h8 == offset ? _GEN_1632 : _GEN_3374; // @[VectorDiv.scala 54:18]
  wire [7:0] _GEN_3534 = 6'h8 == offset ? _GEN_1633 : _GEN_3375; // @[VectorDiv.scala 54:18]
  wire  _GEN_3537 = 6'h8 == offset ? _GEN_1636 : _GEN_3378; // @[VectorDiv.scala 54:18]
  wire [19:0] _GEN_3545 = 6'h8 == offset ? _GEN_1644 : _GEN_3386; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3550 = 6'h8 == offset ? _GEN_2284 : _GEN_3391; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3551 = 6'h8 == offset ? _GEN_2285 : _GEN_3392; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3554 = 6'h8 == offset ? _GEN_2288 : _GEN_3395; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3555 = 6'h8 == offset ? _GEN_2289 : _GEN_3396; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3558 = 6'h8 == offset ? _GEN_2292 : _GEN_3399; // @[VectorDiv.scala 54:18]
  wire [4:0] _GEN_3559 = 6'h8 == offset ? _GEN_2293 : _GEN_3400; // @[VectorDiv.scala 54:18]
  wire [7:0] _GEN_3560 = 6'h8 == offset ? _GEN_2294 : _GEN_3401; // @[VectorDiv.scala 54:18]
  wire  _GEN_3563 = 6'h8 == offset ? _GEN_2297 : _GEN_3404; // @[VectorDiv.scala 54:18]
  wire [19:0] _GEN_3571 = 6'h8 == offset ? _GEN_2305 : _GEN_3412; // @[VectorDiv.scala 54:18]
  wire  _GEN_3576 = 6'h8 == offset ? _GEN_2310 : _GEN_3443; // @[VectorDiv.scala 54:18]
  wire  _GEN_3577 = 6'h8 == offset ? _GEN_2311 : _GEN_3443; // @[VectorDiv.scala 54:18]
  wire  _GEN_3578 = 6'h8 == offset ? _GEN_2312 : _GEN_3444; // @[VectorDiv.scala 54:18]
  wire  _GEN_3579 = 6'h8 == offset ? _GEN_2313 : _GEN_3445; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3580 = 6'h8 == offset ? _GEN_2314 : _GEN_3417; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3581 = 6'h8 == offset ? _GEN_2315 : _GEN_3418; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3584 = 6'h8 == offset ? _GEN_2318 : _GEN_3421; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3585 = 6'h8 == offset ? _GEN_2319 : _GEN_3422; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3588 = 6'h8 == offset ? _GEN_2322 : _GEN_3425; // @[VectorDiv.scala 54:18]
  wire [4:0] _GEN_3589 = 6'h8 == offset ? _GEN_2323 : _GEN_3426; // @[VectorDiv.scala 54:18]
  wire [7:0] _GEN_3590 = 6'h8 == offset ? _GEN_2324 : _GEN_3427; // @[VectorDiv.scala 54:18]
  wire  _GEN_3593 = 6'h8 == offset ? _GEN_2327 : _GEN_3430; // @[VectorDiv.scala 54:18]
  wire [19:0] _GEN_3601 = 6'h8 == offset ? _GEN_2335 : _GEN_3438; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3606 = 6'h8 == offset ? _GEN_2340 : _GEN_3446; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3607 = 6'h8 == offset ? _GEN_2341 : _GEN_3447; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3610 = 6'h8 == offset ? _GEN_2344 : _GEN_3450; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3611 = 6'h8 == offset ? _GEN_2345 : _GEN_3451; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3614 = 6'h8 == offset ? _GEN_2348 : _GEN_3454; // @[VectorDiv.scala 54:18]
  wire [4:0] _GEN_3615 = 6'h8 == offset ? _GEN_2349 : _GEN_3455; // @[VectorDiv.scala 54:18]
  wire [7:0] _GEN_3616 = 6'h8 == offset ? _GEN_2350 : _GEN_3456; // @[VectorDiv.scala 54:18]
  wire  _GEN_3619 = 6'h8 == offset ? _GEN_2353 : _GEN_3459; // @[VectorDiv.scala 54:18]
  wire [19:0] _GEN_3627 = 6'h8 == offset ? _GEN_2361 : _GEN_3467; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3632 = 6'h8 == offset ? _GEN_2366 : _GEN_3472; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3633 = 6'h8 == offset ? _GEN_2367 : _GEN_3473; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3636 = 6'h8 == offset ? _GEN_2370 : _GEN_3476; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3637 = 6'h8 == offset ? _GEN_2371 : _GEN_3477; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3640 = 6'h8 == offset ? _GEN_2374 : _GEN_3480; // @[VectorDiv.scala 54:18]
  wire [4:0] _GEN_3641 = 6'h8 == offset ? _GEN_2375 : _GEN_3481; // @[VectorDiv.scala 54:18]
  wire [7:0] _GEN_3642 = 6'h8 == offset ? _GEN_2376 : _GEN_3482; // @[VectorDiv.scala 54:18]
  wire  _GEN_3645 = 6'h8 == offset ? _GEN_2379 : _GEN_3485; // @[VectorDiv.scala 54:18]
  wire [19:0] _GEN_3653 = 6'h8 == offset ? _GEN_2387 : _GEN_3493; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3684 = 6'h4 == offset ? _GEN_1623 : _GEN_3524; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3685 = 6'h4 == offset ? _GEN_1624 : _GEN_3525; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3688 = 6'h4 == offset ? _GEN_1627 : _GEN_3528; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3689 = 6'h4 == offset ? _GEN_1628 : _GEN_3529; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3692 = 6'h4 == offset ? _GEN_1631 : _GEN_3532; // @[VectorDiv.scala 54:18]
  wire [4:0] _GEN_3693 = 6'h4 == offset ? _GEN_1632 : _GEN_3533; // @[VectorDiv.scala 54:18]
  wire [7:0] _GEN_3694 = 6'h4 == offset ? _GEN_1633 : _GEN_3534; // @[VectorDiv.scala 54:18]
  wire  _GEN_3697 = 6'h4 == offset ? _GEN_1636 : _GEN_3537; // @[VectorDiv.scala 54:18]
  wire [19:0] _GEN_3705 = 6'h4 == offset ? _GEN_1644 : _GEN_3545; // @[VectorDiv.scala 54:18]
  wire  _GEN_3710 = 6'h4 == offset ? _GEN_1649 : _GEN_3576; // @[VectorDiv.scala 54:18]
  wire  _GEN_3711 = 6'h4 == offset ? _GEN_1650 : _GEN_3576; // @[VectorDiv.scala 54:18]
  wire  _GEN_3712 = 6'h4 == offset ? _GEN_1651 : _GEN_3577; // @[VectorDiv.scala 54:18]
  wire  _GEN_3713 = 6'h4 == offset ? _GEN_1652 : _GEN_3578; // @[VectorDiv.scala 54:18]
  wire  _GEN_3714 = 6'h4 == offset ? _GEN_1653 : _GEN_3579; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3715 = 6'h4 == offset ? _GEN_1654 : _GEN_3550; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3716 = 6'h4 == offset ? _GEN_1655 : _GEN_3551; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3719 = 6'h4 == offset ? _GEN_1658 : _GEN_3554; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3720 = 6'h4 == offset ? _GEN_1659 : _GEN_3555; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3723 = 6'h4 == offset ? _GEN_1662 : _GEN_3558; // @[VectorDiv.scala 54:18]
  wire [4:0] _GEN_3724 = 6'h4 == offset ? _GEN_1663 : _GEN_3559; // @[VectorDiv.scala 54:18]
  wire [7:0] _GEN_3725 = 6'h4 == offset ? _GEN_1664 : _GEN_3560; // @[VectorDiv.scala 54:18]
  wire  _GEN_3728 = 6'h4 == offset ? _GEN_1667 : _GEN_3563; // @[VectorDiv.scala 54:18]
  wire [19:0] _GEN_3736 = 6'h4 == offset ? _GEN_1675 : _GEN_3571; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3741 = 6'h4 == offset ? _GEN_1680 : _GEN_3580; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3742 = 6'h4 == offset ? _GEN_1681 : _GEN_3581; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3745 = 6'h4 == offset ? _GEN_1684 : _GEN_3584; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3746 = 6'h4 == offset ? _GEN_1685 : _GEN_3585; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3749 = 6'h4 == offset ? _GEN_1688 : _GEN_3588; // @[VectorDiv.scala 54:18]
  wire [4:0] _GEN_3750 = 6'h4 == offset ? _GEN_1689 : _GEN_3589; // @[VectorDiv.scala 54:18]
  wire [7:0] _GEN_3751 = 6'h4 == offset ? _GEN_1690 : _GEN_3590; // @[VectorDiv.scala 54:18]
  wire  _GEN_3754 = 6'h4 == offset ? _GEN_1693 : _GEN_3593; // @[VectorDiv.scala 54:18]
  wire [19:0] _GEN_3762 = 6'h4 == offset ? _GEN_1701 : _GEN_3601; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3767 = 6'h4 == offset ? _GEN_1706 : _GEN_3606; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3768 = 6'h4 == offset ? _GEN_1707 : _GEN_3607; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3771 = 6'h4 == offset ? _GEN_1710 : _GEN_3610; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3772 = 6'h4 == offset ? _GEN_1711 : _GEN_3611; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3775 = 6'h4 == offset ? _GEN_1714 : _GEN_3614; // @[VectorDiv.scala 54:18]
  wire [4:0] _GEN_3776 = 6'h4 == offset ? _GEN_1715 : _GEN_3615; // @[VectorDiv.scala 54:18]
  wire [7:0] _GEN_3777 = 6'h4 == offset ? _GEN_1716 : _GEN_3616; // @[VectorDiv.scala 54:18]
  wire  _GEN_3780 = 6'h4 == offset ? _GEN_1719 : _GEN_3619; // @[VectorDiv.scala 54:18]
  wire [19:0] _GEN_3788 = 6'h4 == offset ? _GEN_1727 : _GEN_3627; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3793 = 6'h4 == offset ? _GEN_1732 : _GEN_3632; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3794 = 6'h4 == offset ? _GEN_1733 : _GEN_3633; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3797 = 6'h4 == offset ? _GEN_1736 : _GEN_3636; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3798 = 6'h4 == offset ? _GEN_1737 : _GEN_3637; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3801 = 6'h4 == offset ? _GEN_1740 : _GEN_3640; // @[VectorDiv.scala 54:18]
  wire [4:0] _GEN_3802 = 6'h4 == offset ? _GEN_1741 : _GEN_3641; // @[VectorDiv.scala 54:18]
  wire [7:0] _GEN_3803 = 6'h4 == offset ? _GEN_1742 : _GEN_3642; // @[VectorDiv.scala 54:18]
  wire  _GEN_3806 = 6'h4 == offset ? _GEN_1745 : _GEN_3645; // @[VectorDiv.scala 54:18]
  wire [19:0] _GEN_3814 = 6'h4 == offset ? _GEN_1753 : _GEN_3653; // @[VectorDiv.scala 54:18]
  wire  _GEN_3845 = 6'h2 == offset ? _GEN_827 : _GEN_3710; // @[VectorDiv.scala 54:18]
  wire  _GEN_3846 = 6'h2 == offset ? _GEN_828 : _GEN_3710; // @[VectorDiv.scala 54:18]
  wire  _GEN_3847 = 6'h2 == offset ? _GEN_829 : _GEN_3711; // @[VectorDiv.scala 54:18]
  wire  _GEN_3848 = 6'h2 == offset ? _GEN_830 : _GEN_3712; // @[VectorDiv.scala 54:18]
  wire  _GEN_3849 = 6'h2 == offset ? _GEN_831 : _GEN_3713; // @[VectorDiv.scala 54:18]
  wire  _GEN_3850 = 6'h2 == offset ? _GEN_832 : _GEN_3714; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3851 = 6'h2 == offset ? ctrlComplex_1_srcType_0 : _GEN_3684; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3852 = 6'h2 == offset ? ctrlComplex_1_srcType_1 : _GEN_3685; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3855 = 6'h2 == offset ? ctrlComplex_1_lsrc_0 : _GEN_3688; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3856 = 6'h2 == offset ? ctrlComplex_1_lsrc_1 : _GEN_3689; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3859 = 6'h2 == offset ? ctrlComplex_1_ldest : _GEN_3692; // @[VectorDiv.scala 54:18]
  wire [4:0] _GEN_3860 = 6'h2 == offset ? ctrlComplex_1_fuType : _GEN_3693; // @[VectorDiv.scala 54:18]
  wire [7:0] _GEN_3861 = 6'h2 == offset ? ctrlComplex_1_fuOpType : _GEN_3694; // @[VectorDiv.scala 54:18]
  wire  _GEN_3864 = 6'h2 == offset ? ctrlComplex_1_vecWen : _GEN_3697; // @[VectorDiv.scala 54:18]
  wire [19:0] _GEN_3872 = 6'h2 == offset ? ctrlComplex_1_imm : _GEN_3705; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3877 = 6'h2 == offset ? ctrlComplex_2_srcType_0 : _GEN_3715; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3878 = 6'h2 == offset ? ctrlComplex_2_srcType_1 : _GEN_3716; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3881 = 6'h2 == offset ? ctrlComplex_2_lsrc_0 : _GEN_3719; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3882 = 6'h2 == offset ? ctrlComplex_2_lsrc_1 : _GEN_3720; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3885 = 6'h2 == offset ? ctrlComplex_2_ldest : _GEN_3723; // @[VectorDiv.scala 54:18]
  wire [4:0] _GEN_3886 = 6'h2 == offset ? ctrlComplex_2_fuType : _GEN_3724; // @[VectorDiv.scala 54:18]
  wire [7:0] _GEN_3887 = 6'h2 == offset ? ctrlComplex_2_fuOpType : _GEN_3725; // @[VectorDiv.scala 54:18]
  wire  _GEN_3890 = 6'h2 == offset ? ctrlComplex_2_vecWen : _GEN_3728; // @[VectorDiv.scala 54:18]
  wire [19:0] _GEN_3898 = 6'h2 == offset ? ctrlComplex_2_imm : _GEN_3736; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3903 = 6'h2 == offset ? ctrlComplex_3_srcType_0 : _GEN_3741; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3904 = 6'h2 == offset ? ctrlComplex_3_srcType_1 : _GEN_3742; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3907 = 6'h2 == offset ? ctrlComplex_3_lsrc_0 : _GEN_3745; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3908 = 6'h2 == offset ? ctrlComplex_3_lsrc_1 : _GEN_3746; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3911 = 6'h2 == offset ? ctrlComplex_3_ldest : _GEN_3749; // @[VectorDiv.scala 54:18]
  wire [4:0] _GEN_3912 = 6'h2 == offset ? ctrlComplex_3_fuType : _GEN_3750; // @[VectorDiv.scala 54:18]
  wire [7:0] _GEN_3913 = 6'h2 == offset ? ctrlComplex_3_fuOpType : _GEN_3751; // @[VectorDiv.scala 54:18]
  wire  _GEN_3916 = 6'h2 == offset ? ctrlComplex_3_vecWen : _GEN_3754; // @[VectorDiv.scala 54:18]
  wire [19:0] _GEN_3924 = 6'h2 == offset ? ctrlComplex_3_imm : _GEN_3762; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3929 = 6'h2 == offset ? ctrlComplex_4_srcType_0 : _GEN_3767; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3930 = 6'h2 == offset ? ctrlComplex_4_srcType_1 : _GEN_3768; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3933 = 6'h2 == offset ? ctrlComplex_4_lsrc_0 : _GEN_3771; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3934 = 6'h2 == offset ? ctrlComplex_4_lsrc_1 : _GEN_3772; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3937 = 6'h2 == offset ? ctrlComplex_4_ldest : _GEN_3775; // @[VectorDiv.scala 54:18]
  wire [4:0] _GEN_3938 = 6'h2 == offset ? ctrlComplex_4_fuType : _GEN_3776; // @[VectorDiv.scala 54:18]
  wire [7:0] _GEN_3939 = 6'h2 == offset ? ctrlComplex_4_fuOpType : _GEN_3777; // @[VectorDiv.scala 54:18]
  wire  _GEN_3942 = 6'h2 == offset ? ctrlComplex_4_vecWen : _GEN_3780; // @[VectorDiv.scala 54:18]
  wire [19:0] _GEN_3950 = 6'h2 == offset ? ctrlComplex_4_imm : _GEN_3788; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3955 = 6'h2 == offset ? ctrlComplex_5_srcType_0 : _GEN_3793; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_3956 = 6'h2 == offset ? ctrlComplex_5_srcType_1 : _GEN_3794; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3959 = 6'h2 == offset ? ctrlComplex_5_lsrc_0 : _GEN_3797; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3960 = 6'h2 == offset ? ctrlComplex_5_lsrc_1 : _GEN_3798; // @[VectorDiv.scala 54:18]
  wire [5:0] _GEN_3963 = 6'h2 == offset ? ctrlComplex_5_ldest : _GEN_3801; // @[VectorDiv.scala 54:18]
  wire [4:0] _GEN_3964 = 6'h2 == offset ? ctrlComplex_5_fuType : _GEN_3802; // @[VectorDiv.scala 54:18]
  wire [7:0] _GEN_3965 = 6'h2 == offset ? ctrlComplex_5_fuOpType : _GEN_3803; // @[VectorDiv.scala 54:18]
  wire  _GEN_3968 = 6'h2 == offset ? ctrlComplex_5_vecWen : _GEN_3806; // @[VectorDiv.scala 54:18]
  wire [19:0] _GEN_3976 = 6'h2 == offset ? ctrlComplex_5_imm : _GEN_3814; // @[VectorDiv.scala 54:18]
  wire [2:0] _GEN_4007 = 6'h1 == offset ? ctrlComplex_1_srcType_0 : _GEN_3851; // @[VectorDiv.scala 54:18 70:25]
  wire [2:0] _GEN_4008 = 6'h1 == offset ? ctrlComplex_1_srcType_1 : _GEN_3852; // @[VectorDiv.scala 54:18 70:25]
  wire [5:0] _GEN_4011 = 6'h1 == offset ? ctrlComplex_1_lsrc_0 : _GEN_3855; // @[VectorDiv.scala 54:18 70:25]
  wire [5:0] _GEN_4012 = 6'h1 == offset ? ctrlComplex_1_lsrc_1 : _GEN_3856; // @[VectorDiv.scala 54:18 70:25]
  wire [5:0] _GEN_4015 = 6'h1 == offset ? ctrlComplex_1_ldest : _GEN_3859; // @[VectorDiv.scala 54:18 70:25]
  wire [4:0] _GEN_4016 = 6'h1 == offset ? ctrlComplex_1_fuType : _GEN_3860; // @[VectorDiv.scala 54:18 70:25]
  wire [7:0] _GEN_4017 = 6'h1 == offset ? ctrlComplex_1_fuOpType : _GEN_3861; // @[VectorDiv.scala 54:18 70:25]
  wire  _GEN_4020 = 6'h1 == offset ? ctrlComplex_1_vecWen : _GEN_3864; // @[VectorDiv.scala 54:18 70:25]
  wire [19:0] _GEN_4028 = 6'h1 == offset ? ctrlComplex_1_imm : _GEN_3872; // @[VectorDiv.scala 54:18 70:25]
  wire [2:0] _GEN_4033 = 6'h1 == offset ? ctrlComplex_2_srcType_0 : _GEN_3877; // @[VectorDiv.scala 54:18 70:25]
  wire [2:0] _GEN_4034 = 6'h1 == offset ? ctrlComplex_2_srcType_1 : _GEN_3878; // @[VectorDiv.scala 54:18 70:25]
  wire [5:0] _GEN_4037 = 6'h1 == offset ? ctrlComplex_2_lsrc_0 : _GEN_3881; // @[VectorDiv.scala 54:18 70:25]
  wire [5:0] _GEN_4038 = 6'h1 == offset ? ctrlComplex_2_lsrc_1 : _GEN_3882; // @[VectorDiv.scala 54:18 70:25]
  wire [5:0] _GEN_4041 = 6'h1 == offset ? ctrlComplex_2_ldest : _GEN_3885; // @[VectorDiv.scala 54:18 70:25]
  wire [4:0] _GEN_4042 = 6'h1 == offset ? ctrlComplex_2_fuType : _GEN_3886; // @[VectorDiv.scala 54:18 70:25]
  wire [7:0] _GEN_4043 = 6'h1 == offset ? ctrlComplex_2_fuOpType : _GEN_3887; // @[VectorDiv.scala 54:18 70:25]
  wire  _GEN_4046 = 6'h1 == offset ? ctrlComplex_2_vecWen : _GEN_3890; // @[VectorDiv.scala 54:18 70:25]
  wire [19:0] _GEN_4054 = 6'h1 == offset ? ctrlComplex_2_imm : _GEN_3898; // @[VectorDiv.scala 54:18 70:25]
  wire [2:0] _GEN_4059 = 6'h1 == offset ? ctrlComplex_3_srcType_0 : _GEN_3903; // @[VectorDiv.scala 54:18 70:25]
  wire [2:0] _GEN_4060 = 6'h1 == offset ? ctrlComplex_3_srcType_1 : _GEN_3904; // @[VectorDiv.scala 54:18 70:25]
  wire [5:0] _GEN_4063 = 6'h1 == offset ? ctrlComplex_3_lsrc_0 : _GEN_3907; // @[VectorDiv.scala 54:18 70:25]
  wire [5:0] _GEN_4064 = 6'h1 == offset ? ctrlComplex_3_lsrc_1 : _GEN_3908; // @[VectorDiv.scala 54:18 70:25]
  wire [5:0] _GEN_4067 = 6'h1 == offset ? ctrlComplex_3_ldest : _GEN_3911; // @[VectorDiv.scala 54:18 70:25]
  wire [4:0] _GEN_4068 = 6'h1 == offset ? ctrlComplex_3_fuType : _GEN_3912; // @[VectorDiv.scala 54:18 70:25]
  wire [7:0] _GEN_4069 = 6'h1 == offset ? ctrlComplex_3_fuOpType : _GEN_3913; // @[VectorDiv.scala 54:18 70:25]
  wire  _GEN_4072 = 6'h1 == offset ? ctrlComplex_3_vecWen : _GEN_3916; // @[VectorDiv.scala 54:18 70:25]
  wire [19:0] _GEN_4080 = 6'h1 == offset ? ctrlComplex_3_imm : _GEN_3924; // @[VectorDiv.scala 54:18 70:25]
  wire [2:0] _GEN_4085 = 6'h1 == offset ? ctrlComplex_4_srcType_0 : _GEN_3929; // @[VectorDiv.scala 54:18 70:25]
  wire [2:0] _GEN_4086 = 6'h1 == offset ? ctrlComplex_4_srcType_1 : _GEN_3930; // @[VectorDiv.scala 54:18 70:25]
  wire [5:0] _GEN_4089 = 6'h1 == offset ? ctrlComplex_4_lsrc_0 : _GEN_3933; // @[VectorDiv.scala 54:18 70:25]
  wire [5:0] _GEN_4090 = 6'h1 == offset ? ctrlComplex_4_lsrc_1 : _GEN_3934; // @[VectorDiv.scala 54:18 70:25]
  wire [5:0] _GEN_4093 = 6'h1 == offset ? ctrlComplex_4_ldest : _GEN_3937; // @[VectorDiv.scala 54:18 70:25]
  wire [4:0] _GEN_4094 = 6'h1 == offset ? ctrlComplex_4_fuType : _GEN_3938; // @[VectorDiv.scala 54:18 70:25]
  wire [7:0] _GEN_4095 = 6'h1 == offset ? ctrlComplex_4_fuOpType : _GEN_3939; // @[VectorDiv.scala 54:18 70:25]
  wire  _GEN_4098 = 6'h1 == offset ? ctrlComplex_4_vecWen : _GEN_3942; // @[VectorDiv.scala 54:18 70:25]
  wire [19:0] _GEN_4106 = 6'h1 == offset ? ctrlComplex_4_imm : _GEN_3950; // @[VectorDiv.scala 54:18 70:25]
  wire [2:0] _GEN_4111 = 6'h1 == offset ? ctrlComplex_5_srcType_0 : _GEN_3955; // @[VectorDiv.scala 54:18 70:25]
  wire [2:0] _GEN_4112 = 6'h1 == offset ? ctrlComplex_5_srcType_1 : _GEN_3956; // @[VectorDiv.scala 54:18 70:25]
  wire [5:0] _GEN_4115 = 6'h1 == offset ? ctrlComplex_5_lsrc_0 : _GEN_3959; // @[VectorDiv.scala 54:18 70:25]
  wire [5:0] _GEN_4116 = 6'h1 == offset ? ctrlComplex_5_lsrc_1 : _GEN_3960; // @[VectorDiv.scala 54:18 70:25]
  wire [5:0] _GEN_4119 = 6'h1 == offset ? ctrlComplex_5_ldest : _GEN_3963; // @[VectorDiv.scala 54:18 70:25]
  wire [4:0] _GEN_4120 = 6'h1 == offset ? ctrlComplex_5_fuType : _GEN_3964; // @[VectorDiv.scala 54:18 70:25]
  wire [7:0] _GEN_4121 = 6'h1 == offset ? ctrlComplex_5_fuOpType : _GEN_3965; // @[VectorDiv.scala 54:18 70:25]
  wire  _GEN_4124 = 6'h1 == offset ? ctrlComplex_5_vecWen : _GEN_3968; // @[VectorDiv.scala 54:18 70:25]
  wire [19:0] _GEN_4132 = 6'h1 == offset ? ctrlComplex_5_imm : _GEN_3976; // @[VectorDiv.scala 54:18 70:25]
  wire  _GEN_4137 = 6'h1 == offset | _GEN_3845; // @[VectorDiv.scala 54:18 75:21]
  wire  _GEN_4138 = 6'h1 == offset | _GEN_3846; // @[VectorDiv.scala 54:18 75:21]
  wire  _GEN_4139 = 6'h1 == offset | _GEN_3847; // @[VectorDiv.scala 54:18 75:21]
  wire  _GEN_4140 = 6'h1 == offset | _GEN_3848; // @[VectorDiv.scala 54:18 75:21]
  wire  _GEN_4141 = 6'h1 == offset | _GEN_3849; // @[VectorDiv.scala 54:18 75:21]
  wire  _GEN_4142 = 6'h1 == offset | _GEN_3850; // @[VectorDiv.scala 54:18 75:21]
  wire [2:0] ctrlSimple_4_srcType_0 = decoders_4_io_vecCtrl_srcType_0; // @[VectorDiv.scala 25:24 36:19]
  wire [2:0] ctrlSimple_4_srcType_1 = decoders_4_io_vecCtrl_srcType_1; // @[VectorDiv.scala 25:24 36:19]
  wire [5:0] ctrlSimple_4_lsrc_0 = decoders_4_io_vecCtrl_lsrc_0; // @[VectorDiv.scala 25:24 36:19]
  wire [5:0] ctrlSimple_4_lsrc_1 = decoders_4_io_vecCtrl_lsrc_1; // @[VectorDiv.scala 25:24 36:19]
  wire [5:0] ctrlSimple_4_ldest = decoders_4_io_vecCtrl_ldest; // @[VectorDiv.scala 25:24 36:19]
  wire [4:0] ctrlSimple_4_fuType = decoders_4_io_vecCtrl_fuType; // @[VectorDiv.scala 25:24 36:19]
  wire [7:0] ctrlSimple_4_fuOpType = decoders_4_io_vecCtrl_fuOpType; // @[VectorDiv.scala 25:24 36:19]
  wire  ctrlSimple_4_vecWen = decoders_4_io_vecCtrl_vecWen; // @[VectorDiv.scala 25:24 36:19]
  wire [19:0] ctrlSimple_4_imm = decoders_4_io_vecCtrl_imm; // @[VectorDiv.scala 25:24 36:19]
  Complex decoder0 ( // @[VectorDiv.scala 17:24]
    .clock(decoder0_clock),
    .reset(decoder0_reset),
    .io_instr(decoder0_io_instr),
    .io_vlmul(decoder0_io_vlmul),
    .io_isComplex_1(decoder0_io_isComplex_1),
    .io_isComplex_2(decoder0_io_isComplex_2),
    .io_isComplex_3(decoder0_io_isComplex_3),
    .io_isComplex_4(decoder0_io_isComplex_4),
    .io_isComplex_5(decoder0_io_isComplex_5),
    .io_vecCtrl_0_srcType_0(decoder0_io_vecCtrl_0_srcType_0),
    .io_vecCtrl_0_srcType_1(decoder0_io_vecCtrl_0_srcType_1),
    .io_vecCtrl_0_lsrc_0(decoder0_io_vecCtrl_0_lsrc_0),
    .io_vecCtrl_0_lsrc_1(decoder0_io_vecCtrl_0_lsrc_1),
    .io_vecCtrl_0_ldest(decoder0_io_vecCtrl_0_ldest),
    .io_vecCtrl_0_fuType(decoder0_io_vecCtrl_0_fuType),
    .io_vecCtrl_0_fuOpType(decoder0_io_vecCtrl_0_fuOpType),
    .io_vecCtrl_0_vecWen(decoder0_io_vecCtrl_0_vecWen),
    .io_vecCtrl_0_imm(decoder0_io_vecCtrl_0_imm),
    .io_vecCtrl_1_srcType_0(decoder0_io_vecCtrl_1_srcType_0),
    .io_vecCtrl_1_srcType_1(decoder0_io_vecCtrl_1_srcType_1),
    .io_vecCtrl_1_lsrc_0(decoder0_io_vecCtrl_1_lsrc_0),
    .io_vecCtrl_1_lsrc_1(decoder0_io_vecCtrl_1_lsrc_1),
    .io_vecCtrl_1_ldest(decoder0_io_vecCtrl_1_ldest),
    .io_vecCtrl_1_fuType(decoder0_io_vecCtrl_1_fuType),
    .io_vecCtrl_1_fuOpType(decoder0_io_vecCtrl_1_fuOpType),
    .io_vecCtrl_1_vecWen(decoder0_io_vecCtrl_1_vecWen),
    .io_vecCtrl_1_imm(decoder0_io_vecCtrl_1_imm),
    .io_vecCtrl_2_srcType_0(decoder0_io_vecCtrl_2_srcType_0),
    .io_vecCtrl_2_srcType_1(decoder0_io_vecCtrl_2_srcType_1),
    .io_vecCtrl_2_lsrc_0(decoder0_io_vecCtrl_2_lsrc_0),
    .io_vecCtrl_2_lsrc_1(decoder0_io_vecCtrl_2_lsrc_1),
    .io_vecCtrl_2_ldest(decoder0_io_vecCtrl_2_ldest),
    .io_vecCtrl_2_fuType(decoder0_io_vecCtrl_2_fuType),
    .io_vecCtrl_2_fuOpType(decoder0_io_vecCtrl_2_fuOpType),
    .io_vecCtrl_2_vecWen(decoder0_io_vecCtrl_2_vecWen),
    .io_vecCtrl_2_imm(decoder0_io_vecCtrl_2_imm),
    .io_vecCtrl_3_srcType_0(decoder0_io_vecCtrl_3_srcType_0),
    .io_vecCtrl_3_srcType_1(decoder0_io_vecCtrl_3_srcType_1),
    .io_vecCtrl_3_lsrc_0(decoder0_io_vecCtrl_3_lsrc_0),
    .io_vecCtrl_3_lsrc_1(decoder0_io_vecCtrl_3_lsrc_1),
    .io_vecCtrl_3_ldest(decoder0_io_vecCtrl_3_ldest),
    .io_vecCtrl_3_fuType(decoder0_io_vecCtrl_3_fuType),
    .io_vecCtrl_3_fuOpType(decoder0_io_vecCtrl_3_fuOpType),
    .io_vecCtrl_3_vecWen(decoder0_io_vecCtrl_3_vecWen),
    .io_vecCtrl_3_imm(decoder0_io_vecCtrl_3_imm),
    .io_vecCtrl_4_srcType_0(decoder0_io_vecCtrl_4_srcType_0),
    .io_vecCtrl_4_srcType_1(decoder0_io_vecCtrl_4_srcType_1),
    .io_vecCtrl_4_lsrc_0(decoder0_io_vecCtrl_4_lsrc_0),
    .io_vecCtrl_4_lsrc_1(decoder0_io_vecCtrl_4_lsrc_1),
    .io_vecCtrl_4_ldest(decoder0_io_vecCtrl_4_ldest),
    .io_vecCtrl_4_fuType(decoder0_io_vecCtrl_4_fuType),
    .io_vecCtrl_4_fuOpType(decoder0_io_vecCtrl_4_fuOpType),
    .io_vecCtrl_4_vecWen(decoder0_io_vecCtrl_4_vecWen),
    .io_vecCtrl_4_imm(decoder0_io_vecCtrl_4_imm),
    .io_vecCtrl_5_srcType_0(decoder0_io_vecCtrl_5_srcType_0),
    .io_vecCtrl_5_srcType_1(decoder0_io_vecCtrl_5_srcType_1),
    .io_vecCtrl_5_lsrc_0(decoder0_io_vecCtrl_5_lsrc_0),
    .io_vecCtrl_5_lsrc_1(decoder0_io_vecCtrl_5_lsrc_1),
    .io_vecCtrl_5_ldest(decoder0_io_vecCtrl_5_ldest),
    .io_vecCtrl_5_fuType(decoder0_io_vecCtrl_5_fuType),
    .io_vecCtrl_5_fuOpType(decoder0_io_vecCtrl_5_fuOpType),
    .io_vecCtrl_5_vecWen(decoder0_io_vecCtrl_5_vecWen),
    .io_vecCtrl_5_imm(decoder0_io_vecCtrl_5_imm),
    .io_num(decoder0_io_num),
    .io_offset_0(decoder0_io_offset_0),
    .io_offset_1(decoder0_io_offset_1),
    .io_offset_2(decoder0_io_offset_2),
    .io_offset_3(decoder0_io_offset_3),
    .io_offset_4(decoder0_io_offset_4),
    .io_offset_5(decoder0_io_offset_5),
    .io_strIndex(decoder0_io_strIndex)
  );
  Simple decoders_0 ( // @[VectorDiv.scala 18:36]
    .clock(decoders_0_clock),
    .io_instr(decoders_0_io_instr),
    .io_vecCtrl_srcType_0(decoders_0_io_vecCtrl_srcType_0),
    .io_vecCtrl_srcType_1(decoders_0_io_vecCtrl_srcType_1),
    .io_vecCtrl_lsrc_0(decoders_0_io_vecCtrl_lsrc_0),
    .io_vecCtrl_lsrc_1(decoders_0_io_vecCtrl_lsrc_1),
    .io_vecCtrl_ldest(decoders_0_io_vecCtrl_ldest),
    .io_vecCtrl_fuType(decoders_0_io_vecCtrl_fuType),
    .io_vecCtrl_fuOpType(decoders_0_io_vecCtrl_fuOpType),
    .io_vecCtrl_vecWen(decoders_0_io_vecCtrl_vecWen),
    .io_vecCtrl_imm(decoders_0_io_vecCtrl_imm)
  );
  Simple decoders_1 ( // @[VectorDiv.scala 18:36]
    .clock(decoders_1_clock),
    .io_instr(decoders_1_io_instr),
    .io_vecCtrl_srcType_0(decoders_1_io_vecCtrl_srcType_0),
    .io_vecCtrl_srcType_1(decoders_1_io_vecCtrl_srcType_1),
    .io_vecCtrl_lsrc_0(decoders_1_io_vecCtrl_lsrc_0),
    .io_vecCtrl_lsrc_1(decoders_1_io_vecCtrl_lsrc_1),
    .io_vecCtrl_ldest(decoders_1_io_vecCtrl_ldest),
    .io_vecCtrl_fuType(decoders_1_io_vecCtrl_fuType),
    .io_vecCtrl_fuOpType(decoders_1_io_vecCtrl_fuOpType),
    .io_vecCtrl_vecWen(decoders_1_io_vecCtrl_vecWen),
    .io_vecCtrl_imm(decoders_1_io_vecCtrl_imm)
  );
  Simple decoders_2 ( // @[VectorDiv.scala 18:36]
    .clock(decoders_2_clock),
    .io_instr(decoders_2_io_instr),
    .io_vecCtrl_srcType_0(decoders_2_io_vecCtrl_srcType_0),
    .io_vecCtrl_srcType_1(decoders_2_io_vecCtrl_srcType_1),
    .io_vecCtrl_lsrc_0(decoders_2_io_vecCtrl_lsrc_0),
    .io_vecCtrl_lsrc_1(decoders_2_io_vecCtrl_lsrc_1),
    .io_vecCtrl_ldest(decoders_2_io_vecCtrl_ldest),
    .io_vecCtrl_fuType(decoders_2_io_vecCtrl_fuType),
    .io_vecCtrl_fuOpType(decoders_2_io_vecCtrl_fuOpType),
    .io_vecCtrl_vecWen(decoders_2_io_vecCtrl_vecWen),
    .io_vecCtrl_imm(decoders_2_io_vecCtrl_imm)
  );
  Simple decoders_3 ( // @[VectorDiv.scala 18:36]
    .clock(decoders_3_clock),
    .io_instr(decoders_3_io_instr),
    .io_vecCtrl_srcType_0(decoders_3_io_vecCtrl_srcType_0),
    .io_vecCtrl_srcType_1(decoders_3_io_vecCtrl_srcType_1),
    .io_vecCtrl_lsrc_0(decoders_3_io_vecCtrl_lsrc_0),
    .io_vecCtrl_lsrc_1(decoders_3_io_vecCtrl_lsrc_1),
    .io_vecCtrl_ldest(decoders_3_io_vecCtrl_ldest),
    .io_vecCtrl_fuType(decoders_3_io_vecCtrl_fuType),
    .io_vecCtrl_fuOpType(decoders_3_io_vecCtrl_fuOpType),
    .io_vecCtrl_vecWen(decoders_3_io_vecCtrl_vecWen),
    .io_vecCtrl_imm(decoders_3_io_vecCtrl_imm)
  );
  Simple decoders_4 ( // @[VectorDiv.scala 18:36]
    .clock(decoders_4_clock),
    .io_instr(decoders_4_io_instr),
    .io_vecCtrl_srcType_0(decoders_4_io_vecCtrl_srcType_0),
    .io_vecCtrl_srcType_1(decoders_4_io_vecCtrl_srcType_1),
    .io_vecCtrl_lsrc_0(decoders_4_io_vecCtrl_lsrc_0),
    .io_vecCtrl_lsrc_1(decoders_4_io_vecCtrl_lsrc_1),
    .io_vecCtrl_ldest(decoders_4_io_vecCtrl_ldest),
    .io_vecCtrl_fuType(decoders_4_io_vecCtrl_fuType),
    .io_vecCtrl_fuOpType(decoders_4_io_vecCtrl_fuOpType),
    .io_vecCtrl_vecWen(decoders_4_io_vecCtrl_vecWen),
    .io_vecCtrl_imm(decoders_4_io_vecCtrl_imm)
  );
  assign io_outCtrlSignals_0_srcType_0 = decoder0_io_vecCtrl_0_srcType_0; // @[VectorDiv.scala 21:25 30:15]
  assign io_outCtrlSignals_0_srcType_1 = decoder0_io_vecCtrl_0_srcType_1; // @[VectorDiv.scala 21:25 30:15]
  assign io_outCtrlSignals_0_srcType_2 = 3'h0; // @[VectorDiv.scala 54:18 56:28]
  assign io_outCtrlSignals_0_srcType_3 = 3'h0; // @[VectorDiv.scala 54:18 56:28]
  assign io_outCtrlSignals_0_lsrc_0 = decoder0_io_vecCtrl_0_lsrc_0; // @[VectorDiv.scala 21:25 30:15]
  assign io_outCtrlSignals_0_lsrc_1 = decoder0_io_vecCtrl_0_lsrc_1; // @[VectorDiv.scala 21:25 30:15]
  assign io_outCtrlSignals_0_lsrc_2 = 6'h0; // @[VectorDiv.scala 54:18 56:28]
  assign io_outCtrlSignals_0_lsrc_3 = 6'h0; // @[VectorDiv.scala 54:18 56:28]
  assign io_outCtrlSignals_0_ldest = decoder0_io_vecCtrl_0_ldest; // @[VectorDiv.scala 21:25 30:15]
  assign io_outCtrlSignals_0_fuType = decoder0_io_vecCtrl_0_fuType; // @[VectorDiv.scala 21:25 30:15]
  assign io_outCtrlSignals_0_fuOpType = decoder0_io_vecCtrl_0_fuOpType; // @[VectorDiv.scala 21:25 30:15]
  assign io_outCtrlSignals_0_rfWen = 1'h0; // @[VectorDiv.scala 54:18 56:28]
  assign io_outCtrlSignals_0_fpWen = 1'h0; // @[VectorDiv.scala 54:18 56:28]
  assign io_outCtrlSignals_0_vecWen = decoder0_io_vecCtrl_0_vecWen; // @[VectorDiv.scala 21:25 30:15]
  assign io_outCtrlSignals_0_mWen = 1'h0; // @[VectorDiv.scala 54:18 56:28]
  assign io_outCtrlSignals_0_vxsatWen = 1'h0; // @[VectorDiv.scala 54:18 56:28]
  assign io_outCtrlSignals_0_isXSTrap = 1'h0; // @[VectorDiv.scala 54:18 56:28]
  assign io_outCtrlSignals_0_noSpecExec = 1'h0; // @[VectorDiv.scala 54:18 56:28]
  assign io_outCtrlSignals_0_blockBackward = 1'h0; // @[VectorDiv.scala 54:18 56:28]
  assign io_outCtrlSignals_0_flushPipe = 1'h0; // @[VectorDiv.scala 54:18 56:28]
  assign io_outCtrlSignals_0_selImm = 4'h0; // @[VectorDiv.scala 54:18 56:28]
  assign io_outCtrlSignals_0_imm = decoder0_io_vecCtrl_0_imm; // @[VectorDiv.scala 21:25 30:15]
  assign io_outCtrlSignals_0_commitType = 3'h0; // @[VectorDiv.scala 54:18 56:28]
  assign io_outCtrlSignals_0_isMove = 1'h0; // @[VectorDiv.scala 54:18 56:28]
  assign io_outCtrlSignals_0_singleStep = 1'h0; // @[VectorDiv.scala 54:18 56:28]
  assign io_outCtrlSignals_0_replayInst = 1'h0; // @[VectorDiv.scala 54:18 56:28]
  assign io_outCtrlSignals_1_srcType_0 = 6'h0 == offset ? ctrlSimple_0_srcType_0 : _GEN_4007; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_1_srcType_1 = 6'h0 == offset ? ctrlSimple_0_srcType_1 : _GEN_4008; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_1_srcType_2 = 3'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_1_srcType_3 = 3'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_1_lsrc_0 = 6'h0 == offset ? ctrlSimple_0_lsrc_0 : _GEN_4011; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_1_lsrc_1 = 6'h0 == offset ? ctrlSimple_0_lsrc_1 : _GEN_4012; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_1_lsrc_2 = 6'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_1_lsrc_3 = 6'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_1_ldest = 6'h0 == offset ? ctrlSimple_0_ldest : _GEN_4015; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_1_fuType = 6'h0 == offset ? ctrlSimple_0_fuType : _GEN_4016; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_1_fuOpType = 6'h0 == offset ? ctrlSimple_0_fuOpType : _GEN_4017; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_1_rfWen = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_1_fpWen = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_1_vecWen = 6'h0 == offset ? ctrlSimple_0_vecWen : _GEN_4020; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_1_mWen = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_1_vxsatWen = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_1_isXSTrap = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_1_noSpecExec = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_1_blockBackward = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_1_flushPipe = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_1_selImm = 4'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_1_imm = 6'h0 == offset ? ctrlSimple_0_imm : _GEN_4028; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_1_commitType = 3'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_1_isMove = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_1_singleStep = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_1_replayInst = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_2_srcType_0 = 6'h0 == offset ? ctrlSimple_1_srcType_0 : _GEN_4033; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_2_srcType_1 = 6'h0 == offset ? ctrlSimple_1_srcType_1 : _GEN_4034; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_2_srcType_2 = 3'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_2_srcType_3 = 3'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_2_lsrc_0 = 6'h0 == offset ? ctrlSimple_1_lsrc_0 : _GEN_4037; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_2_lsrc_1 = 6'h0 == offset ? ctrlSimple_1_lsrc_1 : _GEN_4038; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_2_lsrc_2 = 6'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_2_lsrc_3 = 6'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_2_ldest = 6'h0 == offset ? ctrlSimple_1_ldest : _GEN_4041; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_2_fuType = 6'h0 == offset ? ctrlSimple_1_fuType : _GEN_4042; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_2_fuOpType = 6'h0 == offset ? ctrlSimple_1_fuOpType : _GEN_4043; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_2_rfWen = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_2_fpWen = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_2_vecWen = 6'h0 == offset ? ctrlSimple_1_vecWen : _GEN_4046; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_2_mWen = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_2_vxsatWen = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_2_isXSTrap = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_2_noSpecExec = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_2_blockBackward = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_2_flushPipe = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_2_selImm = 4'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_2_imm = 6'h0 == offset ? ctrlSimple_1_imm : _GEN_4054; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_2_commitType = 3'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_2_isMove = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_2_singleStep = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_2_replayInst = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_3_srcType_0 = 6'h0 == offset ? ctrlSimple_2_srcType_0 : _GEN_4059; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_3_srcType_1 = 6'h0 == offset ? ctrlSimple_2_srcType_1 : _GEN_4060; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_3_srcType_2 = 3'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_3_srcType_3 = 3'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_3_lsrc_0 = 6'h0 == offset ? ctrlSimple_2_lsrc_0 : _GEN_4063; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_3_lsrc_1 = 6'h0 == offset ? ctrlSimple_2_lsrc_1 : _GEN_4064; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_3_lsrc_2 = 6'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_3_lsrc_3 = 6'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_3_ldest = 6'h0 == offset ? ctrlSimple_2_ldest : _GEN_4067; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_3_fuType = 6'h0 == offset ? ctrlSimple_2_fuType : _GEN_4068; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_3_fuOpType = 6'h0 == offset ? ctrlSimple_2_fuOpType : _GEN_4069; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_3_rfWen = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_3_fpWen = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_3_vecWen = 6'h0 == offset ? ctrlSimple_2_vecWen : _GEN_4072; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_3_mWen = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_3_vxsatWen = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_3_isXSTrap = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_3_noSpecExec = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_3_blockBackward = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_3_flushPipe = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_3_selImm = 4'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_3_imm = 6'h0 == offset ? ctrlSimple_2_imm : _GEN_4080; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_3_commitType = 3'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_3_isMove = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_3_singleStep = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_3_replayInst = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_4_srcType_0 = 6'h0 == offset ? ctrlSimple_3_srcType_0 : _GEN_4085; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_4_srcType_1 = 6'h0 == offset ? ctrlSimple_3_srcType_1 : _GEN_4086; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_4_srcType_2 = 3'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_4_srcType_3 = 3'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_4_lsrc_0 = 6'h0 == offset ? ctrlSimple_3_lsrc_0 : _GEN_4089; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_4_lsrc_1 = 6'h0 == offset ? ctrlSimple_3_lsrc_1 : _GEN_4090; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_4_lsrc_2 = 6'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_4_lsrc_3 = 6'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_4_ldest = 6'h0 == offset ? ctrlSimple_3_ldest : _GEN_4093; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_4_fuType = 6'h0 == offset ? ctrlSimple_3_fuType : _GEN_4094; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_4_fuOpType = 6'h0 == offset ? ctrlSimple_3_fuOpType : _GEN_4095; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_4_rfWen = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_4_fpWen = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_4_vecWen = 6'h0 == offset ? ctrlSimple_3_vecWen : _GEN_4098; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_4_mWen = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_4_vxsatWen = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_4_isXSTrap = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_4_noSpecExec = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_4_blockBackward = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_4_flushPipe = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_4_selImm = 4'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_4_imm = 6'h0 == offset ? ctrlSimple_3_imm : _GEN_4106; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_4_commitType = 3'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_4_isMove = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_4_singleStep = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_4_replayInst = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_5_srcType_0 = 6'h0 == offset ? ctrlSimple_4_srcType_0 : _GEN_4111; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_5_srcType_1 = 6'h0 == offset ? ctrlSimple_4_srcType_1 : _GEN_4112; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_5_srcType_2 = 3'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_5_srcType_3 = 3'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_5_lsrc_0 = 6'h0 == offset ? ctrlSimple_4_lsrc_0 : _GEN_4115; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_5_lsrc_1 = 6'h0 == offset ? ctrlSimple_4_lsrc_1 : _GEN_4116; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_5_lsrc_2 = 6'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_5_lsrc_3 = 6'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_5_ldest = 6'h0 == offset ? ctrlSimple_4_ldest : _GEN_4119; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_5_fuType = 6'h0 == offset ? ctrlSimple_4_fuType : _GEN_4120; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_5_fuOpType = 6'h0 == offset ? ctrlSimple_4_fuOpType : _GEN_4121; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_5_rfWen = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_5_fpWen = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_5_vecWen = 6'h0 == offset ? ctrlSimple_4_vecWen : _GEN_4124; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_5_mWen = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_5_vxsatWen = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_5_isXSTrap = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_5_noSpecExec = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_5_blockBackward = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_5_flushPipe = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_5_selImm = 4'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_5_imm = 6'h0 == offset ? ctrlSimple_4_imm : _GEN_4132; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_5_commitType = 3'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_5_isMove = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_5_singleStep = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_outCtrlSignals_5_replayInst = 1'h0; // @[VectorDiv.scala 54:18 59:34]
  assign io_valid_0 = 6'h0 == offset | _GEN_4137; // @[VectorDiv.scala 54:18 65:21]
  assign io_valid_1 = 6'h0 == offset | _GEN_4138; // @[VectorDiv.scala 54:18 65:21]
  assign io_valid_2 = 6'h0 == offset | _GEN_4139; // @[VectorDiv.scala 54:18 65:21]
  assign io_valid_3 = 6'h0 == offset | _GEN_4140; // @[VectorDiv.scala 54:18 65:21]
  assign io_valid_4 = 6'h0 == offset | _GEN_4141; // @[VectorDiv.scala 54:18 65:21]
  assign io_valid_5 = 6'h0 == offset | _GEN_4142; // @[VectorDiv.scala 54:18 65:21]
  assign io_strIndex = decoder0_io_strIndex; // @[VectorDiv.scala 33:15]
  assign decoder0_clock = clock;
  assign decoder0_reset = reset;
  assign decoder0_io_instr = io_instr_0; // @[VectorDiv.scala 27:21]
  assign decoder0_io_vlmul = io_vlmul_0; // @[VectorDiv.scala 28:21]
  assign decoder0_io_isComplex_1 = io_vlmul_1 == 3'h1 | io_vlmul_1 == 3'h2 | io_vlmul_1 == 3'h3; // @[VectorDiv.scala 40:63]
  assign decoder0_io_isComplex_2 = io_vlmul_2 == 3'h1 | io_vlmul_2 == 3'h2 | io_vlmul_2 == 3'h3; // @[VectorDiv.scala 40:63]
  assign decoder0_io_isComplex_3 = io_vlmul_3 == 3'h1 | io_vlmul_3 == 3'h2 | io_vlmul_3 == 3'h3; // @[VectorDiv.scala 40:63]
  assign decoder0_io_isComplex_4 = io_vlmul_4 == 3'h1 | io_vlmul_4 == 3'h2 | io_vlmul_4 == 3'h3; // @[VectorDiv.scala 40:63]
  assign decoder0_io_isComplex_5 = io_vlmul_5 == 3'h1 | io_vlmul_5 == 3'h2 | io_vlmul_5 == 3'h3; // @[VectorDiv.scala 40:63]
  assign decoders_0_clock = clock;
  assign decoders_0_io_instr = io_instr_1; // @[VectorDiv.scala 35:26]
  assign decoders_1_clock = clock;
  assign decoders_1_io_instr = io_instr_2; // @[VectorDiv.scala 35:26]
  assign decoders_2_clock = clock;
  assign decoders_2_io_instr = io_instr_3; // @[VectorDiv.scala 35:26]
  assign decoders_3_clock = clock;
  assign decoders_3_io_instr = io_instr_4; // @[VectorDiv.scala 35:26]
  assign decoders_4_clock = clock;
  assign decoders_4_io_instr = io_instr_5; // @[VectorDiv.scala 35:26]
endmodule
