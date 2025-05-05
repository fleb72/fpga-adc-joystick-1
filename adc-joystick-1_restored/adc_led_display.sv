module adc_led_display (
    input logic clk,              // Horloge principale
    input logic [11:0] adc_data,  // Résultat de la conversion A/N sur l'entrée analogique CH0
    output logic [7:0] led_out    // Affichage sur Ledsx8
);


    logic [11:0] neutral_min = 1850;  // valeur neutre constatée : env. 1970
    logic [11:0] neutral_max = 2100;
    
    always_ff @(posedge clk) begin
        // Position neutre
        if ((adc_data >= neutral_min) && (adc_data <= neutral_max)) begin
            led_out <= 8'b00011000; // Allume LED[3] et LED[4] en position neutre
        end else begin
            // Descente du joystick (valeur ADC monte vers 4095)
            led_out[5] <= (adc_data >= 2500);  
            led_out[6] <= (adc_data >= 3000);  
            led_out[7] <= (adc_data >= 3500);  

            // Montée du joystick (valeur ADC descend vers 0)
            led_out[2] <= (adc_data <= 1500);  
            led_out[1] <= (adc_data <= 1000);  
            led_out[0] <= (adc_data <= 500);  
        end
    end

endmodule

