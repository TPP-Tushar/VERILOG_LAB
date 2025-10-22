//==============================================================================
// Lab 3.2: `forever` and `repeat` Loops (Solution)
//
// Objective: Use `forever` to generate a clock and `repeat` to wait for
// a number of clock cycles.
//==============================================================================

//-- Lab 3.2: Solution --
module lab3_2_forever_repeat_solution();
    reg clk = 0;
    reg enable = 0;

    // `forever` loop for clock generation
    initial begin
        forever #5 clk = ~clk;
    end

    initial begin
        $display("\n--- Lab 3.2: `forever` and `repeat` (Solution) ---");
        #15;
        enable = 1;

        // `repeat` loop to wait for 8 clock cycles
        repeat(8) @(posedge clk);

        $display("8 clock cycles have passed at time %0t. Disabling.", $time);
        enable = 0;
        #20 $finish;
    end

    initial $monitor("Time=%0t, clk=%b, enable=%b", $time, clk, enable);
endmodule
