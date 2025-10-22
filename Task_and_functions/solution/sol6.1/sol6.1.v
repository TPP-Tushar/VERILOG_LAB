//==============================================================================
// Lab 6.1: Reusable Calculations with a `function` (Solution)
//
// Objective: Create a `function` to perform a combinational XOR parity
// calculation.
//==============================================================================

//-- Lab 6.1: Solution --
module lab6_1_function_solution();
    reg [7:0] data_bus;
    reg       parity_bit;

    // A function must have at least one input.
    // The function name is implicitly a reg that holds the return value.
    function calculate_parity (input [7:0] data_in);
        integer i;
        reg parity;
        begin
            parity = 0;
            for (i=0; i<8; i=i+1) begin
                parity = parity ^ data_in[i];
            end
            calculate_parity = parity;
        end
    endfunction

    initial begin
        $display("\n--- Lab 6.1: `function` (Solution) ---");
        data_bus = 8'hA5; // 10100101 -> 4 ones, even parity -> 0
        parity_bit = calculate_parity(data_bus);
        #1 $display("Data = %b, Parity = %b", data_bus, parity_bit);

        data_bus = 8'h53; // 01010011 -> 5 ones, odd parity -> 1
        parity_bit = calculate_parity(data_bus);
        #1 $display("Data = %b, Parity = %b", data_bus, parity_bit);
        #1 $finish;
    end

endmodule
