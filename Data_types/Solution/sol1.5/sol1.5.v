//==============================================================================
// Lab 5: Signed Numbers - Solution
//==============================================================================

//-- Lab 5: Solution --
module lab5_signed_numbers_solution();

    reg [7:0] unsigned_val;
    
    // Declare an 8-bit SIGNED register named 'signed_val'.
    reg signed [7:0] signed_val;

    initial begin
        unsigned_val = 8'd255;
        
        // Assign the same bit pattern (8'd255) to 'signed_val'.
        signed_val = 8'd255; // Verilog interprets this as -1 due to the 'signed' type
        
        $display("\n--- Lab 5: Signed Numbers (Solution) ---");
        $display("Unsigned value as decimal: %d", unsigned_val);
        
        // Display 'signed_val' as a signed decimal.
        $display("Signed value as decimal:   %d", signed_val); // Expect -1
        
        // Signed arithmetic
        signed_val = 8'hFB + 8'h03;
        #1;
        $display("Signed addition (-5 + 3) = %d", signed_val); // Expect -2
    end

endmodule
