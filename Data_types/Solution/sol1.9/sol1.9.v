//==============================================================================
// Lab 9: Special Net Types (tri, wand, wor) - Solution
//==============================================================================

//-- Lab 9: Solution --
module lab9_special_nets_solution();
    
    reg driver_a, driver_b;
    reg enable_a, enable_b;

    // Declare a tri-state wire.
    tri tri_bus;
    
    // Declare a wired-AND net.
    wand wand_bus;
    
    // Declare a wired-OR net.
    wor wor_bus;

    assign tri_bus = (enable_a) ? driver_a : 1'bz;
    assign tri_bus = (enable_b) ? driver_b : 1'bz;
    
    assign wand_bus = driver_a;
    assign wand_bus = driver_b;
    assign wor_bus  = driver_a;
    assign wor_bus  = driver_b;
    
    initial begin
        $display("\n--- Lab 9: Special Net Types (Solution) ---");
        $monitor("Time: %2d, A=%b, enA=%b, B=%b, enB=%b | tri=%b, wand=%b, wor=%b",
                 $time, driver_a, enable_a, driver_b, enable_b, tri_bus, wand_bus, wor_bus);
        
        // Scenario 1: A=1, B=Z -> tri=1
        driver_a=1; enable_a=1; driver_b=0; enable_b=0; #10;
        
        // Scenario 2: A=Z, B=0 -> tri=0
        driver_a=1; enable_a=0; driver_b=0; enable_b=1; #10;
        
        // Scenario 3: A=1, B=0 -> contention, tri=X
        // wand = 1 & 0 = 0
        // wor = 1 | 0 = 1
        driver_a=1; enable_a=1; driver_b=0; enable_b=1; #10;
    end

endmodule
