//==============================================================================
// Lab 6: Parameters
//
// Objective: Use parameters to create configurable and readable code.
//==============================================================================

//-- Lab 6: Problem --
module lab6_parameters_problem();

    // TODO 1: Define a parameter named 'DATA_WIDTH' and give it a value of 16.
    
    // TODO 2: Define a localparam named 'ADDR_WIDTH' and give it a value of 8.
    // localparams cannot be changed at instantiation.

    // TODO 3: Use the parameters to declare the following registers:
    //  - 'data_reg' with a width of DATA_WIDTH
    //  - 'addr_reg' with a width of ADDR_WIDTH

    initial begin
        #1;
        $display("\n--- Lab 6: Parameters ---");
        $display("DATA_WIDTH is %d", DATA_WIDTH);
        $display("ADDR_WIDTH is %d", ADDR_WIDTH);
        
        // Display the size of the registers using the $bits system function.
        $display("Size of data_reg: %d bits", $bits(data_reg));
        $display("Size of addr_reg: %d bits", $bits(addr_reg));
    end

endmodule
