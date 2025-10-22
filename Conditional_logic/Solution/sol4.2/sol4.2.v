//==============================================================================
// Lab 4.2: Avoiding Inferred Latches with `if-else` (Solution)
//
// Objective: Fix an incomplete `if-else` to prevent latch inference.
//==============================================================================

//-- Lab 4.2: Solution --
module lab4_2_latch_solution(
    output reg y,
    input      a,
    input      enable
);
    // To fix the latch, we ensure 'y' is assigned a value in all possible
    // code paths within the always block.
    always @(*) begin
        if (enable) begin
            y = a;
        end
        // The final `else` completes the logic.
        else begin
            y = 1'b0;
        end
    end
endmodule

//-- Lab 4.2: Testbench for Solution --
module tb_lab4_2_solution;
    reg a, enable;
    wire y;

    lab4_2_latch_solution dut (.y(y), .a(a), .enable(enable));

    initial begin
        $display("\n--- Lab 4.2: Latch Testbench (Solution) ---");
        $monitor("Time=%0t, enable=%b, a=%b -> y=%b", $time, enable, a, y);
        enable = 1; a = 0;
        #10 a = 1;
        #10 enable = 0; // 'y' now goes to its default value (0)
        #10 a = 0;
        #10 enable = 1;
        #10 $finish;
    end
endmodule
