// Testbench for 4-to-1 Multiplexer

module multiplexer_tb;

reg I0, I1, I2, I3;
reg S1, S0;

wire Y;

// Instantiate Multiplexer
multiplexer uut (
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .S1(S1),
    .S0(S0),
    .Y(Y)
);

initial begin

    // Generate waveform
    $dumpfile("waveform.vcd");
    $dumpvars(0, multiplexer_tb);

    // Set input values
    I0 = 0;
    I1 = 1;
    I2 = 0;
    I3 = 1;

    $display("S1 S0 | I0 I1 I2 I3 | Y");
    $display("-------------------------");

    S1 = 0; S0 = 0;
    #10;
    $display(" %b  %b  |  %b  %b  %b  %b  | %b",
             S1,S0,I0,I1,I2,I3,Y);

    S1 = 0; S0 = 1;
    #10;
    $display(" %b  %b  |  %b  %b  %b  %b  | %b",
             S1,S0,I0,I1,I2,I3,Y);

    S1 = 1; S0 = 0;
    #10;
    $display(" %b  %b  |  %b  %b  %b  %b  | %b",
             S1,S0,I0,I1,I2,I3,Y);

    S1 = 1; S0 = 1;
    #10;
    $display(" %b  %b  |  %b  %b  %b  %b  | %b",
             S1,S0,I0,I1,I2,I3,Y);

    $finish;
end

endmodule