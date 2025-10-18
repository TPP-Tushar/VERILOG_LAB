//==============================================================================
// Lab 2: Vectors - Solution
//==============================================================================

//-- Lab 2: Solution --
module lab2_vectors_solution();

    // Declare an 8-bit register named 'data_bus'.
    reg [7:0] data_bus;
    
    // Declare a 4-bit wire named 'address_bus'.
    wire [3:0] address_bus;

    assign address_bus = 4'hA;

    initial begin
        // Assign the hexadecimal value FF to 'data_bus'.
        data_bus = 8'hFF;
        
        $display("\n--- Lab 2: Vectors (Solution) ---");
        $display("Data Bus (hex): %h", data_bus);
        $display("Address Bus (binary): %b", address_bus);
    end

endmodule
