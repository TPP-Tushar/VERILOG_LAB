//==============================================================================
// Lab 3.2: `forever` and `repeat` Loops
//
// Objective: Use testbench-specific loops to generate periodic signals
// (`forever`) and wait for a specific number of events (`repeat`).
// Note: This module is a testbench itself.
//==============================================================================

//-- Lab 3.2: Problem --
module lab3_2_forever_repeat_problem();
    reg clk = 0;
    reg enable = 0;

    // TODO 1: Write an initial block with a `forever` loop to make 'clk'
    // toggle every 5 time units, creating a clock with a period of 10.

    initial begin
        $display("\n--- Lab 3.2: `forever` and `repeat` ---");
        // Wait for 15 time units to let the clock run
        #15;
        enable = 1;

        // TODO 2: Use a `repeat` loop to wait for 8 positive clock edges.
        
        $display("8 clock cycles have passed at time %0t. Disabling.", $time);
        enable = 0;
        #20 $finish;
    end

    initial $monitor("Time=%0t, clk=%b, enable=%b", $time, clk, enable);
endmodule
