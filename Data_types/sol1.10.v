//==============================================================================
// Lab 10: Driving Strengths - Solution
//==============================================================================

//-- Lab 10: Solution --
module lab10_driving_strengths_solution();
    
    reg val_strong, val_pull;
    
    // Declare a wire named 'contention_wire'.
    wire contention_wire;
    
    // Assign 'val_strong' with a 'strong' strength.
    assign (strong1, strong0) contention_wire = val_strong;
    
    // Assign 'val_pull' with a 'pull' strength.
    assign (pull1, pull0) contention_wire = val_pull;
    
    initial begin
        $display("\n--- Lab 10: Driving Strengths (Solution) ---");
        $monitor("Time=%2d, strong_driver=%b, pull_driver=%b | wire_value=%b",
                 $time, val_strong, val_pull, contention_wire);
                 
        // Strong driver is 1, pull driver is 0. Wire should be 1.
        val_strong = 1; val_pull = 0; #10;
        
        // Strong driver is 0, pull driver is 1. Wire should be 0.
        val_strong = 0; val_pull = 1; #10;
    end

endmodule
