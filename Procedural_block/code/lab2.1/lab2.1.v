//==============================================================================
// Lab 2.1: The `initial` Block
//
// Objective: Use the `initial` block to provide a one-time sequence of
// stimulus, which is perfect for setting up a testbench environment.
// Note: This module is a testbench itself.
//==============================================================================

//-- Lab 2.1: Problem --
module lab2_1_initial_block_problem();
    reg reset;
    reg enable;

    initial begin
        $display("--- Lab 2.1: `initial` Block ---");
        $dumpfile("dump.vcd"); $dumpvars;

        // TODO 1: At time 0, set 'reset' to 1 and 'enable' to 0.

        // TODO 2: After 10 time units, de-assert reset (set it to 0).

        // TODO 3: 5 time units after de-asserting reset, assert 'enable' (set it to 1).

        // TODO 4: After another 20 time units, finish the simulation using `$finish`.

    end

    // This block just monitors the signals for you.
    initial begin
        $monitor("Time=%0t, reset = %b, enable = %b", $time, reset, enable);
    end
endmodule
