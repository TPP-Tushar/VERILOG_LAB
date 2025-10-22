//==============================================================================
// Lab 6.2: Reusable Procedures with a `task`
//
// Objective: Create a `task` to define a reusable procedure that can include
// timing delays, making it ideal for modeling bus protocols in a testbench.
// Note: This module is a testbench itself.
//==============================================================================

//-- Lab 6.2: Problem --
module lab6_2_task_problem();
    reg [7:0] address, data_out;
    reg write_en;

    // TODO 1: Define a task named `write_cycle`.
    // It should have two inputs: an 8-bit `addr_in` and an 8-bit `data_in`.
    // Inside the task:
    // 1. Wait for 2 time units.
    // 2. Assign `addr_in` to the `address` signal.
    // 3. Assign `data_in` to the `data_out` signal.
    // 4. Set `write_en` high.
    // 5. Wait for 10 time units (the duration of the write pulse).
    // 6. Set `write_en` low.
    

    initial begin
        $display("\n--- Lab 6.2: `task` ---");
        write_en = 0; // Initialize
        // TODO 2: Call the `write_cycle` task two times with different values.
        // First call: address 8'h10, data 8'hAA
        // Second call: address 8'h2A, data 8'hF0
        
        #20 $finish;
    end

    initial $monitor("Time=%0t Addr=%h Data=%h WR=%b", $time, address, data_out, write_en);
endmodule
