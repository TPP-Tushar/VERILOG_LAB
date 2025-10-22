//==============================================================================
// Lab 3: Part-Selects & Bit-Selects - Solution
//==============================================================================

//-- Lab 3: Solution --
module lab3_part_selects_solution();

    reg [15:0] instruction_reg;
    
    // Declare a 4-bit wire named 'opcode'.
    wire [3:0] opcode;
    
    // Declare a 1-bit wire named 'enable_bit'.
    wire enable_bit;

    // Connect 'opcode' to the upper 4 bits of 'instruction_reg'.
    assign opcode = instruction_reg[15:12];
    
    // Connect 'enable_bit' to the LSB of 'instruction_reg'.
    assign enable_bit = instruction_reg[0];

    initial begin
        instruction_reg = 16'hBEEF;

        #1;
        
        $display("\n--- Lab 3: Part-Selects & Bit-Selects (Solution) ---");
        $display("Full Instruction: %h", instruction_reg);
        $display("Opcode (bits 15-12): %h", opcode);
        $display("Enable Bit (bit 0): %b", enable_bit);
    end

endmodule
