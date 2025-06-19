`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/18/2025 01:57:18 PM
// Design Name: 
// Module Name: testbench_pipeline
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////
//Testbench

module testbench_pipeline;
 
reg reset_test;
reg clk_test;
Pipelined_processor pipeline_proc_mod(clk_test,reset_test); 
initial 
begin 
reset_test=0;clk_test=0;
#6 reset_test=1;

forever #10 clk_test=~clk_test;
#200 $finish;
end
endmodule
