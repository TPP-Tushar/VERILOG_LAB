//==============================================================================
// Lab 2.2: The `always @(*)` Block for Combinational Logic
//
// Objective: Implement a 2-to-1 multiplexer (MUX) using a combinational
// `always @(*)` block, which re-evaluates whenever any of its inputs change.
//==============================================================================

//-- Lab 2.2: Problem --
module lab2_2_combinational_always_problem(
    output reg y,
    input      a,
    input      b,
    input      sel
);
    // TODO: Write an `always @(*)` block that assigns 'y' based on 'sel'.
    // If sel is 1, y should be b.
    // If sel is 0, y should be a.

endmodule

//-- Lab 2.2: Testbench for Problem --
module tb_lab2_2_problem;
    reg a, b, sel;
    wire y;

    lab2_2_combinational_always_problem dut (
        .y(y),
        .a(a),
        .b(b),
        .sel(sel)
    );

    initial begin
        $display("\n--- Lab 2.2: Combinational `always` Testbench (Problem) ---");
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
