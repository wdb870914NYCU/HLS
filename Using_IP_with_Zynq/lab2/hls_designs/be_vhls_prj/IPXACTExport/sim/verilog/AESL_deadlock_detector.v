`timescale 1 ns / 1 ps

module AESL_deadlock_detector (
    input dl_reset,
    input all_finish,
    input dl_clock);

    wire [1:0] proc_0_data_FIFO_blk;
    wire [1:0] proc_0_data_PIPO_blk;
    wire [1:0] proc_0_start_FIFO_blk;
    wire [1:0] proc_0_TLF_FIFO_blk;
    wire [1:0] proc_0_input_sync_blk;
    wire [1:0] proc_0_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_0;
    reg [1:0] proc_dep_vld_vec_0_reg;
    wire [1:0] in_chan_dep_vld_vec_0;
    wire [9:0] in_chan_dep_data_vec_0;
    wire [1:0] token_in_vec_0;
    wire [1:0] out_chan_dep_vld_vec_0;
    wire [4:0] out_chan_dep_data_0;
    wire [1:0] token_out_vec_0;
    wire dl_detect_out_0;
    wire dep_chan_vld_1_0;
    wire [4:0] dep_chan_data_1_0;
    wire token_1_0;
    wire dep_chan_vld_2_0;
    wire [4:0] dep_chan_data_2_0;
    wire token_2_0;
    wire [1:0] proc_1_data_FIFO_blk;
    wire [1:0] proc_1_data_PIPO_blk;
    wire [1:0] proc_1_start_FIFO_blk;
    wire [1:0] proc_1_TLF_FIFO_blk;
    wire [1:0] proc_1_input_sync_blk;
    wire [1:0] proc_1_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_1;
    reg [1:0] proc_dep_vld_vec_1_reg;
    wire [1:0] in_chan_dep_vld_vec_1;
    wire [9:0] in_chan_dep_data_vec_1;
    wire [1:0] token_in_vec_1;
    wire [1:0] out_chan_dep_vld_vec_1;
    wire [4:0] out_chan_dep_data_1;
    wire [1:0] token_out_vec_1;
    wire dl_detect_out_1;
    wire dep_chan_vld_0_1;
    wire [4:0] dep_chan_data_0_1;
    wire token_0_1;
    wire dep_chan_vld_2_1;
    wire [4:0] dep_chan_data_2_1;
    wire token_2_1;
    wire [3:0] proc_2_data_FIFO_blk;
    wire [3:0] proc_2_data_PIPO_blk;
    wire [3:0] proc_2_start_FIFO_blk;
    wire [3:0] proc_2_TLF_FIFO_blk;
    wire [3:0] proc_2_input_sync_blk;
    wire [3:0] proc_2_output_sync_blk;
    wire [3:0] proc_dep_vld_vec_2;
    reg [3:0] proc_dep_vld_vec_2_reg;
    wire [3:0] in_chan_dep_vld_vec_2;
    wire [19:0] in_chan_dep_data_vec_2;
    wire [3:0] token_in_vec_2;
    wire [3:0] out_chan_dep_vld_vec_2;
    wire [4:0] out_chan_dep_data_2;
    wire [3:0] token_out_vec_2;
    wire dl_detect_out_2;
    wire dep_chan_vld_0_2;
    wire [4:0] dep_chan_data_0_2;
    wire token_0_2;
    wire dep_chan_vld_1_2;
    wire [4:0] dep_chan_data_1_2;
    wire token_1_2;
    wire dep_chan_vld_3_2;
    wire [4:0] dep_chan_data_3_2;
    wire token_3_2;
    wire dep_chan_vld_4_2;
    wire [4:0] dep_chan_data_4_2;
    wire token_4_2;
    wire [1:0] proc_3_data_FIFO_blk;
    wire [1:0] proc_3_data_PIPO_blk;
    wire [1:0] proc_3_start_FIFO_blk;
    wire [1:0] proc_3_TLF_FIFO_blk;
    wire [1:0] proc_3_input_sync_blk;
    wire [1:0] proc_3_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_3;
    reg [1:0] proc_dep_vld_vec_3_reg;
    wire [1:0] in_chan_dep_vld_vec_3;
    wire [9:0] in_chan_dep_data_vec_3;
    wire [1:0] token_in_vec_3;
    wire [1:0] out_chan_dep_vld_vec_3;
    wire [4:0] out_chan_dep_data_3;
    wire [1:0] token_out_vec_3;
    wire dl_detect_out_3;
    wire dep_chan_vld_2_3;
    wire [4:0] dep_chan_data_2_3;
    wire token_2_3;
    wire dep_chan_vld_4_3;
    wire [4:0] dep_chan_data_4_3;
    wire token_4_3;
    wire [1:0] proc_4_data_FIFO_blk;
    wire [1:0] proc_4_data_PIPO_blk;
    wire [1:0] proc_4_start_FIFO_blk;
    wire [1:0] proc_4_TLF_FIFO_blk;
    wire [1:0] proc_4_input_sync_blk;
    wire [1:0] proc_4_output_sync_blk;
    wire [1:0] proc_dep_vld_vec_4;
    reg [1:0] proc_dep_vld_vec_4_reg;
    wire [1:0] in_chan_dep_vld_vec_4;
    wire [9:0] in_chan_dep_data_vec_4;
    wire [1:0] token_in_vec_4;
    wire [1:0] out_chan_dep_vld_vec_4;
    wire [4:0] out_chan_dep_data_4;
    wire [1:0] token_out_vec_4;
    wire dl_detect_out_4;
    wire dep_chan_vld_2_4;
    wire [4:0] dep_chan_data_2_4;
    wire token_2_4;
    wire dep_chan_vld_3_4;
    wire [4:0] dep_chan_data_3_4;
    wire token_3_4;
    wire [4:0] dl_in_vec;
    wire dl_detect_out;
    wire token_clear;
    wire [4:0] origin;

    reg ap_done_reg_0;// for module AESL_inst_hls_xfft2real.Block_ZN8ap_fixedILi16ELi1EL9ap_q_mode5EL9ap_o_mode0ELi0EEC2Ei_exit_i75_proc_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_0 <= 'b0;
        end
        else begin
            ap_done_reg_0 <= AESL_inst_hls_xfft2real.Block_ZN8ap_fixedILi16ELi1EL9ap_q_mode5EL9ap_o_mode0ELi0EEC2Ei_exit_i75_proc_U0.ap_done & ~AESL_inst_hls_xfft2real.Block_ZN8ap_fixedILi16ELi1EL9ap_q_mode5EL9ap_o_mode0ELi0EEC2Ei_exit_i75_proc_U0.ap_continue;
        end
    end

    reg ap_done_reg_1;// for module AESL_inst_hls_xfft2real.Loop_realfft_be_buffer_proc1_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_1 <= 'b0;
        end
        else begin
            ap_done_reg_1 <= AESL_inst_hls_xfft2real.Loop_realfft_be_buffer_proc1_U0.ap_done & ~AESL_inst_hls_xfft2real.Loop_realfft_be_buffer_proc1_U0.ap_continue;
        end
    end

    reg ap_done_reg_2;// for module AESL_inst_hls_xfft2real.Loop_realfft_be_descramble_proc2_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_2 <= 'b0;
        end
        else begin
            ap_done_reg_2 <= AESL_inst_hls_xfft2real.Loop_realfft_be_descramble_proc2_U0.ap_done & ~AESL_inst_hls_xfft2real.Loop_realfft_be_descramble_proc2_U0.ap_continue;
        end
    end

    reg ap_done_reg_3;// for module AESL_inst_hls_xfft2real.Loop_realfft_be_rev_real_hi_proc3_U0
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            ap_done_reg_3 <= 'b0;
        end
        else begin
            ap_done_reg_3 <= AESL_inst_hls_xfft2real.Loop_realfft_be_rev_real_hi_proc3_U0.ap_done & ~AESL_inst_hls_xfft2real.Loop_realfft_be_rev_real_hi_proc3_U0.ap_continue;
        end
    end

reg [15:0] trans_in_cnt_0;// for process AESL_inst_hls_xfft2real.Loop_realfft_be_descramble_proc2_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_in_cnt_0 <= 16'h0;
    end
    else if (AESL_inst_hls_xfft2real.Loop_realfft_be_descramble_proc2_U0.start_write == 1'b1) begin
        trans_in_cnt_0 <= trans_in_cnt_0 + 16'h1;
    end
    else begin
        trans_in_cnt_0 <= trans_in_cnt_0;
    end
end

reg [15:0] trans_out_cnt_0;// for process AESL_inst_hls_xfft2real.Loop_realfft_be_descramble_proc2_U0
always @(negedge dl_reset or posedge dl_clock) begin
    if (~dl_reset) begin
         trans_out_cnt_0 <= 16'h0;
    end
    else if (AESL_inst_hls_xfft2real.Loop_realfft_be_descramble_proc2_U0.ap_done == 1'b1 && AESL_inst_hls_xfft2real.Loop_realfft_be_descramble_proc2_U0.ap_continue == 1'b1) begin
        trans_out_cnt_0 <= trans_out_cnt_0 + 16'h1;
    end
    else begin
        trans_out_cnt_0 <= trans_out_cnt_0;
    end
end

    // Process: AESL_inst_hls_xfft2real.Block_ZN8ap_fixedILi16ELi1EL9ap_q_mode5EL9ap_o_mode0ELi0EEC2Ei_exit_i75_proc_U0
    AESL_deadlock_detect_unit #(5, 0, 2, 2) AESL_deadlock_detect_unit_0 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_0),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_0),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_0),
        .token_in_vec(token_in_vec_0),
        .dl_detect_in(dl_detect_out),
        .origin(origin[0]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_0),
        .out_chan_dep_data(out_chan_dep_data_0),
        .token_out_vec(token_out_vec_0),
        .dl_detect_out(dl_in_vec[0]));

    assign proc_0_data_FIFO_blk[0] = 1'b0;
    assign proc_0_data_PIPO_blk[0] = 1'b0 | (~AESL_inst_hls_xfft2real.twid_rom_M_real_V_U.i_full_n & AESL_inst_hls_xfft2real.Block_ZN8ap_fixedILi16ELi1EL9ap_q_mode5EL9ap_o_mode0ELi0EEC2Ei_exit_i75_proc_U0.ap_done & ap_done_reg_0 & ~AESL_inst_hls_xfft2real.twid_rom_M_real_V_U.t_read) | (~AESL_inst_hls_xfft2real.twid_rom_M_imag_V_U.i_full_n & AESL_inst_hls_xfft2real.Block_ZN8ap_fixedILi16ELi1EL9ap_q_mode5EL9ap_o_mode0ELi0EEC2Ei_exit_i75_proc_U0.ap_done & ap_done_reg_0 & ~AESL_inst_hls_xfft2real.twid_rom_M_imag_V_U.t_read);
    assign proc_0_start_FIFO_blk[0] = 1'b0;
    assign proc_0_TLF_FIFO_blk[0] = 1'b0;
    assign proc_0_input_sync_blk[0] = 1'b0;
    assign proc_0_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_0[0] = dl_detect_out ? proc_dep_vld_vec_0_reg[0] : (proc_0_data_FIFO_blk[0] | proc_0_data_PIPO_blk[0] | proc_0_start_FIFO_blk[0] | proc_0_TLF_FIFO_blk[0] | proc_0_input_sync_blk[0] | proc_0_output_sync_blk[0]);
    assign proc_0_data_FIFO_blk[1] = 1'b0;
    assign proc_0_data_PIPO_blk[1] = 1'b0;
    assign proc_0_start_FIFO_blk[1] = 1'b0;
    assign proc_0_TLF_FIFO_blk[1] = 1'b0;
    assign proc_0_input_sync_blk[1] = 1'b0 | (AESL_inst_hls_xfft2real.ap_sync_Block_ZN8ap_fixedILi16ELi1EL9ap_q_mode5EL9ap_o_mode0ELi0EEC2Ei_exit_i75_proc_U0_ap_ready & AESL_inst_hls_xfft2real.Block_ZN8ap_fixedILi16ELi1EL9ap_q_mode5EL9ap_o_mode0ELi0EEC2Ei_exit_i75_proc_U0.ap_idle & ~AESL_inst_hls_xfft2real.ap_sync_Loop_realfft_be_buffer_proc1_U0_ap_ready);
    assign proc_0_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_0[1] = dl_detect_out ? proc_dep_vld_vec_0_reg[1] : (proc_0_data_FIFO_blk[1] | proc_0_data_PIPO_blk[1] | proc_0_start_FIFO_blk[1] | proc_0_TLF_FIFO_blk[1] | proc_0_input_sync_blk[1] | proc_0_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_0_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_0_reg <= proc_dep_vld_vec_0;
        end
    end
    assign in_chan_dep_vld_vec_0[0] = dep_chan_vld_1_0;
    assign in_chan_dep_data_vec_0[4 : 0] = dep_chan_data_1_0;
    assign token_in_vec_0[0] = token_1_0;
    assign in_chan_dep_vld_vec_0[1] = dep_chan_vld_2_0;
    assign in_chan_dep_data_vec_0[9 : 5] = dep_chan_data_2_0;
    assign token_in_vec_0[1] = token_2_0;
    assign dep_chan_vld_0_2 = out_chan_dep_vld_vec_0[0];
    assign dep_chan_data_0_2 = out_chan_dep_data_0;
    assign token_0_2 = token_out_vec_0[0];
    assign dep_chan_vld_0_1 = out_chan_dep_vld_vec_0[1];
    assign dep_chan_data_0_1 = out_chan_dep_data_0;
    assign token_0_1 = token_out_vec_0[1];

    // Process: AESL_inst_hls_xfft2real.Loop_realfft_be_buffer_proc1_U0
    AESL_deadlock_detect_unit #(5, 1, 2, 2) AESL_deadlock_detect_unit_1 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_1),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_1),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_1),
        .token_in_vec(token_in_vec_1),
        .dl_detect_in(dl_detect_out),
        .origin(origin[1]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_1),
        .out_chan_dep_data(out_chan_dep_data_1),
        .token_out_vec(token_out_vec_1),
        .dl_detect_out(dl_in_vec[1]));

    assign proc_1_data_FIFO_blk[0] = 1'b0;
    assign proc_1_data_PIPO_blk[0] = 1'b0 | (~AESL_inst_hls_xfft2real.descramble_buf_M_real_V_U.i_full_n & AESL_inst_hls_xfft2real.Loop_realfft_be_buffer_proc1_U0.ap_done & ap_done_reg_1 & ~AESL_inst_hls_xfft2real.descramble_buf_M_real_V_U.t_read) | (~AESL_inst_hls_xfft2real.descramble_buf_M_real_V_1_U.i_full_n & AESL_inst_hls_xfft2real.Loop_realfft_be_buffer_proc1_U0.ap_done & ap_done_reg_1 & ~AESL_inst_hls_xfft2real.descramble_buf_M_real_V_1_U.t_read) | (~AESL_inst_hls_xfft2real.descramble_buf_M_imag_V_U.i_full_n & AESL_inst_hls_xfft2real.Loop_realfft_be_buffer_proc1_U0.ap_done & ap_done_reg_1 & ~AESL_inst_hls_xfft2real.descramble_buf_M_imag_V_U.t_read) | (~AESL_inst_hls_xfft2real.descramble_buf_M_imag_V_1_U.i_full_n & AESL_inst_hls_xfft2real.Loop_realfft_be_buffer_proc1_U0.ap_done & ap_done_reg_1 & ~AESL_inst_hls_xfft2real.descramble_buf_M_imag_V_1_U.t_read);
    assign proc_1_start_FIFO_blk[0] = 1'b0;
    assign proc_1_TLF_FIFO_blk[0] = 1'b0;
    assign proc_1_input_sync_blk[0] = 1'b0;
    assign proc_1_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_1[0] = dl_detect_out ? proc_dep_vld_vec_1_reg[0] : (proc_1_data_FIFO_blk[0] | proc_1_data_PIPO_blk[0] | proc_1_start_FIFO_blk[0] | proc_1_TLF_FIFO_blk[0] | proc_1_input_sync_blk[0] | proc_1_output_sync_blk[0]);
    assign proc_1_data_FIFO_blk[1] = 1'b0;
    assign proc_1_data_PIPO_blk[1] = 1'b0;
    assign proc_1_start_FIFO_blk[1] = 1'b0;
    assign proc_1_TLF_FIFO_blk[1] = 1'b0;
    assign proc_1_input_sync_blk[1] = 1'b0 | (AESL_inst_hls_xfft2real.ap_sync_Loop_realfft_be_buffer_proc1_U0_ap_ready & AESL_inst_hls_xfft2real.Loop_realfft_be_buffer_proc1_U0.ap_idle & ~AESL_inst_hls_xfft2real.ap_sync_Block_ZN8ap_fixedILi16ELi1EL9ap_q_mode5EL9ap_o_mode0ELi0EEC2Ei_exit_i75_proc_U0_ap_ready);
    assign proc_1_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_1[1] = dl_detect_out ? proc_dep_vld_vec_1_reg[1] : (proc_1_data_FIFO_blk[1] | proc_1_data_PIPO_blk[1] | proc_1_start_FIFO_blk[1] | proc_1_TLF_FIFO_blk[1] | proc_1_input_sync_blk[1] | proc_1_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_1_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_1_reg <= proc_dep_vld_vec_1;
        end
    end
    assign in_chan_dep_vld_vec_1[0] = dep_chan_vld_0_1;
    assign in_chan_dep_data_vec_1[4 : 0] = dep_chan_data_0_1;
    assign token_in_vec_1[0] = token_0_1;
    assign in_chan_dep_vld_vec_1[1] = dep_chan_vld_2_1;
    assign in_chan_dep_data_vec_1[9 : 5] = dep_chan_data_2_1;
    assign token_in_vec_1[1] = token_2_1;
    assign dep_chan_vld_1_2 = out_chan_dep_vld_vec_1[0];
    assign dep_chan_data_1_2 = out_chan_dep_data_1;
    assign token_1_2 = token_out_vec_1[0];
    assign dep_chan_vld_1_0 = out_chan_dep_vld_vec_1[1];
    assign dep_chan_data_1_0 = out_chan_dep_data_1;
    assign token_1_0 = token_out_vec_1[1];

    // Process: AESL_inst_hls_xfft2real.Loop_realfft_be_descramble_proc2_U0
    AESL_deadlock_detect_unit #(5, 2, 4, 4) AESL_deadlock_detect_unit_2 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_2),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_2),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_2),
        .token_in_vec(token_in_vec_2),
        .dl_detect_in(dl_detect_out),
        .origin(origin[2]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_2),
        .out_chan_dep_data(out_chan_dep_data_2),
        .token_out_vec(token_out_vec_2),
        .dl_detect_out(dl_in_vec[2]));

    assign proc_2_data_FIFO_blk[0] = 1'b0;
    assign proc_2_data_PIPO_blk[0] = 1'b0 | (~AESL_inst_hls_xfft2real.descramble_buf_M_real_V_1_U.t_empty_n & AESL_inst_hls_xfft2real.Loop_realfft_be_descramble_proc2_U0.ap_idle & ~AESL_inst_hls_xfft2real.descramble_buf_M_real_V_1_U.i_write) | (~AESL_inst_hls_xfft2real.descramble_buf_M_imag_V_1_U.t_empty_n & AESL_inst_hls_xfft2real.Loop_realfft_be_descramble_proc2_U0.ap_idle & ~AESL_inst_hls_xfft2real.descramble_buf_M_imag_V_1_U.i_write) | (~AESL_inst_hls_xfft2real.descramble_buf_M_real_V_U.t_empty_n & AESL_inst_hls_xfft2real.Loop_realfft_be_descramble_proc2_U0.ap_idle & ~AESL_inst_hls_xfft2real.descramble_buf_M_real_V_U.i_write) | (~AESL_inst_hls_xfft2real.descramble_buf_M_imag_V_U.t_empty_n & AESL_inst_hls_xfft2real.Loop_realfft_be_descramble_proc2_U0.ap_idle & ~AESL_inst_hls_xfft2real.descramble_buf_M_imag_V_U.i_write);
    assign proc_2_start_FIFO_blk[0] = 1'b0;
    assign proc_2_TLF_FIFO_blk[0] = 1'b0;
    assign proc_2_input_sync_blk[0] = 1'b0;
    assign proc_2_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_2[0] = dl_detect_out ? proc_dep_vld_vec_2_reg[0] : (proc_2_data_FIFO_blk[0] | proc_2_data_PIPO_blk[0] | proc_2_start_FIFO_blk[0] | proc_2_TLF_FIFO_blk[0] | proc_2_input_sync_blk[0] | proc_2_output_sync_blk[0]);
    assign proc_2_data_FIFO_blk[1] = 1'b0 | (~AESL_inst_hls_xfft2real.Loop_realfft_be_descramble_proc2_U0.grp_Loop_realfft_be_descramble_proc2_Pipeline_realfft_be_descramble_fu_60.real_spectrum_lo_i_blk_n);
    assign proc_2_data_PIPO_blk[1] = 1'b0;
    assign proc_2_start_FIFO_blk[1] = 1'b0 | (~AESL_inst_hls_xfft2real.start_for_Loop_realfft_be_stream_output_proc4_U0_U.if_full_n & AESL_inst_hls_xfft2real.Loop_realfft_be_descramble_proc2_U0.ap_start & ~AESL_inst_hls_xfft2real.Loop_realfft_be_descramble_proc2_U0.real_start & (trans_in_cnt_0 == trans_out_cnt_0) & ~AESL_inst_hls_xfft2real.start_for_Loop_realfft_be_stream_output_proc4_U0_U.if_read);
    assign proc_2_TLF_FIFO_blk[1] = 1'b0;
    assign proc_2_input_sync_blk[1] = 1'b0;
    assign proc_2_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_2[1] = dl_detect_out ? proc_dep_vld_vec_2_reg[1] : (proc_2_data_FIFO_blk[1] | proc_2_data_PIPO_blk[1] | proc_2_start_FIFO_blk[1] | proc_2_TLF_FIFO_blk[1] | proc_2_input_sync_blk[1] | proc_2_output_sync_blk[1]);
    assign proc_2_data_FIFO_blk[2] = 1'b0;
    assign proc_2_data_PIPO_blk[2] = 1'b0 | (~AESL_inst_hls_xfft2real.real_spectrum_hi_buf_M_real_V_U.i_full_n & AESL_inst_hls_xfft2real.Loop_realfft_be_descramble_proc2_U0.ap_done & ap_done_reg_2 & ~AESL_inst_hls_xfft2real.real_spectrum_hi_buf_M_real_V_U.t_read) | (~AESL_inst_hls_xfft2real.real_spectrum_hi_buf_M_imag_V_U.i_full_n & AESL_inst_hls_xfft2real.Loop_realfft_be_descramble_proc2_U0.ap_done & ap_done_reg_2 & ~AESL_inst_hls_xfft2real.real_spectrum_hi_buf_M_imag_V_U.t_read);
    assign proc_2_start_FIFO_blk[2] = 1'b0;
    assign proc_2_TLF_FIFO_blk[2] = 1'b0;
    assign proc_2_input_sync_blk[2] = 1'b0;
    assign proc_2_output_sync_blk[2] = 1'b0;
    assign proc_dep_vld_vec_2[2] = dl_detect_out ? proc_dep_vld_vec_2_reg[2] : (proc_2_data_FIFO_blk[2] | proc_2_data_PIPO_blk[2] | proc_2_start_FIFO_blk[2] | proc_2_TLF_FIFO_blk[2] | proc_2_input_sync_blk[2] | proc_2_output_sync_blk[2]);
    assign proc_2_data_FIFO_blk[3] = 1'b0;
    assign proc_2_data_PIPO_blk[3] = 1'b0 | (~AESL_inst_hls_xfft2real.twid_rom_M_real_V_U.t_empty_n & AESL_inst_hls_xfft2real.Loop_realfft_be_descramble_proc2_U0.ap_idle & ~AESL_inst_hls_xfft2real.twid_rom_M_real_V_U.i_write) | (~AESL_inst_hls_xfft2real.twid_rom_M_imag_V_U.t_empty_n & AESL_inst_hls_xfft2real.Loop_realfft_be_descramble_proc2_U0.ap_idle & ~AESL_inst_hls_xfft2real.twid_rom_M_imag_V_U.i_write);
    assign proc_2_start_FIFO_blk[3] = 1'b0;
    assign proc_2_TLF_FIFO_blk[3] = 1'b0;
    assign proc_2_input_sync_blk[3] = 1'b0;
    assign proc_2_output_sync_blk[3] = 1'b0;
    assign proc_dep_vld_vec_2[3] = dl_detect_out ? proc_dep_vld_vec_2_reg[3] : (proc_2_data_FIFO_blk[3] | proc_2_data_PIPO_blk[3] | proc_2_start_FIFO_blk[3] | proc_2_TLF_FIFO_blk[3] | proc_2_input_sync_blk[3] | proc_2_output_sync_blk[3]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_2_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_2_reg <= proc_dep_vld_vec_2;
        end
    end
    assign in_chan_dep_vld_vec_2[0] = dep_chan_vld_0_2;
    assign in_chan_dep_data_vec_2[4 : 0] = dep_chan_data_0_2;
    assign token_in_vec_2[0] = token_0_2;
    assign in_chan_dep_vld_vec_2[1] = dep_chan_vld_1_2;
    assign in_chan_dep_data_vec_2[9 : 5] = dep_chan_data_1_2;
    assign token_in_vec_2[1] = token_1_2;
    assign in_chan_dep_vld_vec_2[2] = dep_chan_vld_3_2;
    assign in_chan_dep_data_vec_2[14 : 10] = dep_chan_data_3_2;
    assign token_in_vec_2[2] = token_3_2;
    assign in_chan_dep_vld_vec_2[3] = dep_chan_vld_4_2;
    assign in_chan_dep_data_vec_2[19 : 15] = dep_chan_data_4_2;
    assign token_in_vec_2[3] = token_4_2;
    assign dep_chan_vld_2_1 = out_chan_dep_vld_vec_2[0];
    assign dep_chan_data_2_1 = out_chan_dep_data_2;
    assign token_2_1 = token_out_vec_2[0];
    assign dep_chan_vld_2_4 = out_chan_dep_vld_vec_2[1];
    assign dep_chan_data_2_4 = out_chan_dep_data_2;
    assign token_2_4 = token_out_vec_2[1];
    assign dep_chan_vld_2_3 = out_chan_dep_vld_vec_2[2];
    assign dep_chan_data_2_3 = out_chan_dep_data_2;
    assign token_2_3 = token_out_vec_2[2];
    assign dep_chan_vld_2_0 = out_chan_dep_vld_vec_2[3];
    assign dep_chan_data_2_0 = out_chan_dep_data_2;
    assign token_2_0 = token_out_vec_2[3];

    // Process: AESL_inst_hls_xfft2real.Loop_realfft_be_rev_real_hi_proc3_U0
    AESL_deadlock_detect_unit #(5, 3, 2, 2) AESL_deadlock_detect_unit_3 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_3),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_3),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_3),
        .token_in_vec(token_in_vec_3),
        .dl_detect_in(dl_detect_out),
        .origin(origin[3]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_3),
        .out_chan_dep_data(out_chan_dep_data_3),
        .token_out_vec(token_out_vec_3),
        .dl_detect_out(dl_in_vec[3]));

    assign proc_3_data_FIFO_blk[0] = 1'b0;
    assign proc_3_data_PIPO_blk[0] = 1'b0 | (~AESL_inst_hls_xfft2real.real_spectrum_hi_buf_M_real_V_U.t_empty_n & AESL_inst_hls_xfft2real.Loop_realfft_be_rev_real_hi_proc3_U0.ap_idle & ~AESL_inst_hls_xfft2real.real_spectrum_hi_buf_M_real_V_U.i_write) | (~AESL_inst_hls_xfft2real.real_spectrum_hi_buf_M_imag_V_U.t_empty_n & AESL_inst_hls_xfft2real.Loop_realfft_be_rev_real_hi_proc3_U0.ap_idle & ~AESL_inst_hls_xfft2real.real_spectrum_hi_buf_M_imag_V_U.i_write);
    assign proc_3_start_FIFO_blk[0] = 1'b0;
    assign proc_3_TLF_FIFO_blk[0] = 1'b0;
    assign proc_3_input_sync_blk[0] = 1'b0;
    assign proc_3_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_3[0] = dl_detect_out ? proc_dep_vld_vec_3_reg[0] : (proc_3_data_FIFO_blk[0] | proc_3_data_PIPO_blk[0] | proc_3_start_FIFO_blk[0] | proc_3_TLF_FIFO_blk[0] | proc_3_input_sync_blk[0] | proc_3_output_sync_blk[0]);
    assign proc_3_data_FIFO_blk[1] = 1'b0 | (~AESL_inst_hls_xfft2real.Loop_realfft_be_rev_real_hi_proc3_U0.real_spectrum_hi_i_blk_n);
    assign proc_3_data_PIPO_blk[1] = 1'b0;
    assign proc_3_start_FIFO_blk[1] = 1'b0;
    assign proc_3_TLF_FIFO_blk[1] = 1'b0;
    assign proc_3_input_sync_blk[1] = 1'b0;
    assign proc_3_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_3[1] = dl_detect_out ? proc_dep_vld_vec_3_reg[1] : (proc_3_data_FIFO_blk[1] | proc_3_data_PIPO_blk[1] | proc_3_start_FIFO_blk[1] | proc_3_TLF_FIFO_blk[1] | proc_3_input_sync_blk[1] | proc_3_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_3_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_3_reg <= proc_dep_vld_vec_3;
        end
    end
    assign in_chan_dep_vld_vec_3[0] = dep_chan_vld_2_3;
    assign in_chan_dep_data_vec_3[4 : 0] = dep_chan_data_2_3;
    assign token_in_vec_3[0] = token_2_3;
    assign in_chan_dep_vld_vec_3[1] = dep_chan_vld_4_3;
    assign in_chan_dep_data_vec_3[9 : 5] = dep_chan_data_4_3;
    assign token_in_vec_3[1] = token_4_3;
    assign dep_chan_vld_3_2 = out_chan_dep_vld_vec_3[0];
    assign dep_chan_data_3_2 = out_chan_dep_data_3;
    assign token_3_2 = token_out_vec_3[0];
    assign dep_chan_vld_3_4 = out_chan_dep_vld_vec_3[1];
    assign dep_chan_data_3_4 = out_chan_dep_data_3;
    assign token_3_4 = token_out_vec_3[1];

    // Process: AESL_inst_hls_xfft2real.Loop_realfft_be_stream_output_proc4_U0
    AESL_deadlock_detect_unit #(5, 4, 2, 2) AESL_deadlock_detect_unit_4 (
        .reset(dl_reset),
        .clock(dl_clock),
        .proc_dep_vld_vec(proc_dep_vld_vec_4),
        .in_chan_dep_vld_vec(in_chan_dep_vld_vec_4),
        .in_chan_dep_data_vec(in_chan_dep_data_vec_4),
        .token_in_vec(token_in_vec_4),
        .dl_detect_in(dl_detect_out),
        .origin(origin[4]),
        .token_clear(token_clear),
        .out_chan_dep_vld_vec(out_chan_dep_vld_vec_4),
        .out_chan_dep_data(out_chan_dep_data_4),
        .token_out_vec(token_out_vec_4),
        .dl_detect_out(dl_in_vec[4]));

    assign proc_4_data_FIFO_blk[0] = 1'b0 | (~AESL_inst_hls_xfft2real.Loop_realfft_be_stream_output_proc4_U0.real_spectrum_lo_i_blk_n);
    assign proc_4_data_PIPO_blk[0] = 1'b0;
    assign proc_4_start_FIFO_blk[0] = 1'b0 | (~AESL_inst_hls_xfft2real.start_for_Loop_realfft_be_stream_output_proc4_U0_U.if_empty_n & AESL_inst_hls_xfft2real.Loop_realfft_be_stream_output_proc4_U0.ap_idle & ~AESL_inst_hls_xfft2real.start_for_Loop_realfft_be_stream_output_proc4_U0_U.if_write);
    assign proc_4_TLF_FIFO_blk[0] = 1'b0;
    assign proc_4_input_sync_blk[0] = 1'b0;
    assign proc_4_output_sync_blk[0] = 1'b0;
    assign proc_dep_vld_vec_4[0] = dl_detect_out ? proc_dep_vld_vec_4_reg[0] : (proc_4_data_FIFO_blk[0] | proc_4_data_PIPO_blk[0] | proc_4_start_FIFO_blk[0] | proc_4_TLF_FIFO_blk[0] | proc_4_input_sync_blk[0] | proc_4_output_sync_blk[0]);
    assign proc_4_data_FIFO_blk[1] = 1'b0 | (~AESL_inst_hls_xfft2real.Loop_realfft_be_stream_output_proc4_U0.real_spectrum_hi_i_blk_n);
    assign proc_4_data_PIPO_blk[1] = 1'b0;
    assign proc_4_start_FIFO_blk[1] = 1'b0;
    assign proc_4_TLF_FIFO_blk[1] = 1'b0;
    assign proc_4_input_sync_blk[1] = 1'b0;
    assign proc_4_output_sync_blk[1] = 1'b0;
    assign proc_dep_vld_vec_4[1] = dl_detect_out ? proc_dep_vld_vec_4_reg[1] : (proc_4_data_FIFO_blk[1] | proc_4_data_PIPO_blk[1] | proc_4_start_FIFO_blk[1] | proc_4_TLF_FIFO_blk[1] | proc_4_input_sync_blk[1] | proc_4_output_sync_blk[1]);
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            proc_dep_vld_vec_4_reg <= 'b0;
        end
        else begin
            proc_dep_vld_vec_4_reg <= proc_dep_vld_vec_4;
        end
    end
    assign in_chan_dep_vld_vec_4[0] = dep_chan_vld_2_4;
    assign in_chan_dep_data_vec_4[4 : 0] = dep_chan_data_2_4;
    assign token_in_vec_4[0] = token_2_4;
    assign in_chan_dep_vld_vec_4[1] = dep_chan_vld_3_4;
    assign in_chan_dep_data_vec_4[9 : 5] = dep_chan_data_3_4;
    assign token_in_vec_4[1] = token_3_4;
    assign dep_chan_vld_4_2 = out_chan_dep_vld_vec_4[0];
    assign dep_chan_data_4_2 = out_chan_dep_data_4;
    assign token_4_2 = token_out_vec_4[0];
    assign dep_chan_vld_4_3 = out_chan_dep_vld_vec_4[1];
    assign dep_chan_data_4_3 = out_chan_dep_data_4;
    assign token_4_3 = token_out_vec_4[1];


    wire [4:0] dl_in_vec_comb = dl_in_vec & ~{4{all_finish}};
    AESL_deadlock_report_unit #(5) AESL_deadlock_report_unit_inst (
        .dl_reset(dl_reset),
        .dl_clock(dl_clock),
        .dl_in_vec(dl_in_vec_comb),
        .trans_in_cnt_0(trans_in_cnt_0),
        .trans_out_cnt_0(trans_out_cnt_0),
        .ap_done_reg_0(ap_done_reg_0),
        .ap_done_reg_1(ap_done_reg_1),
        .ap_done_reg_2(ap_done_reg_2),
        .ap_done_reg_3(ap_done_reg_3),
        .dl_detect_out(dl_detect_out),
        .origin(origin),
        .token_clear(token_clear));

endmodule
