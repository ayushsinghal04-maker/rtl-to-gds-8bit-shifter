module shifter_8bit (
    input [7:0] data_in,
    input [2:0] shift_amt,
    input dir,             // 0 = left, 1 = right
    input Clock,
    output reg [7:0] data_out
);

// Internal registers
reg [7:0] reg_data;
reg [2:0] reg_shift;
reg reg_dir;
reg [7:0] shifted_val;

// Input latching
always @(posedge Clock) begin
    reg_data <= data_in;
    reg_shift <= shift_amt;
    reg_dir <= dir;
end

// Output latching
always @(posedge Clock) begin
    data_out <= shifted_val;
end

// Shift computation
always @(*) begin
    if (reg_dir == 1'b0)
        shifted_val = reg_data << reg_shift;  // Left shift
    else
        shifted_val = reg_data >> reg_shift;  // Right shift
end

endmodule
