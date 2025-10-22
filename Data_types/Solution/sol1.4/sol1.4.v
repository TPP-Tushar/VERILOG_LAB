//==============================================================================
// Lab 4: integer, real, and time - Solution
//==============================================================================

//-- Lab 4: Solution --
module lab4_abstract_types_solution();

    // Declare an integer variable 'loop_counter'.
    integer loop_counter;
    
    // Declare a real variable 'voltage'.
    real voltage;

    // Declare a time variable 'start_time'.
    time start_time;

    initial begin
        // Assign the value 1.25 to 'voltage'.
        voltage = 1.25;
        
        // Capture the current simulation time into 'start_time'.
        start_time = $time;
        
        $display("\n--- Lab 4: integer, real, and time (Solution) ---");
        $display("Simulation started at: %t", start_time);
        $display("Initial voltage: %f V", voltage);

        for (loop_counter = 0; loop_counter < 3; loop_counter = loop_counter + 1) begin
            #5;
            $display("At time %t, loop iteration %d", $time, loop_counter);
        end
    end

endmodule
