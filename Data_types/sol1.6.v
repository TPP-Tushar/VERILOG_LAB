//==============================================================================
// Lab 6: Parameters - Solution
//==============================================================================

//-- Lab 6: Solution --
module lab6_parameters_solution();

    // Define a parameter named 'DATA_WIDTH'.
    parameter DATA_WIDTH = 16;
    
    // Define a localparam named 'ADDR_WIDTH'.
    localparam ADDR_WIDTH = 8;

    // Use the parameters to declare the registers.
    reg [DATA_WIDTH-1:0] data_reg;
    reg [ADDR_WIDTH-1:0] addr_reg;

    initial begin
        #1;
        $display("\n--- Lab 6: Parameters (Solution) ---");
        $display("DATA_WIDTH is %d", DATA_WIDTH);
        $display("ADDR_WIDTH is %d", ADDR_WIDTH);
        
        $display("Size of data_reg: %d bits", $bits(data_reg));
        $display("Size of addr_reg: %d bits", $bits(addr_reg));
    end

endmodule
