//==============================================================================
// Lab 4: integer, real, and time
//
// Objective: Use high-level data types for simulation purposes, like loop
// counters, floating-point calculations, and time storage.
//==============================================================================

//-- Lab 4: Problem --
module lab4_abstract_types_problem();

    // TODO 1: Declare an integer variable 'loop_counter' for use in a for-loop.
    
    // TODO 2: Declare a real variable 'voltage' to store a floating-point number.

    // TODO 3: Declare a time variable 'start_time' to store a simulation time.

    initial begin
        // TODO 4: Assign the value 1.25 to 'voltage'.
        
        // TODO 5: Capture the current simulation time into 'start_time' using $time.
        
        $display("\n--- Lab 4: integer, real, and time ---");
        $display("Simulation started at: %t", start_time);
        $display("Initial voltage: %f V", voltage);

        // A loop that uses the integer variable
        for (loop_counter = 0; loop_counter < 3; loop_counter = loop_counter + 1) begin
            #5;
            $display("At time %t, loop iteration %d", $time, loop_counter);
        end
    end

endmodule
