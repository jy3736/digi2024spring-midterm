`timescale 1ns / 1ps
`include "top.v"

module test_comb3i2o;
    reg a, b, c;
    wire x, y;
    comb3i2o uut(a, b, c, x, y);

    initial begin
        {a, b, c} = 0;
        #100;

        repeat(100) begin
            {a, b, c} = $urandom_range(0, 7);
            #50;
        end

        #50;
        $finish;
    end

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars();
        $display("Time a b c x y");
        $monitor("%8t %b%b%b %b%b", $time, a, b, c, x, y);
    end

endmodule
