//==============================================================================
// Lab 3.1: The `for` Loop
//
// Objective: Use a `for` loop to perform a repetitive task, such as
// initializing a memory.
// Note: This module is a testbench itself.
//==============================================================================

//-- Lab 3.1: Problem --
module lab3_1_for_loop_problem();
    reg [7:0] memory [0:15]; // 16 locations, each 8 bits wide
    integer i;

    initial begin
        $display("\n--- Lab 3.1: `for` Loop ---");
        // TODO: Write a `for` loop that iterates from i = 0 to 15.
        // In each iteration, set memory[i] to the value of i.


        // This loop prints the memory contents for verification.
        for (i = 0; i < 16; i = i + 1) begin
            $display("memory[%0d] = %h", i, memory[i]);
        end
        #1 $finish;
    end
endmodule
