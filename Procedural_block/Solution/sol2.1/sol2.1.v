//==============================================================================
// Lab 2.1: The `initial` Block (Solution)
//
// Objective: Use the `initial` block to provide a one-time sequence of
// stimulus, which is perfect for setting up a testbench environment.
//==============================================================================

//-- Lab 2.1: Solution --
module lab2_1_initial_block_solution();
    reg reset;
    reg enable;

    initial begin
        $display("--- Lab 2.1: `initial` Block (Solution) ---");
        $dumpfile("dump.vcd"); $dumpvars;

        // At time 0, set 'reset' to 1 and 'enable' to 0.
        reset = 1;
        enable = 0;

        // After 10 time units, de-assert reset.
        #10 reset = 0;

        // 5 time units later, assert 'enable'.
        #5 enable = 1;

        // After another 20 time units, finish.
        #20 $finish;
    end

    initial begin
        $monitor("Time=%0t, reset = %b, enable = %b", $time, reset, enable);
    end
endmodule
