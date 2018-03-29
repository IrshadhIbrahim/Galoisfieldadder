`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:39:34 03/26/2018 
// Design Name: 
// Module Name:    tb_gfadder4 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module tb_gfadder4;
// Inputs
reg [3:0] a1,b1;
reg [2:0] m1;
reg [4:0] poly1;

// Outputs
wire [3:0] c;

gfadder4 ab  (
.m(m1),
.prim_poly(poly1),
.a(a1),
.b(b1),
.opelement(c)
);

initial begin


$monitor ("a=%h,\tb=%h,\tc=%h",a1,b1,c);

#10  m1=3'b010; poly1=5'b10000; a1 = 4'b0000; b1 = 4'b0000;
#10  m1=3'b011; poly1=5'b10000; a1 = 4'b0000; b1 = 4'b0000;
#10  m1=3'b011; poly1=5'b01011; a1 = 4'b0000; b1 = 4'b0000;
#10  m1=3'b011; poly1=5'b01011; a1 = 4'b0001; b1 = 4'b0010;
#10  m1=3'b011; poly1=5'b01011; a1 = 4'b0111; b1 = 4'b0100;
#10  m1=3'b011; poly1=5'b01011; a1 = 4'b0011; b1 = 4'b0010;
#10  m1=3'b011; poly1=5'b01011; a1 = 4'b0001; b1 = 4'b0101;
#10  m1=3'b011; poly1=5'b01101; a1 = 4'b0000; b1 = 4'b0000;
#10  m1=3'b011; poly1=5'b01101; a1 = 4'b0100; b1 = 4'b0010;
#10  m1=3'b011; poly1=5'b01101; a1 = 4'b0110; b1 = 4'b0001;
#10  m1=3'b011; poly1=5'b01101; a1 = 4'b0111; b1 = 4'b0010;
#10  m1=3'b011; poly1=5'b01101; a1 = 4'b0010; b1 = 4'b0100;
#10  m1=3'b011; poly1=5'b01101; a1 = 4'b0000; b1 = 4'b0000;
#10  m1=3'b100; poly1=5'b10011; a1 = 4'b1010; b1 = 4'b0110;
#10  m1=3'b011; poly1=5'b01101; a1 = 4'b0000; b1 = 4'b0000;

  $stop();  

end
endmodule