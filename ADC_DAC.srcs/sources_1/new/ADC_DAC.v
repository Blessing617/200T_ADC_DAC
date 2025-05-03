`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/02/20 13:26:36
// Design Name: 
// Module Name: ADC_DAC
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ADC_DAC(
    input           clk_50M,
    input   [9:0]   adc_value,

    output  [13:0]  dac_value,
    output          adc_clk,
    output          dac_clk
    );

assign  dac_value   = {adc_value, 4'd0} + 14'b10_0000_0000_0000; 

PLL_ADC_DAC u_PLL_ADC_DAC(
    .adc_clk    (adc_clk    ),
    .dac_clk    (dac_clk    ),
    .clk_50M    (clk_50M    )
);

endmodule
