// #################################################################################################
// # << NEORV32 - Testing scenario >>                                                              #
// # ********************************************************************************************* #
// # BSD 3-Clause License                                                                          #
// #                                                                                               #
// # Copyright (c) 2021, Stephan Nolting. All rights reserved.                                     #
// #                                                                                               #
// # Redistribution and use in source and binary forms, with or without modification, are          #
// # permitted provided that the following conditions are met:                                     #
// #                                                                                               #
// # 1. Redistributions of source code must retain the above copyright notice, this list of        #
// #    conditions and the following disclaimer.                                                   #
// #                                                                                               #
// # 2. Redistributions in binary form must reproduce the above copyright notice, this list of     #
// #    conditions and the following disclaimer in the documentation and/or other materials        #
// #    provided with the distribution.                                                            #
// #                                                                                               #
// # 3. Neither the name of the copyright holder nor the names of its contributors may be used to  #
// #    endorse or promote products derived from this software without specific prior written      #
// #    permission.                                                                                #
// #                                                                                               #
// # THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS   #
// # OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF               #
// # MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE    #
// # COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,     #
// # EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE #
// # GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED    #
// # AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING     #
// # NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED  #
// # OF THE POSSIBILITY OF SUCH DAMAGE.                                                            #
// # ********************************************************************************************* #
// # The NEORV32 Processor - https://github.com/stnolting/neorv32              (c) Stephan Nolting #
// #################################################################################################


/**********************************************************************//**
 * @file testing_scenario/main.c
 * @author Stephan Nolting
 * @brief Simple testing scenario
 **************************************************************************/

#include <neorv32.h>


/**********************************************************************//**
 * @name User configuration
 **************************************************************************/
/**@{*/
/** UART BAUD rate */
#define BAUD_RATE 19200
/** Maximum PWM output intensity (0..255) */
/**@}*/


/**********************************************************************//**
 * This program tests all periferal in testbench
 *
 * @note This program requires the PWM controller to be synthesized (the UART is optional).
 *
 * @return 0 if execution was successful
 **************************************************************************/
int main() {

  // use UART0 if implemented
  if (neorv32_uart0_available()) {
    // init UART at default baud rate, no parity bits, ho hw flow control
    neorv32_uart0_setup(BAUD_RATE, PARITY_NONE, FLOW_CONTROL_NONE);

    // check available hardware extensions and compare with compiler flags
    neorv32_rte_check_isa(0); // silent = 0 -> show message if isa mismatch

    // say hello
    //neorv32_uart0_print("Test\n");
  }

  // check if GPIO unit is implemented at all
  if (neorv32_gpio_available() == 0) {
    neorv32_uart0_print("Error! No GPIO unit synthesized!\n");
    return 1; // nope, no GPIO unit synthesized
  }

  // check if PWM unit is implemented at all
  if (neorv32_pwm_available() == 0) {
    neorv32_uart0_print("Error! No PWM unit synthesized!\n");
    return 1;
  }

  // capture all exceptions and give debug info via UART
  // this is not required, but keeps us safe
  neorv32_rte_setup();

  neorv32_gpio_port_set(0 & 0xFF);

  char UART_char = 0;
  uint8_t pwm = 0;
  uint8_t prev_pwm = 0;
  uint8_t ch = 0; // PWM channel
  neorv32_pwm_setup(CLK_PRSC_64); // PWM prescaler freq ~ 6104 Hz 
    
  while(1)
  {
    pwm = neorv32_gpio_port_get();

    if( pwm != prev_pwm ) // Only if changed
    {
      neorv32_gpio_port_set(pwm & 0xFF); // GPIO loopback

      // PWM  set
      neorv32_pwm_set(ch, pwm);

      prev_pwm = pwm;
    }

    // UART loopback
    if( 0 == neorv32_uart0_getc_safe(&UART_char) )
    {
      neorv32_uart0_putc(UART_char); 
    }

  }
  
  return 0;
}
