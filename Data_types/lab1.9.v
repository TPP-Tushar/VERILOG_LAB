//==============================================================================
// Lab 9: Special Net Types (tri, wand, wor)
//
// Objective: Learn about special-purpose nets used to model specific hardware
// behaviors like tri-state buffers and wired logic.
//==============================================================================

//-- Lab 9: Problem --
module lab9_special_nets_problem();
    
    reg driver_a, driver_b;
    reg enable_a, enable_b;

    // TODO 1: Declare a tri-state wire named 'tri_bus'. A 'tri' net can be
    // driven by multiple sources and can be in a high-impedance state 'z'.
    
    // TODO 2: Declare a wired-AND net named 'wand_bus'. If multiple drivers
    // are active, the result is a bitwise AND of their values.
    
    // TODO 3: Declare a wired-OR net named 'wor_bus'. If multiple drivers
    // are active, the result is a bitwise OR.

    // Tri-state buffer assignments
    assign tri_bus = (enable_a) ? driver_a : 1'bz;
    assign tri_bus = (enable_b) ? driver_b : 1'bz;
    
    // Wired logic assignments
    assign wand_bus = driver_a;
    assign wand_bus = driver_b;
    assign wor_bus  = driver_a;
    assign wor_bus  = driver_b;
    
    initial begin
        $display("\n--- Lab 9: Special Net Types ---");
        $monitor("Time: %2d, A=%b, enA=%b, B=%b, enB=%b | tri=%b, wand=%b, wor=%b",
                 $time, driver_a, enable_a, driver_b, enable_b, tri_bus, wand_bus, wor_bus);
        
        // Scenario 1: Driver A active
        driver_a=1; enable_a=1; driver_b=0; enable_b=0; #10;
        
        // Scenario 2: Driver B active
        driver_a=1; enable_a=0; driver_b=0; enable_b=1; #10;
        
        // Scenario 3: Bus contention (Both drivers active)
        driver_a=1; enable_a=1; driver_b=0; enable_b=1; #10;
    end

endmodule
