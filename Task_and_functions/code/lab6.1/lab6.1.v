//==============================================================================
// Lab 6.1: Reusable Calculations with a `function`
//
// Objective: Create a `function` to perform a combinational calculation
// (XOR parity) that can be reused easily. Functions must execute in zero time.
// Note: This module is a testbench itself.
//==============================================================================

//-- Lab 6.1: Problem --
module lab6_1_function_problem();
    reg [7:0] data_bus;
    reg       parity_bit;

    // TODO 1: Define a function named `calculate_parity`.
    // It should have one 8-bit input, `data_in`.
    // It should return a single bit.
    // Inside the function, use a for loop to XOR all the bits of `data_in`.
    // The final result is the return value of the function.
    // The function name itself acts as the return value register.
    // E.g., `calculate_parity = result;`
    

    initial begin
        $display("\n--- Lab 6.1: `function` ---");
        data_bus = 8'hA5; // 10100101 -> has 4 ones, parity should be 0
        
        // TODO 2: Call the function with `data_bus` as the argument and
        // assign the result to `parity_bit`.
        
        #1 $display("Data = %b, Parity = %b", data_bus, parity_bit);

        data_bus = 8'h53; // 01010011 -> has 5 ones. Parity should be 1.
        
        // parity_bit = calculate_parity(data_bus); // This line needs the function to exist
        #1 $display("Data = %b, Parity = %b", data_bus, parity_bit);
        #1 $finish;
    end

endmodule
