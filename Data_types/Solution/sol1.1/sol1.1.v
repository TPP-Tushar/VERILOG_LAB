//==============================================================================
// Lab 1: Nets vs. Variables (wire vs. reg) - Solution
//==============================================================================

//-- Lab 1: Solution --
module lab1_nets_vs_vars_solution();

    // Declare a 1-bit register named 'clock_signal'.
    reg clock_signal;

    // Declare a 1-bit wire named 'gate_output'.
    wire gate_output;

    // This `assign` statement continuously drives the 'gate_output' wire.
    assign gate_output = ~clock_signal;

    initial begin
        // Initialize 'clock_signal' to 0.
        clock_signal = 0;
        
        $display("--- Lab 1: Nets vs. Variables (Solution) ---");
        $display("Initial state: clock_signal = %b, gate_output = %b", clock_signal, gate_output);

        // After 10 time units, change the value of 'clock_signal' to 1.
        #10;
        clock_signal = 1;
        
        $display("After 10ns:   clock_signal = %b, gate_output = %b", clock_signal, gate_output);

        #10 $finish;
    end

endmodule
