module XOR(output O, input A, B);
    xor(Y,A,B);
endmodule

module AND(output O, input A, B);
    and(Y,A,B);
endmodule

module OR(output O, input A, B);
    or(Y,A,B);
endmodule

module fullAdder (input A, input B, input Ci, output S, output Co);
    logic O1, O2, O3;

    XOR xor1(O1, A, B);
    XOR xor2(S, O1, Ci);
    AND and1(O2, A, B);
    AND and2(O3, O1, Ci);
    OR or1(Co, O2, O3);

    specify
        (A, B, Ci => Co ) = (500, 781);
        (A, B, Ci => So ) = (245, 237);
    endspecify
endmodule



