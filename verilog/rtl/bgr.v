`default_nettype none
`timescale 1 ns / 1 ps


module bgr(
`ifdef USE_POWER_PINS
    inout vdd, // 1.8 V
    inout gnd, // vss analog
`endif
    input porst,
    output vbg
);

    wire vbg, porst, gnd, vdd;
    reg vbg_r;

    // This is a behavioral model!  Actual circuit is a pair of 
    // differently sized PNPs surrounded by ratiometrically tuned
    // resistors fed by a current mirror that's driven by a self-biased
    // active load amplifier to finally drive a resistor to provide
    // a (hopefully) temperature indepdnent reference voltage of
    // 970.312 mV
    
    initial begin
    vbg_r <= 1'b0;
    end


    always @(posedge porst) begin
        #500 vbg_r <= 1;
    end

    assign vbg = vbg_r;

endmodule
`default_nettype wire
