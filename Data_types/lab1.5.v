//==============================================================================
// Lab 5: Signed Numbers
//
// Objective: Understand how to declare signed variables and perform signed
// arithmetic.
//==============================================================================

//-- Lab 5: Problem --
module lab5_signed_numbers_problem();

    reg [7:0] unsigned_val;
    
    // TODO 1: Declare an 8-bit SIGNED register named 'signed_val'.

    initial begin
        unsigned_val = 8'd255; // Represents -1 in 8-bit 2's complement
        
        // TODO 2: Assign the same bit pattern (8'd255) to 'signed_val'.
        
        $display("\n--- Lab 5: Signed Numbers ---");
        $display("Unsigned value as decimal: %d", unsigned_val);
        
        // TODO 3: Display 'signed_val' as a signed decimal. Use the %d format specifier.
        // What do you expect the output to be?
        
        // Signed arithmetic
        // TODO 4: Add -5 (8'hFB) and 3 (8'h03) using signed_val and display the result.
        signed_val = 8'hFB + 8'h03;
        #1;
        $display("Signed addition (-5 + 3) = %d", signed_val);
    end

endmodule
