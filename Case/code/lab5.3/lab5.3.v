//==============================================================================
// Lab 5.3: Handling "Don't Cares" with `casex`
//
// Objective: Use `casex` to simplify logic by matching bit patterns that
// contain "don't care" (`x` or `z`) bits.
//==============================================================================

//-- Lab 5.3: Problem --
module lab5_3_casex_problem(
    output reg [1:0] instr_type,
    input [3:0]      opcode
);
    // Define instruction types
    parameter TYPE_A = 2'b01;
    parameter TYPE_B = 2'b10;
    parameter TYPE_C = 2'b11;
    parameter TYPE_UNKNOWN = 2'b00;

    always @(*) begin
        // TODO: Use a `casex` statement to decode the opcode.
        // `x` is a "don't care" and will match any value (0, 1, z, x).
        // - Opcode '10xx' is TYPE_A.
        // - Opcode '010x' is TYPE_B.
        // - Opcode '0011' is TYPE_C.
        // - Default is TYPE_UNKNOWN.

    end
endmodule

//-- Lab 5.3: Testbench for Problem --
module tb_lab5_3_problem;
    reg [3:0] opcode;
    wire [1:0] instr_type;

    lab5_3_casex_problem dut(.*);

    initial begin
        $display("\n--- Lab 5.3: `casex` Testbench (Problem) ---");
        $monitor("Time=%0t, opcode=%b -> instr_type=%b", $time, opcode, instr_type);
        opcode = 4'b1000; // Type A
        #10 opcode = 4'b1011; // Type A
        #10 opcode = 4'b0100; // Type B
        #10 opcode = 4'b0101; // Type B
        #10 opcode = 4'b0011; // Type C
        #10 opcode = 4'b1111; // Unknown
        #10 $finish;
    end
endmodule

