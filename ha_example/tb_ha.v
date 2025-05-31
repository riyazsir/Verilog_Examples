`timescale 1ns / 1ps

module tb_ha;

    // Inputs
    reg a;
    reg b;

    // Outputs
    wire sum;
    wire carry;

    // Instantiate the Half Adder (assuming module name is ha)
    ha uut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    initial begin
        // Enable waveform dump
        $dumpfile("tb_ha.vcd");
        $dumpvars(1, tb_ha);

        // Display header
        $display("a b | sum carry");
        $display("--------------");

        // Test all input combinations
        a = 0; b = 0; #10;
        $display("%b %b |  %b    %b", a, b, sum, carry);

        a = 0; b = 1; #10;
        $display("%b %b |  %b    %b", a, b, sum, carry);

        a = 1; b = 0; #10;
        $display("%b %b |  %b    %b", a, b, sum, carry);

        a = 1; b = 1; #10;
        $display("%b %b |  %b    %b", a, b, sum, carry);

        $finish;
    end

endmodule