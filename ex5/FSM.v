module FSM (input reset, input clk, input w, output out = 0);
    enum {A, B, C, D, E} state = A, nextState = A;

    always_comb begin
        case (state)
        A: if (w) nextState = B;

        B: if (w) nextState = C;
            
        C: if (w) nextState = D;

        D: if (w) nextState = E;
            
        E: if (w) nextState = E;
            
        R: if (reset | ~w) state = A;
        endcase
    end
endmodule