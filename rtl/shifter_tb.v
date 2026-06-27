`timescale 1ns / 1ps
`include "shifter_rtl.v" // includes the module definition 

module tb_shifter_8bit;

    reg [7:0] data_in;
    reg [2:0] shift_amt;
    reg dir;
    reg Clock;
    wire [7:0] data_out;

    // Instantiate the design
    shifter_8bit uut (
        .data_in(data_in),
        .shift_amt(shift_amt),
        .dir(dir),
        .Clock(Clock),
        .data_out(data_out)
    );

    // Clock generation
    initial begin
        Clock = 0;
        forever #5 Clock = ~Clock; // 10 ns clock period
    end

    // Test sequence
    initial begin
        // VCD waveform generation
        $fsdbDumpvars();
        $display("Time | DIR | SHIFT_AMT | DATA_IN    | DATA_OUT");
        $monitor("%4t |  %b  |     %d     | %b | %b", $time, dir, shift_amt, data_in, data_out);

        // Test case 1
        data_in = 8'b10110011;
        shift_amt = 3;
        dir = 0;  // Left
        #10;

        // Test case 2
        data_in = 8'b10110011;
        shift_amt = 3;
        dir = 1;  // Right
        #10;

        // Test case 3
        data_in = 8'b11110000;
        shift_amt = 1;
        dir = 0;
        #10;

        // Test case 4
        data_in = 8'b00001111;
        shift_amt = 2;
        dir = 1;
        #10;

        // Test case 5
        data_in = 8'b11001100;
        shift_amt = 7;
        dir = 0;
        #10;

        $finish;
    end

endmodule
