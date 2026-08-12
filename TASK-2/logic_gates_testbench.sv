module testbench;

    reg A, B;

    wire AND_GATE;
    wire OR_GATE;
    wire NOT_GATE;
    wire NAND_GATE;
    wire NOR_GATE;
    wire XOR_GATE;

    and_gate  g1(A, B, AND_GATE);
    or_gate   g2(A, B, OR_GATE);
    not_gate  g3(A, NOT_GATE);
    nand_gate g4(A, B, NAND_GATE);
    nor_gate  g5(A, B, NOR_GATE);
    xor_gate  g6(A, B, XOR_GATE);

    initial begin

        $dumpfile("gates.vcd");

        // Only record these signals
        $dumpvars(0, A, B,
                     AND_GATE,
                     OR_GATE,
                     NOT_GATE,
                     NAND_GATE,
                     NOR_GATE,
                     XOR_GATE);

        $monitor("Time=%0t  A=%b B=%b  AND=%b OR=%b NOT=%b NAND=%b NOR=%b XOR=%b",
                 $time, A, B,
                 AND_GATE,
                 OR_GATE,
                 NOT_GATE,
                 NAND_GATE,
                 NOR_GATE,
                 XOR_GATE);

        A = 0; B = 0;
        #20;

        A = 0; B = 1;
        #20;

        A = 1; B = 0;
        #20;

        A = 1; B = 1;
        #20;

        $finish;
    end

endmodule
