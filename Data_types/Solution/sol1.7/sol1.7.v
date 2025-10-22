//==============================================================================
// Lab 7: Arrays (Memories) - Solution
//==============================================================================

//-- Lab 7: Solution --
module lab7_arrays_solution();

    parameter DATA_WIDTH = 8;
    parameter MEM_DEPTH  = 16;
    parameter ADDR_WIDTH = 4;

    // Declare an array (memory) named 'ram'.
    reg [DATA_WIDTH-1:0] ram [0:MEM_DEPTH-1];

    reg [ADDR_WIDTH-1:0] addr;
    integer i;

    initial begin
        $display("\n--- Lab 7: Arrays (Memories) (Solution) ---");

        // Write to memory
        for (i = 0; i < MEM_DEPTH; i = i + 1) begin
            // Write the value (i * 10) to location 'i'.
            ram[i] = i * 10;
        end
        
        // Read from memory
        addr = 5;
        #1;
        
        // Display the value read from memory at 'addr' 5.
        $display("Value at address %d is %d", addr, ram[addr]);
        
        addr = 10;
        #1;
        $display("Value at address %d is %d", addr, ram[addr]);
    end

endmodule
