//==============================================================================
// Lab 2: Vectors
//
// Objective: Learn to declare and use multi-bit variables (vectors) to
// represent data buses or groups of signals.
//==============================================================================

//-- Lab 2: Problem --
module lab2_vectors_problem();

    // TODO 1: Declare an 8-bit register named 'data_bus'. The bits should be indexed from 7 down to 0.
    
    // TODO 2: Declare a 4-bit wire named 'address_bus'.

    // Driving the address bus with a constant value.
    assign address_bus = 4'hA; // Hexadecimal A (1010 in binary)

    initial begin
        // TODO 3: Assign the hexadecimal value FF to 'data_bus'.
        
        $display("\n--- Lab 2: Vectors ---");
        $display("Data Bus (hex): %h", data_bus);
        $display("Address Bus (binary): %b", address_bus);
    end

endmodule
