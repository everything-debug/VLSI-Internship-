module testbench;

    reg A, B, CIN;

    wire SUM;
    wire COUT;

    full_adder f1(A, B, CIN, SUM, COUT);

    initial begin

        $dumpfile("full_adder.vcd");
        $dumpvars(0, testbench);

        $monitor("Time=%0t  A=%b B=%b CIN=%b  SUM=%b COUT=%b",
                 $time, A, B, CIN, SUM, COUT);

        A = 0; B = 0; CIN = 0;
        #20;

        A = 0; B = 0; CIN = 1;
        #20;

        A = 0; B = 1; CIN = 0;
        #20;

        A = 0; B = 1; CIN = 1;
        #20;

        A = 1; B = 0; CIN = 0;
        #20;

        A = 1; B = 0; CIN = 1;
        #20;

        A = 1; B = 1; CIN = 0;
        #20;

        A = 1; B = 1; CIN = 1;
        #20;

        $finish;

    end

endmodule
