//==============================================================================
// Lab 8: Strings
//
// Objective: Understand that strings are stored in registers and learn how
// to declare and use them, primarily for messages in simulation.
//==============================================================================

//-- Lab 8: Problem --
module lab8_strings_problem();

    // A string is an array of characters. Each character is 8 bits (ASCII).
    // A register to hold a 12-character string needs to be 12 * 8 = 96 bits wide.
    
    // TODO 1: Declare a register named 'message' that is wide enough to hold
    // the string "Hello World!". (12 characters).

    initial begin
        // TODO 2: Assign the string "Hello World!" to the 'message' register.
        
        #1;
        $display("\n--- Lab 8: Strings ---");

        // TODO 3: Display the string using the %s format specifier.
        
    end

endmodule
