// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Version: 2021.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module hls_xfft2real_Loop_realfft_be_buffer_proc1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        din_TDATA,
        din_TVALID,
        din_TREADY,
        descramble_buf_M_real_V_address0,
        descramble_buf_M_real_V_ce0,
        descramble_buf_M_real_V_we0,
        descramble_buf_M_real_V_d0,
        descramble_buf_M_real_V_1_address0,
        descramble_buf_M_real_V_1_ce0,
        descramble_buf_M_real_V_1_we0,
        descramble_buf_M_real_V_1_d0,
        descramble_buf_M_imag_V_address0,
        descramble_buf_M_imag_V_ce0,
        descramble_buf_M_imag_V_we0,
        descramble_buf_M_imag_V_d0,
        descramble_buf_M_imag_V_1_address0,
        descramble_buf_M_imag_V_1_ce0,
        descramble_buf_M_imag_V_1_we0,
        descramble_buf_M_imag_V_1_d0
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [47:0] din_TDATA;
input   din_TVALID;
output   din_TREADY;
output  [7:0] descramble_buf_M_real_V_address0;
output   descramble_buf_M_real_V_ce0;
output   descramble_buf_M_real_V_we0;
output  [15:0] descramble_buf_M_real_V_d0;
output  [7:0] descramble_buf_M_real_V_1_address0;
output   descramble_buf_M_real_V_1_ce0;
output   descramble_buf_M_real_V_1_we0;
output  [15:0] descramble_buf_M_real_V_1_d0;
output  [7:0] descramble_buf_M_imag_V_address0;
output   descramble_buf_M_imag_V_ce0;
output   descramble_buf_M_imag_V_we0;
output  [15:0] descramble_buf_M_imag_V_d0;
output  [7:0] descramble_buf_M_imag_V_1_address0;
output   descramble_buf_M_imag_V_1_ce0;
output   descramble_buf_M_imag_V_1_we0;
output  [15:0] descramble_buf_M_imag_V_1_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg descramble_buf_M_real_V_ce0;
reg descramble_buf_M_real_V_we0;
reg descramble_buf_M_real_V_1_ce0;
reg descramble_buf_M_real_V_1_we0;
reg descramble_buf_M_imag_V_ce0;
reg descramble_buf_M_imag_V_we0;
reg descramble_buf_M_imag_V_1_ce0;
reg descramble_buf_M_imag_V_1_we0;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    din_TDATA_blk_n;
wire    ap_CS_fsm_state2;
wire   [8:0] i_fu_166_p2;
reg    ap_block_state2;
reg   [8:0] i_221_reg_112;
reg    ap_block_state1;
wire   [0:0] icmp_ln79_fu_172_p2;
wire   [63:0] zext_ln85_fu_154_p1;
wire   [0:0] trunc_ln85_fu_162_p1;
wire   [15:0] tmp_data_M_real_V_fu_126_p1;
reg   [7:0] trunc_ln_fu_144_p4;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    regslice_both_din_U_apdone_blk;
wire   [47:0] din_TDATA_int_regslice;
wire    din_TVALID_int_regslice;
reg    din_TREADY_int_regslice;
wire    regslice_both_din_U_ack_in;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
end

hls_xfft2real_regslice_both #(
    .DataWidth( 48 ))
regslice_both_din_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .data_in(din_TDATA),
    .vld_in(din_TVALID),
    .ack_in(regslice_both_din_U_ack_in),
    .data_out(din_TDATA_int_regslice),
    .vld_out(din_TVALID_int_regslice),
    .ack_out(din_TREADY_int_regslice),
    .apdone_blk(regslice_both_din_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((~((ap_start == 1'b0) | (din_TVALID_int_regslice == 1'b0) | (ap_done_reg == 1'b1)) & (icmp_ln79_fu_172_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((~((ap_start == 1'b0) | (din_TVALID_int_regslice == 1'b0) | (ap_done_reg == 1'b1)) & (icmp_ln79_fu_172_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_221_reg_112 <= i_fu_166_p2;
    end else if (((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1)) | (~((ap_start == 1'b0) | (din_TVALID_int_regslice == 1'b0) | (ap_done_reg == 1'b1)) & (icmp_ln79_fu_172_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2)))) begin
        i_221_reg_112 <= 9'd0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) | (ap_done_reg == 1'b1))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) | (din_TVALID_int_regslice == 1'b0) | (ap_done_reg == 1'b1))) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (din_TVALID_int_regslice == 1'b0) | (ap_done_reg == 1'b1)) & (icmp_ln79_fu_172_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (din_TVALID_int_regslice == 1'b0) | (ap_done_reg == 1'b1)) & (icmp_ln79_fu_172_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (din_TVALID_int_regslice == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state2))) begin
        descramble_buf_M_imag_V_1_ce0 = 1'b1;
    end else begin
        descramble_buf_M_imag_V_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (din_TVALID_int_regslice == 1'b0) | (ap_done_reg == 1'b1)) & (trunc_ln85_fu_162_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        descramble_buf_M_imag_V_1_we0 = 1'b1;
    end else begin
        descramble_buf_M_imag_V_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (din_TVALID_int_regslice == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state2))) begin
        descramble_buf_M_imag_V_ce0 = 1'b1;
    end else begin
        descramble_buf_M_imag_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (din_TVALID_int_regslice == 1'b0) | (ap_done_reg == 1'b1)) & (trunc_ln85_fu_162_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        descramble_buf_M_imag_V_we0 = 1'b1;
    end else begin
        descramble_buf_M_imag_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (din_TVALID_int_regslice == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state2))) begin
        descramble_buf_M_real_V_1_ce0 = 1'b1;
    end else begin
        descramble_buf_M_real_V_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (din_TVALID_int_regslice == 1'b0) | (ap_done_reg == 1'b1)) & (trunc_ln85_fu_162_p1 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        descramble_buf_M_real_V_1_we0 = 1'b1;
    end else begin
        descramble_buf_M_real_V_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (din_TVALID_int_regslice == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state2))) begin
        descramble_buf_M_real_V_ce0 = 1'b1;
    end else begin
        descramble_buf_M_real_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (din_TVALID_int_regslice == 1'b0) | (ap_done_reg == 1'b1)) & (trunc_ln85_fu_162_p1 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        descramble_buf_M_real_V_we0 = 1'b1;
    end else begin
        descramble_buf_M_real_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state2))) begin
        din_TDATA_blk_n = din_TVALID_int_regslice;
    end else begin
        din_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((ap_start == 1'b0) | (din_TVALID_int_regslice == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state2))) begin
        din_TREADY_int_regslice = 1'b1;
    end else begin
        din_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

always @ (*) begin
    ap_block_state2 = ((ap_start == 1'b0) | (din_TVALID_int_regslice == 1'b0) | (ap_done_reg == 1'b1));
end

assign descramble_buf_M_imag_V_1_address0 = zext_ln85_fu_154_p1;

assign descramble_buf_M_imag_V_1_d0 = {{din_TDATA_int_regslice[31:16]}};

assign descramble_buf_M_imag_V_address0 = zext_ln85_fu_154_p1;

assign descramble_buf_M_imag_V_d0 = {{din_TDATA_int_regslice[31:16]}};

assign descramble_buf_M_real_V_1_address0 = zext_ln85_fu_154_p1;

assign descramble_buf_M_real_V_1_d0 = tmp_data_M_real_V_fu_126_p1;

assign descramble_buf_M_real_V_address0 = zext_ln85_fu_154_p1;

assign descramble_buf_M_real_V_d0 = tmp_data_M_real_V_fu_126_p1;

assign din_TREADY = regslice_both_din_U_ack_in;

assign i_fu_166_p2 = (i_221_reg_112 + 9'd1);

assign icmp_ln79_fu_172_p2 = ((i_221_reg_112 == 9'd511) ? 1'b1 : 1'b0);

assign tmp_data_M_real_V_fu_126_p1 = din_TDATA_int_regslice[15:0];

assign trunc_ln85_fu_162_p1 = i_221_reg_112[0:0];

integer ap_tvar_int_0;

always @ (i_221_reg_112) begin
    for (ap_tvar_int_0 = 8 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 8 - 1) begin
            trunc_ln_fu_144_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            trunc_ln_fu_144_p4[ap_tvar_int_0] = i_221_reg_112[8 - ap_tvar_int_0];
        end
    end
end

assign zext_ln85_fu_154_p1 = trunc_ln_fu_144_p4;

endmodule //hls_xfft2real_Loop_realfft_be_buffer_proc1