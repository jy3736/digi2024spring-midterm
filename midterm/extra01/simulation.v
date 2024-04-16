`timescale 1ns / 1ps
`include "top.v"

module tb_myfilter;

reg a, b, c, d;

wire w, x, y, z;
wire _w, _x, _y, _z;
wire [3:0] st;
assign st = {w, x, y, z};

myfilter uut (.a(a), .b(b), .c(c), .d(d), .w(w), .x(x), .y(y), .z(z));

initial begin
    {a, b, c, d} = 4'b0000;
    #100;

    repeat (100) begin
        {a, b, c, d} = {$random};
        #50;
    end

    #50
    $finish;
end

initial begin
    $dumpfile("wave.vcd");
    $dumpvars();
    $display("Time a b c d w x y z");
    $monitor("%8t %b%b%b%b %b", $time, a, b, c, d, st);
end

endmodule
