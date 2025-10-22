//==============================================================================
// Lab 2.3: The `always @(posedge clk)` Block for Sequential Logic (Solution)
//
// Objective: Implement a 4-bit synchronous counter.
//==============================================================================

//-- Lab 2.3: Solution --
module lab2_3_sequential_always_solution(
    output reg [3:0] count,
    input            clk,
    input            reset
);
    always @(posedge clk) begin
        if (reset) begin
            count <= 4'b0;
        end
        else begin
            count <= count + 1;
        end
    end
endmodule

//-- Lab 2.3: Testbench for Solution --
module tb_lab2_3_solution;
    reg clk = 0;
    reg reset;
    wire [3:0] count;

    lab2_3_sequential_always_solution dut (
        .count(count),
        .clk(clk),
        .reset(reset)
    );

    always #5 clk = ~clk;

    initial begin
        $display("\n--- Lab 2.3: Sequential `always` Testbench (Solution) ---");
        $monitor("Time=%0t, reset=%b, count=%d", $time, reset, count);
        reset = 1;
        #12;
        reset = 0;
        #100;
        $finish;
    end
endmodule
