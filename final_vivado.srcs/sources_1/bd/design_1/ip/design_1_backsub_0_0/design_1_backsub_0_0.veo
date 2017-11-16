// (c) Copyright 1995-2017 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: xilinx.com:hls:backsub:1.0
// IP Revision: 1711151801

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
design_1_backsub_0_0 your_instance_name (
  .s_axi_CRTL_BUS_AWADDR(s_axi_CRTL_BUS_AWADDR),    // input wire [5 : 0] s_axi_CRTL_BUS_AWADDR
  .s_axi_CRTL_BUS_AWVALID(s_axi_CRTL_BUS_AWVALID),  // input wire s_axi_CRTL_BUS_AWVALID
  .s_axi_CRTL_BUS_AWREADY(s_axi_CRTL_BUS_AWREADY),  // output wire s_axi_CRTL_BUS_AWREADY
  .s_axi_CRTL_BUS_WDATA(s_axi_CRTL_BUS_WDATA),      // input wire [31 : 0] s_axi_CRTL_BUS_WDATA
  .s_axi_CRTL_BUS_WSTRB(s_axi_CRTL_BUS_WSTRB),      // input wire [3 : 0] s_axi_CRTL_BUS_WSTRB
  .s_axi_CRTL_BUS_WVALID(s_axi_CRTL_BUS_WVALID),    // input wire s_axi_CRTL_BUS_WVALID
  .s_axi_CRTL_BUS_WREADY(s_axi_CRTL_BUS_WREADY),    // output wire s_axi_CRTL_BUS_WREADY
  .s_axi_CRTL_BUS_BRESP(s_axi_CRTL_BUS_BRESP),      // output wire [1 : 0] s_axi_CRTL_BUS_BRESP
  .s_axi_CRTL_BUS_BVALID(s_axi_CRTL_BUS_BVALID),    // output wire s_axi_CRTL_BUS_BVALID
  .s_axi_CRTL_BUS_BREADY(s_axi_CRTL_BUS_BREADY),    // input wire s_axi_CRTL_BUS_BREADY
  .s_axi_CRTL_BUS_ARADDR(s_axi_CRTL_BUS_ARADDR),    // input wire [5 : 0] s_axi_CRTL_BUS_ARADDR
  .s_axi_CRTL_BUS_ARVALID(s_axi_CRTL_BUS_ARVALID),  // input wire s_axi_CRTL_BUS_ARVALID
  .s_axi_CRTL_BUS_ARREADY(s_axi_CRTL_BUS_ARREADY),  // output wire s_axi_CRTL_BUS_ARREADY
  .s_axi_CRTL_BUS_RDATA(s_axi_CRTL_BUS_RDATA),      // output wire [31 : 0] s_axi_CRTL_BUS_RDATA
  .s_axi_CRTL_BUS_RRESP(s_axi_CRTL_BUS_RRESP),      // output wire [1 : 0] s_axi_CRTL_BUS_RRESP
  .s_axi_CRTL_BUS_RVALID(s_axi_CRTL_BUS_RVALID),    // output wire s_axi_CRTL_BUS_RVALID
  .s_axi_CRTL_BUS_RREADY(s_axi_CRTL_BUS_RREADY),    // input wire s_axi_CRTL_BUS_RREADY
  .ap_clk(ap_clk),                                  // input wire ap_clk
  .ap_rst_n(ap_rst_n),                              // input wire ap_rst_n
  .interrupt(interrupt),                            // output wire interrupt
  .inStream_TVALID(inStream_TVALID),                // input wire inStream_TVALID
  .inStream_TREADY(inStream_TREADY),                // output wire inStream_TREADY
  .inStream_TDATA(inStream_TDATA),                  // input wire [31 : 0] inStream_TDATA
  .inStream_TDEST(inStream_TDEST),                  // input wire [0 : 0] inStream_TDEST
  .inStream_TKEEP(inStream_TKEEP),                  // input wire [3 : 0] inStream_TKEEP
  .inStream_TSTRB(inStream_TSTRB),                  // input wire [3 : 0] inStream_TSTRB
  .inStream_TUSER(inStream_TUSER),                  // input wire [0 : 0] inStream_TUSER
  .inStream_TLAST(inStream_TLAST),                  // input wire [0 : 0] inStream_TLAST
  .inStream_TID(inStream_TID),                      // input wire [0 : 0] inStream_TID
  .outStream_TVALID(outStream_TVALID),              // output wire outStream_TVALID
  .outStream_TREADY(outStream_TREADY),              // input wire outStream_TREADY
  .outStream_TDATA(outStream_TDATA),                // output wire [7 : 0] outStream_TDATA
  .outStream_TDEST(outStream_TDEST),                // output wire [0 : 0] outStream_TDEST
  .outStream_TKEEP(outStream_TKEEP),                // output wire [0 : 0] outStream_TKEEP
  .outStream_TSTRB(outStream_TSTRB),                // output wire [0 : 0] outStream_TSTRB
  .outStream_TUSER(outStream_TUSER),                // output wire [0 : 0] outStream_TUSER
  .outStream_TLAST(outStream_TLAST),                // output wire [0 : 0] outStream_TLAST
  .outStream_TID(outStream_TID),                    // output wire [0 : 0] outStream_TID
  .frame_Clk_A(frame_Clk_A),                        // output wire frame_Clk_A
  .frame_Rst_A(frame_Rst_A),                        // output wire frame_Rst_A
  .frame_EN_A(frame_EN_A),                          // output wire frame_EN_A
  .frame_WEN_A(frame_WEN_A),                        // output wire [1 : 0] frame_WEN_A
  .frame_Addr_A(frame_Addr_A),                      // output wire [31 : 0] frame_Addr_A
  .frame_Din_A(frame_Din_A),                        // output wire [15 : 0] frame_Din_A
  .frame_Dout_A(frame_Dout_A),                      // input wire [15 : 0] frame_Dout_A
  .frame_Clk_B(frame_Clk_B),                        // output wire frame_Clk_B
  .frame_Rst_B(frame_Rst_B),                        // output wire frame_Rst_B
  .frame_EN_B(frame_EN_B),                          // output wire frame_EN_B
  .frame_WEN_B(frame_WEN_B),                        // output wire [1 : 0] frame_WEN_B
  .frame_Addr_B(frame_Addr_B),                      // output wire [31 : 0] frame_Addr_B
  .frame_Din_B(frame_Din_B),                        // output wire [15 : 0] frame_Din_B
  .frame_Dout_B(frame_Dout_B)                      // input wire [15 : 0] frame_Dout_B
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file design_1_backsub_0_0.v when simulating
// the core, design_1_backsub_0_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

