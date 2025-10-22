//==============================================================================
// Lab 5.3: Handling "Don't Cares" with `casex` (Solution)
//
// Objective: Use `casex` to simplify logic by matching bit patterns.
//==============================================================================

//-- Lab 5.3: Solution --
module lab5_3_casex_solution(
    output reg [1:0] instr_type,
    input [3:0]      opcode
);
    parameter TYPE_A = 2'b01;
    parameter TYPE_B = 2'b10;
    parameter TYPE_C = 2'b11;
    parameter TYPE_UNKNOWN = 2'b00;

    always @(*) begin
        casex (opcode)
            4'b10xx: instr_type = TYPE_A;
            4'b010x: instr_type = TYPE_B;
            4'b0011: instr_type = TYPE_C;
            default: instr_type = TYPE_UNKNOWN;
        endcase
    end
endmodule

//-- Lab 5.3: Testbench for Solution --
module tb_lab5_3_solution;
    reg [3:0] opcode;
    wire [1:0] instr_type;

    lab5_3_casex_solution dut(.*);

    initial begin
        $display("\n--- Lab 5.3: `casex` Testbench (Solution) ---");
        $monitor("Time=%0t, opcode=%b -> instr_type=%b", $time, opcode, instr_type);
        opcode = 4'b1000;
        #10 opcode = 4'b1011;
        #10 opcode = 4'b0100;
        #10 opcode = 4'b0101;
        #10 opcode = 4'b0011;
        #10 opcode = 4'b1111;
        #10 $finish;
    end
endmodule
