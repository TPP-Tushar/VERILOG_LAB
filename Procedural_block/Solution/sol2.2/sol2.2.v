//==============================================================================
// Lab 2.2: The `always @(*)` Block for Combinational Logic (Solution)
//
// Objective: Implement a 2-to-1 multiplexer (MUX) using a combinational
// `always @(*)` block.
//==============================================================================

//-- Lab 2.2: Solution --
module lab2_2_combinational_always_solution(
    output reg y,
    input      a,
    input      b,
    input      sel
);
    always @(*) begin
        if (sel == 1'b1) begin
            y = b;
        end
        else begin
            y = a;
        end
    end
endmodule

//-- Lab 2.2: Testbench for Solution --
module tb_lab2_2_solution;
    reg a, b, sel;
    wire y;

    lab2_2_combinational_always_solution dut (
        .y(y),
        .a(a),
        .b(b),
        .sel(sel)
    );

    initial begin
        $display("\n--- Lab 2.2: Combinational `always` Testbench (Solution) ---");
        $monitor("Time=%0t, sel=%b, a=%b, b=%b -> y=%b", $time, sel, a, b, y);
        sel=0; a=0; b=0;
        #10 sel=0; a=1; b=0;
        #10 sel=0; a=0; b=1;
        #10 sel=0; a=1; b=1;
        #10 sel=1; a=0; b=0;
        #10 sel=1; a=1; b=0;
        #10 sel=1; a=0; b=1;
        #10 sel=1; a=1; b=1;
        #10 $finish;
    end
endmodule
