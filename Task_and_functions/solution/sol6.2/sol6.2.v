//==============================================================================
// Lab 6.2: Reusable Procedures with a `task` (Solution)
//
// Objective: Create a `task` to define a reusable procedure that includes
// timing delays.
//==============================================================================

//-- Lab 6.2: Solution --
module lab6_2_task_solution();
    reg [7:0] address, data_out;
    reg write_en;

    // A task can have inputs, outputs, and inouts.
    // It can include timing controls.
    task write_cycle (input [7:0] addr_in, input [7:0] data_in);
        begin
            #2;
            address = addr_in;
            data_out = data_in;
            write_en = 1;
            #10; // Write pulse duration
            write_en = 0;
        end
    endtask

    initial begin
        $display("\n--- Lab 6.2: `task` (Solution) ---");
        write_en = 0;

        // Call the task multiple times
        write_cycle(8'h10, 8'hAA);
        write_cycle(8'h2A, 8'hF0);
        
        #20 $finish;
    end

    initial $monitor("Time=%0t Addr=%h Data=%h WR=%b", $time, address, data_out, write_en);
endmodule
