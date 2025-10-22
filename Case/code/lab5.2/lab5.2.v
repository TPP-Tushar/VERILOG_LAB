//==============================================================================
// Lab 5.2: State Machine Control with `case`
//
// Objective: Use a `case` statement to implement the combinational logic
// of a simple Moore Finite State Machine (FSM) that detects the sequence "101".
//==============================================================================

//-- Lab 5.2: Problem --
module lab5_2_fsm_case_problem(
    output reg       seq_detected,
    output reg [1:0] next_state,
    input [1:0]      current_state,
    input            in
);
    // State definitions
    parameter S_IDLE = 2'b00;
    parameter S_GOT1 = 2'b01;
    parameter S_GOT10 = 2'b10;

    always @(*) begin
        // Default assignments
        next_state = S_IDLE;
        seq_detected = 1'b0;

        // TODO: Write a case statement sensitive to 'current_state'.
        // For each state, determine the 'next_state' based on the input 'in'.
        // The output 'seq_detected' is a Moore output, so it only depends on the state.
        //
        // case (current_state)
        //   S_IDLE: if in is 1, go to S_GOT1, else stay in S_IDLE.
        //   S_GOT1: if in is 0, go to S_GOT10, else if in is 1, stay in S_GOT1.
        //   S_GOT10: if in is 1, go to S_IDLE and SET 'seq_detected' HIGH.
        //            if in is 0, go back to S_IDLE.
        //   default: stay in S_IDLE.
        // endcase
    end
endmodule

//-- Lab 5.2: Testbench for Problem --
module tb_lab5_2_problem;
    reg [1:0] current_state;
    reg in;
    wire [1:0] next_state;
    wire seq_detected;

    parameter S_IDLE = 2'b00;
    parameter S_GOT1 = 2'b01;
    parameter S_GOT10 = 2'b10;

    lab5_2_fsm_case_problem dut (.*);

    initial begin
        $display("\n--- Lab 5.2: FSM Logic Testbench (Problem) ---");
        $monitor("Time=%0t, CS=%b, in=%b -> NS=%b, detected=%b", $time, current_state, in, next_state, seq_detected);
        // Test IDLE state
        current_state = S_IDLE; in = 0;
        #10 in = 1;
        // Test GOT1 state
        #10 current_state = S_GOT1; in = 1;
        #10 in = 0;
        // Test GOT10 state
        #10 current_state = S_GOT10; in = 0;
        #10 in = 1;
        #10 $finish;
    end
endmodule
