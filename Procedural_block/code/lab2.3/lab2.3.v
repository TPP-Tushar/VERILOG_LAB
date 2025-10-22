//==============================================================================
// Lab 2.3: The `always @(posedge clk)` Block for Sequential Logic
//
// Objective: Implement a 4-bit synchronous counter using a sequential
// `always @(posedge clk)` block.
//==============================================================================

//-- Lab 2.3: Problem --
module lab2_3_sequential_always_problem(
    output reg [3:0] count,
    input            clk,
    input            reset
);
    // TODO: Write an always block sensitive to the positive edge of 'clk'.
    // Inside the block:
    // 1. If 'reset' is high, the 'count' should be set to 0.
    // 2. Otherwise (else), the 'count' should increment by 1.

endmodule

//-- Lab 2.3: Testbench for Problem --
module tb_lab2_3_problem;
    reg clk = 0;
    reg reset;
    wire [3:0] count;

    lab2_3_sequential_always_problem dut (
        .count(count),
        .clk(clk),
        .reset(reset)
    );

    always #5 clk = ~clk; // 10-unit period clock

    initial begin
        $display("\n--- Lab 2.3: Sequential `always` Testbench (Problem) ---");
        $monitor("Time=%0t, reset=%b, count=%d", $time, reset, count);
        reset = 1;
        #12;
        reset = 0;
        #100;
        $finish;
    end
endmodule
