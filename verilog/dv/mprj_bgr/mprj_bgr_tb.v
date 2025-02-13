// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype wire

`timescale 1 ns / 1 ps

`include "uprj_analog_netlists.v"
`include "caravan_netlists.v"
`include "spiflash.v"
`include "tbuart.v"

module mprj_bgr_tb;
    // Signals declaration
    reg clock;
    reg RSTB;
    reg CSB;
    reg power1, power2;
    reg porst;

    wire HIGH;
    wire LOW;
    wire TRI;
    assign HIGH = 1'b1;
    assign LOW = 1'b0;
    assign TRI = 1'bz;

    wire gpio;
    wire uart_tx;
    wire [37:0] mprj_io;
    wire [3:0] checkbits;
    wire [1:0] status;
    wire test_out;
    wire test_rst;

    // Signals Assignment
    assign uart_tx = mprj_io[6];
    assign mprj_io[3] = (CSB == 1'b1) ? 1'b1 : 1'bz;

    // Power supply for POR
    // assign mprj_io[18] = power3;
    // power on reset
    assign mprj_io[12] = porst;
    // Readback from POR (digital HV through analog pad connection)
    // assign status = {mprj_io[19],  mprj_io[18]};
    assign test_rst = mprj_io[12];
    // Readback from POR (digital LV)
    // assign checkbits = {mprj_io[27:26], mprj_io[12:11]};

    assign test_out = mprj_io[11];

    always #12.5 clock <= (clock === 1'b0);

    initial begin
        clock = 0;
    end

    initial begin
        $dumpfile("mprj_bgr.vcd");
        $dumpvars(0, mprj_bgr_tb);

        // Repeat cycles of 1000 clock edges as needed to complete testbench
        repeat (150) begin
            repeat (1000) @(posedge clock);
        end
        $display("%c[1;31m",27);
        $display ("Monitor: Timeout, Test Project IO Stimulus (RTL) Failed");
        $display("%c[0m",27);
        $finish;
    end

    // Reset Operation
    initial begin
        RSTB <= 1'b0;
        CSB  <= 1'b1;       // Force CSB high
        #2000;
        RSTB <= 1'b1;       // Release reset
    end

    initial begin		// Power-up sequence
        power1 <= 1'b0;
        power2 <= 1'b0;
        porst <= 1'b0;
        #200;
        power1 <= 1'b1;
        #200;
        power2 <= 1'b1;
	#150000;		// Need time to run the managment SoC setup.
	// power3 <= 1'b1;		// Power up the 2nd POR.
    if ((test_out != 1'b0)) begin
        $display("Monitor: mprj_bgr test failed. initial output not right");
        $finish;
    end
    #100
    porst <= 1'b1;
    #100
    if (test_rst != 1'b1) begin
        $display("Monitor: mprj_bgr test failed. rst not applied");
        $finish;
    end
    #100;
    porst <= 1'b0;
    #100;
    if ((test_out != 1'b1) && (test_rst != 1'b0)) begin
        $display("Monitor: mprj_bgr test failed. final output not right");
        $finish;
    end 

    $display("Monitor: mprj_bgr test Passed");
    #10000;
    $finish;
    
    end

    wire flash_csb;
    wire flash_clk;
    wire flash_io0;
    wire flash_io1;

    wire VDD3V3 = power1;
    wire VDD1V8 = power2;
    wire VSS = 1'b0;

    caravan uut (
        .vddio	  (VDD3V3),
        .vssio	  (VSS),
        .vdda	  (VDD3V3),
        .vssa	  (VSS),
        .vccd	  (VDD1V8),
        .vssd	  (VSS),
        .vdda1    (VDD3V3),
        .vdda2    (VDD3V3),
        .vssa1	  (VSS),
        .vssa2	  (VSS),
        .vccd1	  (VDD1V8),
        .vccd2	  (VDD1V8),
        .vssd1	  (VSS),
        .vssd2	  (VSS),
        .clock	  (clock),
        .gpio     (gpio),
        .mprj_io  (mprj_io),
        .flash_csb(flash_csb),
        .flash_clk(flash_clk),
        .flash_io0(flash_io0),
        .flash_io1(flash_io1),
        .resetb	  (RSTB)
    );


    spiflash #(
        .FILENAME("mprj_bgr.hex")
    ) spiflash (
        .csb(flash_csb),
        .clk(flash_clk),
        .io0(flash_io0),
        .io1(flash_io1),
        .io2(),         // not used
        .io3()          // not used
    );

    // Testbench UART
    tbuart tbuart (
        .ser_rx(uart_tx)
    );

endmodule
`default_nettype wire
