//==============================================================================
// Lab 7: Arrays (Memories)
//
// Objective: Learn how to declare and use arrays, which are essential for
// modeling memories like RAM or ROM.
//==============================================================================

//-- Lab 7: Problem --
module lab7_arrays_problem();

    parameter DATA_WIDTH = 8;
    parameter MEM_DEPTH  = 16;
    parameter ADDR_WIDTH = 4; // 2^4 = 16

    // TODO 1: Declare an array (memory) named 'ram'.
    // It should consist of 'MEM_DEPTH' elements.
    // Each element should be a register of width 'DATA_WIDTH'.

    reg [ADDR_WIDTH-1:0] addr;
    integer i;

    initial begin
        $display("\n--- Lab 7: Arrays (Memories) ---");

        // Write to memory
        for (i = 0; i < MEM_DEPTH; i = i + 1) begin
            // TODO 2: Write a value to each memory location.
            // For location 'i', write the value (i * 10).
            
        end
        
        // Read from memory
        addr = 5;
        #1;
        
        // TODO 3: Display the value read from memory at 'addr' 5.
        // The expected value is 50.
        $display("Value at address %d is %d", addr, 0 /* Replace 0 with read value */);
        
        addr = 10;
        #1;
        $display("Value at address %d is %d", addr, ram[addr]);
    end

endmodule
