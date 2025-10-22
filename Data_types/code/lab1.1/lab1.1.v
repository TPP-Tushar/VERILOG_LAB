//==============================================================================
// Lab 1: Nets vs. Variables (wire vs. reg)
//
// Objective: Understand the fundamental difference between a `wire` (a
// connection) and a `reg` (a data storage element). `wire` needs a
// continuous driver, while `reg` holds a value and is used in procedural blocks.
//==============================================================================

//-- Lab 1: Problem --
module lab1_nets_vs_vars_problem();

    // TODO 1: Declare a 1-bit register named 'clock_signal'.
    // Registers are used to store values within procedural blocks (like initial/always).

    // TODO 2: Declare a 1-bit wire named 'gate_output'.
    // Wires are used to connect different elements together.

    // This `assign` statement continuously drives the 'gate_output' wire.
    // It represents a simple NOT gate.
    assign gate_output = ~clock_signal;

    initial begin
        // TODO 3: Initialize 'clock_signal' to 0.
        
        $display("--- Lab 1: Nets vs. Variables ---");
        $display("Initial state: clock_signal = %b, gate_output = %b", clock_signal, gate_output);

        // TODO 4: After 10 time units, change the value of 'clock_signal' to 1.
        #10;
        
        $display("After 10ns:   clock_signal = %b, gate_output = %b", clock_signal, gate_output);
        
        #10;
    end

endmodule
