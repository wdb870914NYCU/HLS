set moduleName Loop_realfft_be_buffer_proc1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {Loop_realfft_be_buffer_proc1}
set C_modelType { void 0 }
set C_modelArgList {
	{ din int 48 regular {axi_s 0 volatile  { din Data } }  }
	{ descramble_buf_M_real_V int 16 regular {array 256 { 0 3 } 0 1 }  }
	{ descramble_buf_M_real_V_1 int 16 regular {array 256 { 0 3 } 0 1 }  }
	{ descramble_buf_M_imag_V int 16 regular {array 256 { 0 3 } 0 1 }  }
	{ descramble_buf_M_imag_V_1 int 16 regular {array 256 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "din", "interface" : "axis", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "descramble_buf_M_real_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "descramble_buf_M_real_V_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "descramble_buf_M_imag_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "descramble_buf_M_imag_V_1", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ din_TDATA sc_in sc_lv 48 signal 0 } 
	{ din_TVALID sc_in sc_logic 1 invld 0 } 
	{ din_TREADY sc_out sc_logic 1 inacc 0 } 
	{ descramble_buf_M_real_V_address0 sc_out sc_lv 8 signal 1 } 
	{ descramble_buf_M_real_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ descramble_buf_M_real_V_we0 sc_out sc_logic 1 signal 1 } 
	{ descramble_buf_M_real_V_d0 sc_out sc_lv 16 signal 1 } 
	{ descramble_buf_M_real_V_1_address0 sc_out sc_lv 8 signal 2 } 
	{ descramble_buf_M_real_V_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ descramble_buf_M_real_V_1_we0 sc_out sc_logic 1 signal 2 } 
	{ descramble_buf_M_real_V_1_d0 sc_out sc_lv 16 signal 2 } 
	{ descramble_buf_M_imag_V_address0 sc_out sc_lv 8 signal 3 } 
	{ descramble_buf_M_imag_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ descramble_buf_M_imag_V_we0 sc_out sc_logic 1 signal 3 } 
	{ descramble_buf_M_imag_V_d0 sc_out sc_lv 16 signal 3 } 
	{ descramble_buf_M_imag_V_1_address0 sc_out sc_lv 8 signal 4 } 
	{ descramble_buf_M_imag_V_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ descramble_buf_M_imag_V_1_we0 sc_out sc_logic 1 signal 4 } 
	{ descramble_buf_M_imag_V_1_d0 sc_out sc_lv 16 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "din_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "din", "role": "TDATA" }} , 
 	{ "name": "din_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "din", "role": "TVALID" }} , 
 	{ "name": "din_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "din", "role": "TREADY" }} , 
 	{ "name": "descramble_buf_M_real_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "descramble_buf_M_real_V", "role": "address0" }} , 
 	{ "name": "descramble_buf_M_real_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "descramble_buf_M_real_V", "role": "ce0" }} , 
 	{ "name": "descramble_buf_M_real_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "descramble_buf_M_real_V", "role": "we0" }} , 
 	{ "name": "descramble_buf_M_real_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "descramble_buf_M_real_V", "role": "d0" }} , 
 	{ "name": "descramble_buf_M_real_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "descramble_buf_M_real_V_1", "role": "address0" }} , 
 	{ "name": "descramble_buf_M_real_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "descramble_buf_M_real_V_1", "role": "ce0" }} , 
 	{ "name": "descramble_buf_M_real_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "descramble_buf_M_real_V_1", "role": "we0" }} , 
 	{ "name": "descramble_buf_M_real_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "descramble_buf_M_real_V_1", "role": "d0" }} , 
 	{ "name": "descramble_buf_M_imag_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "descramble_buf_M_imag_V", "role": "address0" }} , 
 	{ "name": "descramble_buf_M_imag_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "descramble_buf_M_imag_V", "role": "ce0" }} , 
 	{ "name": "descramble_buf_M_imag_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "descramble_buf_M_imag_V", "role": "we0" }} , 
 	{ "name": "descramble_buf_M_imag_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "descramble_buf_M_imag_V", "role": "d0" }} , 
 	{ "name": "descramble_buf_M_imag_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "descramble_buf_M_imag_V_1", "role": "address0" }} , 
 	{ "name": "descramble_buf_M_imag_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "descramble_buf_M_imag_V_1", "role": "ce0" }} , 
 	{ "name": "descramble_buf_M_imag_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "descramble_buf_M_imag_V_1", "role": "we0" }} , 
 	{ "name": "descramble_buf_M_imag_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "descramble_buf_M_imag_V_1", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "Loop_realfft_be_buffer_proc1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "511", "EstimateLatencyMax" : "512",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "din", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "din_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "descramble_buf_M_real_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "descramble_buf_M_real_V_1", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "descramble_buf_M_imag_V", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0"},
			{"Name" : "descramble_buf_M_imag_V_1", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["0"], "DependentChan" : "0"}],
		"Loop" : [
			{"Name" : "realfft_be_buffer", "PipelineType" : "rewind_dis",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_state2", "FirstStateIter" : "1'b1", "FirstStateBlock" : "1'b0", "LastState" : "ap_ST_fsm_state2", "LastStateIter" : "1'b1", "LastStateBlock" : "1'b0", "QuitState" : "ap_ST_fsm_state2", "QuitStateIter" : "1'b1", "QuitStateBlock" : "1'b0", "has_continue" : "1"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_din_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Loop_realfft_be_buffer_proc1 {
		din {Type I LastRead 1 FirstWrite -1}
		descramble_buf_M_real_V {Type O LastRead -1 FirstWrite 1}
		descramble_buf_M_real_V_1 {Type O LastRead -1 FirstWrite 1}
		descramble_buf_M_imag_V {Type O LastRead -1 FirstWrite 1}
		descramble_buf_M_imag_V_1 {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "511", "Max" : "512"}
	, {"Name" : "Interval", "Min" : "511", "Max" : "512"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	din { axis {  { din_TDATA in_data 0 48 }  { din_TVALID in_vld 0 1 }  { din_TREADY in_acc 1 1 } } }
	descramble_buf_M_real_V { ap_memory {  { descramble_buf_M_real_V_address0 mem_address 1 8 }  { descramble_buf_M_real_V_ce0 mem_ce 1 1 }  { descramble_buf_M_real_V_we0 mem_we 1 1 }  { descramble_buf_M_real_V_d0 mem_din 1 16 } } }
	descramble_buf_M_real_V_1 { ap_memory {  { descramble_buf_M_real_V_1_address0 mem_address 1 8 }  { descramble_buf_M_real_V_1_ce0 mem_ce 1 1 }  { descramble_buf_M_real_V_1_we0 mem_we 1 1 }  { descramble_buf_M_real_V_1_d0 mem_din 1 16 } } }
	descramble_buf_M_imag_V { ap_memory {  { descramble_buf_M_imag_V_address0 mem_address 1 8 }  { descramble_buf_M_imag_V_ce0 mem_ce 1 1 }  { descramble_buf_M_imag_V_we0 mem_we 1 1 }  { descramble_buf_M_imag_V_d0 mem_din 1 16 } } }
	descramble_buf_M_imag_V_1 { ap_memory {  { descramble_buf_M_imag_V_1_address0 mem_address 1 8 }  { descramble_buf_M_imag_V_1_ce0 mem_ce 1 1 }  { descramble_buf_M_imag_V_1_we0 mem_we 1 1 }  { descramble_buf_M_imag_V_1_d0 mem_din 1 16 } } }
}
