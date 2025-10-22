    //==============================================================================
// Lab 5.1: Parallel Logic with `case`
//
// Objective: Build a 4-to-1 multiplexer using a `case` statement, which is
// ideal for selecting one of several parallel data paths.
//==============================================================================

//-- Lab 5.1: Problem --
module lab5_1_case_mux_problem(
    output reg [7:0] out,
    input [7:0]      in0, in1, in2, in3,
    input [1:0]      sel
);
    always @(*) begin
        // TODO: Write a `case` statement that is sensitive to 'sel'.
        // - If sel is 0, out = in0.
        // - If sel is 1, out = in1.
        // - If sel is 2, out = in2.
        // - If sel is 3, out = in3.
        // - Provide a `default` case that assigns out to 8'h00.
    end
endmodule

//-- Lab 5.1: Testbench for Problem --
module tb_lab5_1_problem;
    reg [7:0] in0, in1, in2, in3;
    reg [1:0] sel;
    wire [7:0] out;

    lab5_1_case_mux_problem dut(.*);

    initial begin
        $display("\n--- Lab 5.1: `case` MUX Testbench (Problem) ---");
        $monitor("Time=%0t, sel=%d -> out=%h", $time, sel, out);
        in0=8'hAA; in1=8'hB1; in2=8'hC2; in3=8'hD3;
        sel = 0;
        #10 sel = 1;
        #10 sel = 2;
        #10 sel = 3;
        #10 $finish;
    end
endmodule
