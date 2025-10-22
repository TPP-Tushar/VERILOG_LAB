//==============================================================================
// Lab 3: Part-Selects & Bit-Selects
//
// Objective: Learn how to access individual bits or a range of bits (a slice)
// within a vector.
//==============================================================================

//-- Lab 3: Problem --
module lab3_part_selects_problem();

    reg [15:0] instruction_reg;
    
    // TODO 1: Declare a 4-bit wire named 'opcode'.
    // TODO 2: Declare a 1-bit wire named 'enable_bit'.

    // TODO 3: Use a continuous assignment to connect 'opcode' to the upper 4 bits
    // of 'instruction_reg' (bits 15 down to 12). This is a part-select.
    
    // TODO 4: Use a continuous assignment to connect 'enable_bit' to the least
    // significant bit (LSB) of 'instruction_reg' (bit 0). This is a bit-select.

    initial begin
        // Assign a value to the instruction register.
        instruction_reg = 16'hBEEF; // B=1011, E=1110, E=1110, F=1111

        #1; // Allow time for wires to settle
        
        $display("\n--- Lab 3: Part-Selects & Bit-Selects ---");
        $display("Full Instruction: %h", instruction_reg);
        $display("Opcode (bits 15-12): %h", opcode);
        $display("Enable Bit (bit 0): %b", enable_bit);
    end

endmodule
