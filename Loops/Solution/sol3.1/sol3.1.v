//==============================================================================
// Lab 3.1: The `for` Loop (Solution)
//
// Objective: Use a `for` loop to initialize a memory.
//==============================================================================

//-- Lab 3.1: Solution --
module lab3_1_for_loop_solution();
    reg [7:0] memory [0:15];
    integer i;

    initial begin
        $display("\n--- Lab 3.1: `for` Loop (Solution) ---");

        for (i = 0; i < 16; i = i + 1) begin
            memory[i] = i;
        end

        for (i = 0; i < 16; i = i + 1) begin
            $display("memory[%0d] = %h", i, memory[i]);
        end
        #1 $finish;
    end
endmodule
