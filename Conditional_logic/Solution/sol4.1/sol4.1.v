//==============================================================================
// Lab 4.1: Priority Logic with `if-else` (Solution)
//
// Objective: Build a 4-to-2 priority encoder.
//==============================================================================

//-- Lab 4.1: Solution --
module lab4_1_priority_encoder_solution(
    output reg [1:0] encoded_out,
    output reg       valid,
    input [3:0]      in
);
    always @(*) begin
        // Assign default values first to avoid latches
        encoded_out = 2'b0;
        valid = 1'b0;

        if (in[3]) begin
            encoded_out = 2'd3;
            valid = 1'b1;
        end
        else if (in[2]) begin
            encoded_out = 2'd2;
            valid = 1'b1;
        end
        else if (in[1]) begin
            encoded_out = 2'd1;
            valid = 1'b1;
        end
        else if (in[0]) begin
            encoded_out = 2'd0;
            valid = 1'b1;
        end
    end
endmodule

//-- Lab 4.1: Testbench for Solution --
module tb_lab4_1_solution;
    reg [3:0] in;
    wire [1:0] encoded_out;
    wire valid;

    lab4_1_priority_encoder_solution dut (
        .encoded_out(encoded_out),
        .valid(valid),
        .in(in)
    );

    initial begin
        $display("\n--- Lab 4.1: Priority Encoder Testbench (Solution) ---");
        $monitor("Time=%0t, in=%b -> valid=%b, encoded_out=%d", $time, in, valid, encoded_out);
        in = 4'b0000;
        #10 in = 4'b0001;
        #10 in = 4'b0010;
        #10 in = 4'b0100;
        #10 in = 4'b1000;
        #10 in = 4'b1010;
        #10 in = 4'b0101;
        #10 in = 4'b0011;
        #10 $finish;
    end
endmodule
