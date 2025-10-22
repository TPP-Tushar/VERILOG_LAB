//==============================================================================
// Lab 8: Strings - Solution
//==============================================================================

//-- Lab 8: Solution --
module lab8_strings_solution();

    // Declare a register for a 12-character string.
    reg [12*8-1:0] message;

    initial begin
        // Assign the string to the 'message' register.
        message = "Hello World!";
        
        #1;
        $display("\n--- Lab 8: Strings (Solution) ---");

        // Display the string using the %s format specifier.
        $display("The stored message is: %s", message);
    end

endmodule
