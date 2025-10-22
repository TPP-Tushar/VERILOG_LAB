//==============================================================================
// Lab 5.2: State Machine Control with `case` (Solution)
//
// Objective: Implement the combinational logic of a simple FSM.
//==============================================================================

//-- Lab 5.2: Solution --
module lab5_2_fsm_case_solution(
    output reg       seq_detected,
    output reg [1:0] next_state,
    input [1:0]      current_state,
    input            in
);
    parameter S_IDLE = 2'b00;
    parameter S_GOT1 = 2'b01;
    parameter S_GOT10 = 2'b10;

    always @(*) begin
        // Default assignments
        next_state = S_IDLE;
        seq_detected = 1'b0;

        case (current_state)
            S_IDLE: begin
                if (in) next_state = S_GOT1;
                else    next_state = S_IDLE;
            end
            S_GOT1: begin
                if (in) next_state = S_GOT1;
                else    next_state = S_GOT10;
            end
            S_GOT10: begin
                if (in) begin
                    next_state = S_IDLE;
                    seq_detected = 1'b1; // Sequence detected!
                end
                else begin
                    next_state = S_IDLE;
                end
            end
            default: begin
                next_state = S_IDLE;
            end
        endcase
    end
endmodule

//-- Lab 5.2: Testbench for Solution --
module tb_lab5_2_solution;
    reg [1:0] current_state;
    reg in;
    wire [1:0] next_state;
    wire seq_detected;

    parameter S_IDLE = 2'b00;
    parameter S_GOT1 = 2'b01;
    parameter S_GOT10 = 2'b10;

    lab5_2_fsm_case_solution dut (.*);

    initial begin
        $display("\n--- Lab 5.2: FSM Logic Testbench (Solution) ---");
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
