//==============================================================================
// Lab 5.1: Parallel Logic with `case` (Solution)
//
// Objective: Build a 4-to-1 multiplexer using a `case` statement.
//==============================================================================

//-- Lab 5.1: Solution --
module lab5_1_case_mux_solution(
    output reg [7:0] out,
    input [7:0]      in0, in1, in2, in3,
    input [1:0]      sel
);
    always @(*) begin
        case(sel)
            2'd0: out = in0;
            2'd1: out = in1;
            2'd2: out = in2;
            2'd3: out = in3;
            default: out = 8'h00;
        endcase
    end
endmodule

//-- Lab 5.1: Testbench for Solution --
module tb_lab5_1_solution;
    reg [7:0] in0, in1, in2, in3;
    reg [1:0] sel;
    wire [7:0] out;

    lab5_1_case_mux_solution dut(.*);

    initial begin
        $display("\n--- Lab 5.1: `case` MUX Testbench (Solution) ---");
        $monitor("Time=%0t, sel=%d -> out=%h", $time, sel, out);
        in0=8'hAA; in1=8'hB1; in2=8'hC2; in3=8'hD3;
        sel = 0;
        #10 sel = 1;
        #10 sel = 2;
        #10 sel = 3;
        #10 $finish;
    end
endmodule
