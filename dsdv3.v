`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Comp

// 
// Create Date:    03:53:39 03/24/2018 
// Design Name: 
// Module Name:    dsdv3 
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
module gfadder(m,prim_poly,a,b,opelement);
input[2:0] m;
input [4:0]prim_poly; // for all values upto x^4+x^3+x^2+x+1
input [3:0]a,b;
reg [3:0]op; // tells us the element in the field
output [3:0]opelement;
reg [3:0]opelement,GFelement1,GFelement2;
initial
begin
op<=4'b0000;
opelement<=4'b0000;
end
always@(*)
begin
if(m==2'd3)
begin
if(prim_poly==5'B01011)
begin
case(a)
4'b0000:GFelement1<=4'b0000;
4'b0001:GFelement1<=4'b0100;
4'b0010:GFelement1<=4'b0010;
4'b0011:GFelement1<=4'b0001;
4'b0100:GFelement1<=4'b0110;
4'b0101:GFelement1<=4'b0011;
4'b0110:GFelement1<=4'b0111;
4'b0111:GFelement1<=4'b0101;
default:GFelement1<=4'b0000;
endcase
case(b)
4'b0000:GFelement2<=4'b0000;
4'b0001:GFelement2<=4'b0100;
4'b0010:GFelement2<=4'b0010;
4'b0011:GFelement2<=4'b0001;
4'b0100:GFelement2<=4'b0110;
4'b0101:GFelement2<=4'b0011;
4'b0110:GFelement2<=4'b0111;
4'b0111:GFelement2<=4'b0101;
default:GFelement2<=4'b0000;
endcase
op[2:0]<=GFelement1[2:0]^GFelement2[2:0];
case(op)
4'b0000:opelement<=4'b0000;
4'b0001:opelement<=4'b0011;
4'b0010:opelement<=4'b0010;
4'b0011:opelement<=4'b0101;
4'b0100:opelement<=4'b0001;
4'b0101:opelement<=4'b0111;
4'b0110:opelement<=4'b0100;
4'b0111:opelement<=4'b0110;
default:opelement<=4'b0000;
endcase
end
else if(prim_poly==5'b01101)
begin
case(a)
4'b0000:GFelement1<=4'b0000;
4'b0001:GFelement1<=4'b0100;
4'b0010:GFelement1<=4'b0010;
4'b0011:GFelement1<=4'b0001;
4'b0100:GFelement1<=4'b0101;
4'b0101:GFelement1<=4'b0111;
4'b0110:GFelement1<=4'b0110;
4'b0111:GFelement1<=4'b0011;
default:GFelement1<=4'b0000;
endcase
case(b)
4'b0000:GFelement2<=4'b0000;
4'b0001:GFelement2<=4'b0100;
4'b0010:GFelement2<=4'b0010;
4'b0011:GFelement2<=4'b0001;
4'b0100:GFelement2<=4'b0101;
4'b0101:GFelement2<=4'b0111;
4'b0110:GFelement2<=4'b0110;
4'b0111:GFelement2<=4'b0011;
default:GFelement2<=4'b0000;
endcase
op[2:0]<=GFelement1[2:0]^GFelement2[2:0];
case(op)
4'b0000:opelement<=4'b0000;
4'b0001:opelement<=4'b0011;
4'b0010:opelement<=4'b0010;
4'b0011:opelement<=4'b0111;
4'b0100:opelement<=4'b0001;
4'b0101:opelement<=4'b0100;
4'b0110:opelement<=4'b0110;
4'b0111:opelement<=4'b0101;
default:opelement<=4'b0000;
endcase
end
else
begin
op<=4'b0000;
opelement<=4'b0000;
end
end
else if(m==3'd4)
begin
if(prim_poly==5'B10011)
begin
case(a)
4'b0000:GFelement1<=4'b0000;
4'b0001:GFelement1<=4'b1000;
4'b0010:GFelement1<=4'b0100;
4'b0011:GFelement1<=4'b0010;                                           
4'b0100:GFelement1<=4'b0001;
4'b0101:GFelement1<=4'b1100;
4'b0110:GFelement1<=4'b0110;
4'b0111:GFelement1<=4'b0011;
4'b1000:GFelement1<=4'b1101;
4'b1001:GFelement1<=4'b1010;
4'b1010:GFelement1<=4'b0101;
4'b1011:GFelement1<=4'b1110;
4'b1100:GFelement1<=4'b0111;
4'b1101:GFelement1<=4'b1111;
4'b1110:GFelement1<=4'b1011;
4'b1111:GFelement1<=4'b1001;
default:GFelement1<=4'b0000;
endcase
case(b)
4'b0000:GFelement2<=4'b0000;
4'b0001:GFelement2<=4'b1000;
4'b0010:GFelement2<=4'b0100;
4'b0011:GFelement2<=4'b0010;                                           
4'b0100:GFelement2<=4'b0001;
4'b0101:GFelement2<=4'b1100;
4'b0110:GFelement2<=4'b0110;
4'b0111:GFelement2<=4'b0011;
4'b1000:GFelement2<=4'b1101;
4'b1001:GFelement2<=4'b1010;
4'b1010:GFelement2<=4'b0101;
4'b1011:GFelement2<=4'b1110;
4'b1100:GFelement2<=4'b0111;
4'b1101:GFelement2<=4'b1111;
4'b1110:GFelement2<=4'b1011;
4'b1111:GFelement2<=4'b1001;
default:GFelement2<=4'b0000;

endcase
op[3:0]<=GFelement1[3:0]^GFelement2[3:0];
case(op)
4'b0000:opelement<=4'b0000;
4'b0001:opelement<=4'b0100;
4'b0010:opelement<=4'b0011;
4'b0011:opelement<=4'b0111;
4'b0100:opelement<=4'b0010;
4'b0101:opelement<=4'b1010;
4'b0110:opelement<=4'b0110;
4'b0111:opelement<=4'b1100;
4'b1000:opelement<=4'b0001;
4'b1001:opelement<=4'b1111;
4'b1010:opelement<=4'b1001;
4'b1011:opelement<=4'b1110;
4'b1100:opelement<=4'b0101;
4'b1101:opelement<=4'b1000;
4'b1110:opelement<=4'b1011;
4'b1111:opelement<=4'b1101;
default:opelement<=4'b0000;
endcase
end
else if(prim_poly==5'b11001)
begin
case(a)
4'b0000:GFelement1<=4'b0000;
4'b0001:GFelement1<=4'b1000;
4'b0010:GFelement1<=4'b0100;
4'b0011:GFelement1<=4'b0010;                                           
4'b0100:GFelement1<=4'b0001;
4'b0101:GFelement1<=4'b1001;
4'b0110:GFelement1<=4'b1101;
4'b0111:GFelement1<=4'b1111;
4'b1000:GFelement1<=4'b1110;
4'b1001:GFelement1<=4'b0111;
4'b1010:GFelement1<=4'b1010;
4'b1011:GFelement1<=4'b0101;
4'b1100:GFelement1<=4'b1011;
4'b1101:GFelement1<=4'b1100;
4'b1110:GFelement1<=4'b0110;
4'b1111:GFelement1<=4'b0011;
default:GFelement1<=4'b0000;
endcase
case(b)
4'b0000:GFelement2<=4'b0000;
4'b0001:GFelement2<=4'b1000;
4'b0010:GFelement2<=4'b0100;
4'b0011:GFelement2<=4'b0010;                                           
4'b0100:GFelement2<=4'b0001;
4'b0101:GFelement2<=4'b1001;
4'b0110:GFelement2<=4'b1101;
4'b0111:GFelement2<=4'b1111;
4'b1000:GFelement2<=4'b1110;
4'b1001:GFelement2<=4'b0111;
4'b1010:GFelement2<=4'b1010;
4'b1011:GFelement2<=4'b0101;
4'b1100:GFelement2<=4'b1011;
4'b1101:GFelement2<=4'b1100;
4'b1110:GFelement2<=4'b0110;
4'b1111:GFelement2<=4'b0011;
default:GFelement2<=4'b0000;
endcase
op[3:0]<=GFelement1[3:0]^GFelement2[3:0];
case(op)
4'b0000:opelement<=4'b0000;
4'b0001:opelement<=4'b0100;
4'b0010:opelement<=4'b0011;
4'b0011:opelement<=4'b1111;
4'b0100:opelement<=4'b0010;
4'b0101:opelement<=4'b1011;
4'b0110:opelement<=4'b1110;
4'b0111:opelement<=4'b1001;
4'b1000:opelement<=4'b0001;
4'b1001:opelement<=4'b0101;
4'b1010:opelement<=4'b1010;
4'b1011:opelement<=4'b1100;
4'b1100:opelement<=4'b1101;
4'b1101:opelement<=4'b0110;
4'b1110:opelement<=4'b1000;
4'b1111:opelement<=4'b0111;
default:opelement<=4'b0000;
endcase
end
else
begin
op<=4'b0000;
opelement<=4'b0000;
end
end
else
begin
op<=4'bZZZZ;
opelement<=4'bZZZZ;
end
end
endmodule
