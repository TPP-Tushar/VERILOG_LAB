//==============================================================================
// Lab 4.1: Priority Logic with `if-else`
//
// Objective: Build a 4-to-2 priority encoder where the highest-numbered
// input has the highest priority.
//==============================================================================

//-- Lab 4.1: Problem --
module lab4_1_priority_encoder_problem(
    output reg [1:0] encoded_out,
    output reg       valid,
    input [3:0]      in
);
    always @(*) begin
        // TODO: Write a nested if-else-if structure to implement priority logic.
        // - If in[3] is high, set encoded_out to 3.
        // - Else if in[2] is high, set encoded_out to 2.
        // - Else if in[1] is high, set encoded_out to 1.
        // - Else if in[0] is high, set encoded_out to 0.
        // - Else, this is the default case.
        //
        // Also set 'valid' high if ANY input bit is high.
        // Hint: Assign default values to outputs at the start of the block.
    end
endmodule

//-- Lab 4.1: Testbench for Problem --
module tb_lab4_1_problem;
    reg [3:0] in;
    wire [1:0] encoded_out;
    wire valid;

    lab4_1_priority_encoder_problem dut (
        .encoded_out(encoded_out),
        .valid(valid),
        .in(in)
    );

    initial begin
        $display("\n--- Lab 4.1: Priority Encoder Testbench (Problem) ---");
        $monitor("Time=%0t, in=%b -> valid=%b, encoded_out=%d", $time, in, valid, encoded_out);
        in = 4'b0000;
        #10 in = 4'b0001;
        #10 in = 4'b0010;
        #10 in = 4'b0100;
        #10 in = 4'b1000;
        #10 in = 4'b1010; // in[3] has priority
        #10 in = 4'b0101; // in[2] has priority
        #10 in = 4'b0011; // in[1] has priority
        #10 $finish;
    end
endmodule
