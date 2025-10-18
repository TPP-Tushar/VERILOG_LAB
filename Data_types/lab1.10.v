//==============================================================================
// Lab 10: Driving Strengths
//
// Objective: Understand how drive strengths can resolve conflicts when
// multiple drivers are connected to the same net without using wired logic.
// This is an advanced concept primarily for modeling specific hardware.
//==============================================================================

//-- Lab 10: Problem --
module lab10_driving_strengths_problem();
    
    reg val_strong, val_pull;
    
    // TODO 1: Declare a wire named 'contention_wire'.
    
    // TODO 2: Assign 'val_strong' to 'contention_wire' with a 'strong1' and 'strong0' strength.
    // Syntax: assign (strength1, strength0) net = value;
    
    // TODO 3: Assign 'val_pull' to 'contention_wire' with a 'pull1' and 'pull0' strength.
    // A 'strong' driver will override a 'pull' driver.
    
    initial begin
        $display("\n--- Lab 10: Driving Strengths ---");
        $monitor("Time=%2d, strong_driver=%b, pull_driver=%b | wire_value=%b",
                 $time, val_strong, val_pull, contention_wire);
                 
        // Scenario 1: Strong driver is 1, pull driver is 0. Strong wins.
        val_strong = 1; val_pull = 0; #10;
        
        // Scenario 2: Strong driver is 0, pull driver is 1. Strong wins.
        val_strong = 0; val_pull = 1; #10;
    end

endmodule
