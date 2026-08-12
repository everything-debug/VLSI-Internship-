module testbench;

    reg A, B;
    wire SUM, CARRY;

    half_adder h1(A, B, SUM, CARRY);

    initial begin

        $dumpfile("half_adder.vcd");
        $dumpvars(0, testbench);

        A = 0;
        B = 0;
        #10;

        A = 0;
        B = 1;
        #10;

        A = 1;
        B = 0;
        #10;

        A = 1;
        B = 1;
        #10;

        $finish;
    end

endmodule
