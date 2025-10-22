//==============================================================================
// Lab 4.2: Avoiding Inferred Latches with `if-else`
//
// Objective: Understand how an incomplete `if-else` can unintentionally
// create a latch, and learn how to prevent it.
//==============================================================================

//-- Lab 4.2: Problem --
module lab4_2_latch_problem(
    output reg y,
    input      a,
    input      enable
);
    // This code has a problem. If 'enable' is 0, 'y' is not assigned a value.
    // In hardware, this means 'y' must hold its previous value, which creates a latch.
    // Synthesis tools will produce a warning for this.
    always @(*) begin
        if (enable) begin
            y = a;
        end
        // TODO: Add an `else` condition to assign a default value to 'y'
        // when 'enable' is 0. This ensures 'y' is always assigned,
        // describing purely combinational logic. For example, set y to 0.
    end
endmodule

//-- Lab 4.2: Testbench for Problem --
module tb_lab4_2_problem;
    reg a, enable;
    wire y;

    lab4_2_latch_problem dut (.y(y), .a(a), .enable(enable));

    initial begin
        $display("\n--- Lab 4.2: Latch Testbench (Problem) ---");
        $monitor("Time=%0t, enable=%b, a=%b -> y=%b", $time, enable, a, y);
        enable = 1; a = 0;
        #10 a = 1;
        #10 enable = 0; // 'y' will now hold its value (1), showing a latch
        #10 a = 0;      // 'y' remains 1 because enable is low
        #10 enable = 1; // 'y' now follows 'a' again
        #10 $finish;
    end
endmodule
