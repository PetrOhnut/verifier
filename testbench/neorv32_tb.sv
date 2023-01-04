`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: VUT
// Engineer: Luk� Prus�k
// 
// Create Date: 03/08/2022 10:15:58 AM
// Design Name: Testbench
// Module Name: neorv32_tb

//////////////////////////////////////////////////////////////////////////////////


module neorv32_tb;
   
// -- TEST -------------------------------------------------------------
   
    /*RISC-V CPU Extensions*/
    parameter CPU_EXTENSION_RISCV_A         = 1'b1;
    parameter CPU_EXTENSION_RISCV_B         = 1'b1;
    parameter CPU_EXTENSION_RISCV_C         = 1'b1;
    parameter CPU_EXTENSION_RISCV_E         = 1'b0;
    parameter CPU_EXTENSION_RISCV_M         = 1'b1;
    parameter CPU_EXTENSION_RISCV_U         = 1'b1;
    parameter CPU_EXTENSION_RISCV_Zfinx     = 1'b1;
    parameter CPU_EXTENSION_RISCV_Zicsr     = 1'b1;
    parameter CPU_EXTENSION_RISCV_Zicntr    = 1'b1;
    parameter CPU_EXTENSION_RISCV_Zihpm     = 1'b1;
    parameter CPU_EXTENSION_RISCV_Zifencei  = 1'b1;
    //parameter CPU_EXTENSION_RISCV_Zxcfu     = 1'b1;
    parameter EXT_IMEM_C                    = 1'b0;
    parameter MEM_INT_IMEM_SIZE             = 16*1024;
    
    /* Extension Options */
    parameter FAST_MUL_EN                   = 1'b0;
    parameter FAST_SHIFT_EN                 = 1'b0;
    parameter CPU_CNT_WIDTH                 = 64;
    
    // User Configuration ---------------------------------------------------------------------
    // -------------------------------------------------------------------------------------------
    // general --
    parameter ext_dmem_c                    = 1'b0;     // false: use proc-internal DMEM, true: use external simulated DMEM (ext. mem B)
    parameter dmem_size_c                   = 8*1024;    // size in bytes of processor-internal DMEM / external mem B
    parameter f_clock_c                     = 100000000; // main clock in Hz   
    parameter baud0_rate_c                  = 19200; // simulation UART0 (primary UART) baud rate
    parameter baud1_rate_c                  = 19200; // simulation UART1 (secondary UART) baud rate
    parameter IO_PWM_NUM_CH                 = 1;
    // simulated external Wishbone memory A (can be used as external IMEM) --
    parameter ext_mem_a_base_addr_c         = 32'h00000000; // wishbone memory base address (external IMEM base)
    parameter ext_mem_a_size_c              = MEM_INT_IMEM_SIZE; // wishbone memory size in bytes
    parameter ext_mem_a_latency_c           = 8; // latency in clock cycles (min 1, max 255), plus 1 cycle initial delay
    // simulated external Wishbone memory B (can be used as external DMEM) --
    parameter ext_mem_b_base_addr_c         = 32'h80000000;; // wishbone memory base address (external DMEM base)
    parameter ext_mem_b_size_c              = dmem_size_c; // wishbone memory size in bytes
    parameter ext_mem_b_latency_c           = 8; // latency in clock cycles (min 1, max 255), plus 1 cycle initial delay
    // simulated external Wishbone memory C (can be used to simulate external IO access) --
    parameter ext_mem_c_base_addr_c         = 32'hF0000000; // wishbone memory base address (default begin of EXTERNAL IO area)
    parameter ext_mem_c_size_c              = 64; // wishbone memory size in bytes
    parameter ext_mem_c_latency_c           = 3;  // latency in clock cycles (min 1, max 255), plus 1 cycle initial delay
    // simulation interrupt trigger --
    parameter irq_trigger_base_addr_c       = 32'hFF000000;
    // -------------------------------------------------------------------------------------------

    // internals - hands off! --
    parameter  int_imem_c       = ~EXT_IMEM_C;
    parameter  int_dmem_c       = ~ext_dmem_c;
    parameter  uart0_baud_val_c = $itor(f_clock_c) / $itor(baud0_rate_c);
    parameter  uart1_baud_val_c = $itor(f_clock_c) / $itor(baud1_rate_c);
    parameter  t_clock_c        = 1000000000 / f_clock_c;
    
    reg clk_tb = 0;
    
    logic rstn_i = 0;
    logic [7:0] gpio_i;
    logic uart0_rxd_i = 1;   
    logic [7:0] gpio_o;
    logic [0:0] pwm_o;
    logic uart0_txd_o; 
    logic [31:0] curr_pc_top_o;
               
    // clock generator
    always    
    begin
        clk_tb = 1'b1;
        #(t_clock_c /2);
        clk_tb = 1'b0;
        #(t_clock_c /2); 
    end
          
    neorv32_top #(
        // General 
        .CLOCK_FREQUENCY    (f_clock_c),
        .HW_THREAD_ID       (0),
        .INT_BOOTLOADER_EN  (1'b0),
        
        // On-Chip Debugger (OCD)
        .ON_CHIP_DEBUGGER_EN(1'b0),
        
        // RISC-V CPU Extensions
        .CPU_EXTENSION_RISCV_A          (CPU_EXTENSION_RISCV_A),  
        .CPU_EXTENSION_RISCV_B          (CPU_EXTENSION_RISCV_B),
        .CPU_EXTENSION_RISCV_C          (CPU_EXTENSION_RISCV_C),
        .CPU_EXTENSION_RISCV_E          (CPU_EXTENSION_RISCV_E),
        .CPU_EXTENSION_RISCV_M          (CPU_EXTENSION_RISCV_M),
        .CPU_EXTENSION_RISCV_U          (CPU_EXTENSION_RISCV_U),
        .CPU_EXTENSION_RISCV_Zfinx      (1'b1),
        .CPU_EXTENSION_RISCV_Zicsr      (CPU_EXTENSION_RISCV_Zicsr),
        .CPU_EXTENSION_RISCV_Zicntr     (1'b1),
        .CPU_EXTENSION_RISCV_Zihpm      (1'b1),
        .CPU_EXTENSION_RISCV_Zifencei   (CPU_EXTENSION_RISCV_Zifencei),
        .CPU_EXTENSION_RISCV_Zmmul      (1'b0),
        //.CPU_EXTENSION_RISCV_Zxcfu      (1'b1),
        
        // Extension Options
        .FAST_MUL_EN    (1'b0),
        .FAST_SHIFT_EN  (1'b0),
        .CPU_CNT_WIDTH  (64),
          
        // Physical Memory Protection (PMP)
        .PMP_NUM_REGIONS    (5),
        .PMP_MIN_GRANULARITY(4),
        
        // Hardware Performance Monitors (HPM)
        .HPM_NUM_CNTS   (12),                
        .HPM_CNT_WIDTH  (40),
    
        // Internal Instruction memory
        .MEM_INT_IMEM_EN    (int_imem_c),                
        .MEM_INT_IMEM_SIZE  (MEM_INT_IMEM_SIZE),
        
        // Internal Data memory
        .MEM_INT_DMEM_EN    (int_dmem_c),                
        .MEM_INT_DMEM_SIZE  (dmem_size_c),
        
        // Internal Cache memory
        .ICACHE_EN              (1'b1),                
        .ICACHE_NUM_BLOCKS      (8),
        .ICACHE_BLOCK_SIZE      (64),                
        .ICACHE_ASSOCIATIVITY   (2),
        
        // External memory interface --
        .MEM_EXT_EN     (1'b1),                  
        .MEM_EXT_TIMEOUT(256),               
        
        // Stream link interface
        .SLINK_NUM_TX   (8),                
        .SLINK_NUM_RX   (8),
        .SLINK_TX_FIFO  (4),                
        .SLINK_RX_FIFO  (1),
        
        // External Interrupts Controller (XIRQ)
        .XIRQ_NUM_CH            (32),                
        .XIRQ_TRIGGER_TYPE      (~0),
        .XIRQ_TRIGGER_POLARITY  (~0),                

        // Processor peripherals
        .IO_GPIO_EN         (1'b1),
        .IO_MTIME_EN        (1'b1),
        .IO_UART0_EN        (1'b1),
        .IO_UART0_RX_FIFO   (32),
        .IO_UART0_TX_FIFO   (32),
        .IO_UART1_EN        (1'b1),
        .IO_UART1_RX_FIFO   (1),
        .IO_UART1_TX_FIFO   (1),
        .IO_SPI_EN          (1'b1),
        .IO_TWI_EN          (1'b1),
        .IO_PWM_NUM_CH      (IO_PWM_NUM_CH),
        .IO_WDT_EN          (1'b1),
        .IO_TRNG_EN         (1'b0),
        .IO_CFS_EN          (1'b1),
        .IO_CFS_CONFIG      (0),
        .IO_CFS_IN_SIZE     (32),
        .IO_CFS_OUT_SIZE    (32),
        .IO_NEOLED_EN       (1'b1),
        .IO_NEOLED_TX_FIFO  (8),
        .IO_GPTMR_EN        (1'b1),
        .IO_XIP_EN          (1'b1)
    )  
    neorv32_top_inst (
        .clk_i(clk_tb),   
        .rstn_i(rstn_i),
        .curr_pc_top_o(curr_pc_top_o),  
        .gpio_i(gpio_i),
        .uart0_rxd_i(uart0_rxd_i),
        .gpio_o(gpio_o),
        .pwm_o(pwm_o),
        .uart0_txd_o(uart0_txd_o)        
   );  
 
    // Test files
    int fin;
    int fout;
    
    // Timing variables  
    longint timestamp = 0; 
      
    string header;
    string thrash;   
    
    logic uart_busy     = 0;
    logic uart_warn     = 1;
    logic [7:0] uart_rx_char = 0;
    logic [7:0] uart_rx_sreg = 0;
    enum {START, DATA, STOP} uart_rx_state = START;
    
    parameter input_file = "input_data.csv";
    parameter output_file = "output_data.csv";
     
// Code for relative paths     
/*    function string get_path_from_file(string fullpath_filename);
        int i;
        int str_index;
        logic found_path;
        static string ret="";
    
    
        for (i = fullpath_filename.len()-1; i>0; i=i-1) begin
            if (fullpath_filename[i] == "/") begin
                found_path=1;
                str_index=i;
                break;
            end
        end
        if (found_path==1) begin
            ret=fullpath_filename.substr(0,str_index);
        end else begin
           // `uvm_error("pve_get_path_from_file-1", $sformatf("Not found a valid path for this file: %s",fullpath_filename));
        end
            
    
        return ret;
    endfunction
    
    string path = get_path_from_file(`__FILE__); // extracted current path of the project 
*/  

// -- ENVIROMENT -------------------------------------------------------------
  
    parameter sim_time = "all";
    /*Timing simulation*/
    always @(posedge clk_tb) begin : sim_timing
        if (sim_time != "all") begin                 
            if(sim_time <= $time) begin
                $fclose(fout);
                $stop;
            end
        end
    end
    
    
// -- DRIVER -------------------------------------------------------------
    
    integer num = 0;
    /*Actual testing*/
    initial begin : file_testing
          
        $display("Path to input_file: %s", input_file);  
//        fin = $fopen({path, input_file}, "r");  
        fin = $fopen(input_file, "r");      
         
        if (!fin) begin
             $display("File '%s' could not be open !", input_file);
             disable file_testing;
        end
        
        if($fgetc(fin) == "#") begin// Reading and deleting header
            $fgets(header, fin);
            $display("%s", header);
        end
        else begin
            $rewind(fin);    
        end 
        
        $display("Path to output_file: %s", output_file);                 
//        fout = $fopen({path, output_file}, "w");
        fout = $fopen(output_file, "w");
        
        if (!fout) begin
             $display("File '%s' could not be open !", output_file);
             $fclose(fin);
             disable file_testing; 
        end
        
        $fwrite(fout,   "# Timestamp[ns];curr_pc_o [0x];gpio_o [0b];PWM_freq [Hz];PWM_duty [x/255];uart0_txd_o\n");
                   
        while (!$feof(fin)) begin
            if (uart_busy == 1) begin                                
                //Sending UART
                case(uart_rx_state)
                                    
                    // Start bit
                    START: begin
                        //$display("START");    
                        uart0_rxd_i = 0; // Setting srart bit 
                        uart_rx_sreg = uart_rx_char;
                        uart_rx_state = DATA;
                        
                        //#($ceil(uart0_baud_val_c)*t_clock_c); 
                        #($floor(uart0_baud_val_c)*t_clock_c);                                  
                    end    
                               
                    // Transmitting data
                    DATA: begin
                        for (integer uart_rx_bitcnt = 0; uart_rx_bitcnt < 8; uart_rx_bitcnt = uart_rx_bitcnt + 1)  begin
                            //$display("DATA [%0d]", uart_rx_bitcnt);
                            uart0_rxd_i = uart_rx_sreg[0];
                            uart_rx_sreg = uart_rx_sreg >> 1;
                            
                            //#($ceil(uart0_baud_val_c)*t_clock_c);
                            #($floor(uart0_baud_val_c)*t_clock_c);
                        end
                        uart_rx_state = STOP;                               
                    end
                                     
                    // Stop bit
                    STOP: begin
                        //$display("STOP");
                        uart0_rxd_i = 1; // Setting stop bit 
                        $display("[%0d ns]\tuart_rx_ch\t= ['%c']", $time, uart_rx_char); 
                                                                                              
                        $fscanf(fin ,"%c", uart_rx_char);// Scanning next character                                              
                        if (uart_rx_char == "\n") begin // Checking the end of string
                            uart_busy = 0;                                    
                        end 
                        uart_rx_state = START;
                
                        //#($ceil(uart0_baud_val_c)*t_clock_c);
                        #($floor(uart0_baud_val_c)*t_clock_c);  
                                              
                    end          
                endcase      
            end           
            else begin

                if ($fscanf(fin ,"%e;", timestamp) <= 0) begin // Checking if value was read
                    $fgets(thrash, fin); 
                    continue; // if not deleting whole line 
                    //$display("[%0d ns]\ttrash\t\t= [%c]", $time, thrash); // Printing new value to console
                end
                //$display("Timestamp [%0d]", timestamp);
                if ($time > timestamp) begin
                    //$display("%0d > %0d", $time, timestamp);
                    $display(       "[%0d ns]\t# WARNING: UART is behind the planned testing time by [%0d ns].  ", $time, $time - timestamp);
                    $fwrite(fout,   "# WARNING: UART is behind the planned testing time by [%0d ns].\n", $time - timestamp);
                end
                else begin
                    // Waiting cycle
                    while (!($time >= timestamp)) begin
                        #t_clock_c;
                    end
                end
                
                // rstn_i
                if ($fscanf(fin ,"%b;", rstn_i) != 1) begin // Checking if value was read
                    if(";" != $fgetc(fin)) begin
                        $fgets(thrash, fin); 
                        continue;
                    end // if not deleting deliminator ";" 
                    //$display("[%0d ns]\ttrash\t\t= [%c]", $time, thrash); // Printing new value to console
                end
                else begin
                    $display("[%0d ns]\trstn_i\t\t= [0b%b]", $time, rstn_i); // Printing new value to console
                end
                //gpio_i               
                if ($fscanf(fin ,"%b;", gpio_i) == 0) begin // Checking if value was read
                    thrash = $fgetc(fin); // if not deleting deliminator ";"
                    //$display("[%0d ns]\ttrash\t\t= [%c]", $time, thrash); // Printing new value to console
                end
                else begin
                    $display("[%0d ns]\tgpio_i\t\t= [0b%b]", $time, gpio_i); // Printing new value to console
                end
                
                //uart_rxd_i
                $fscanf(fin ,"%c", uart_rx_char);
                //$display("char: %c", uart_rx_char);
                if (uart_rx_char != "\n") begin
                    //$display("[%0d ns]\tuart_rx_o\t= [%c]", $time, uart_rx_char);
                    uart_busy = 1; 
                end
            end
                             
        end

        $fclose(fin);
        if (sim_time == "all") begin
            $fclose(fout);
            $stop;
        end
    end


// -- MONITOR -------------------------------------------------------------

// -- GPI-O ---------------- 
 
    always @(gpio_o) begin : GPIO_testing
        $display(       "[%0d ns]\tgpio_o\t\t= [0b%b]", $time, gpio_o);  
        $fwrite(fout,   "%0d;%8h;%b;;;\n", $time, curr_pc_top_o, gpio_o);
    end
 
// -- PWM ------------------
    
    // Variables     
    parameter PWM_filter    = 0;
    logic PWM_start         = 0;
    logic PWM_change        = 0;
    real PWM_negedge_time   = 0;
    real change_time        = 0;
    
    typedef struct{
        real posedge_time;
        integer freq;
        integer duty;
    } PWM_parameters;
    
    PWM_parameters PWM_prev_param   = '{64'b0, 32'b0, 32'b0};
    PWM_parameters PWM_act_param    = '{64'b0, 32'b0, 32'b0};
      
    always @(posedge pwm_o) begin : PWM_testing_pos
    
       if(PWM_start == 1) begin
       
            //$display("Positive edge of PWM");
            PWM_act_param.posedge_time = $time;
            
            // Calculating PWM parameters
            PWM_act_param.freq  = 1000000000/(PWM_act_param.posedge_time - PWM_prev_param.posedge_time);
            PWM_act_param.duty  = ((PWM_negedge_time - PWM_prev_param.posedge_time)/(PWM_act_param.posedge_time - PWM_prev_param.posedge_time)*256);
                       
            if((PWM_change == 0) && ((PWM_act_param.freq != PWM_prev_param.freq ) || (PWM_act_param.duty != PWM_prev_param.duty))) begin               
                change_time = PWM_act_param.posedge_time; 
                PWM_change = 1;
                if(PWM_filter == 0) begin
                    $display(       "[%0d ns]\tpwm_freq\t= [%0d Hz],\tpwm_duty = [%0d/255 (%0.2f%%)]", change_time, PWM_act_param.freq,  PWM_act_param.duty , (PWM_act_param.duty*100)/255);  
                    $fwrite(fout,   "%0d;%8h;;%0d;%0d;\n", change_time, curr_pc_top_o, PWM_act_param.freq, PWM_act_param.duty);
                    PWM_change = 0;
                end
              
            end
            else if ((PWM_change == 1) && (PWM_act_param.freq == PWM_prev_param.freq ) && (PWM_act_param.duty == PWM_prev_param.duty) ) begin           
                // Displaying PWM parameters
                $display(       "[%0d ns]\tpwm_freq\t= [%0d Hz],\tpwm_duty = [%0d/255 (%0.2f%%)]", change_time, PWM_act_param.freq,  PWM_act_param.duty , (PWM_act_param.duty*100)/255);
                $fwrite(fout,   "%0d;%8h;;%0d;%0d;\n", change_time, curr_pc_top_o, PWM_act_param.freq, PWM_act_param.duty);
                PWM_change = 0;
            end
                
            PWM_prev_param.posedge_time = $time;
            
            PWM_prev_param.posedge_time = PWM_act_param.posedge_time;
            PWM_prev_param.freq         = PWM_act_param.freq;
            PWM_prev_param.duty         = PWM_act_param.duty;
    
        end
    end
       
    always @(negedge pwm_o) begin : PWM_testing_neg
        //$display("Negative edge of PWM");
        PWM_negedge_time = $time;
        PWM_start = 1;       
    end

    
// -- UART_TX ------------------ 
  
    logic [4:0] uart_tx_sync = ~0;
    logic uart_tx_busy = 0;
    logic [8:0] uart_tx_sreg = 0;
    real uart_tx_baud_cnt;
    integer uart_tx_bitcnt;
    logic [7:0] uart_tx_char;
    
    always @(posedge clk_tb)
    begin
        //uart_tx_sync = {uart_tx_sync[3:0], uart0_rxd_i};
        uart_tx_sync = {uart_tx_sync[3:0], uart0_txd_o};
        if (uart_tx_busy == 0) begin // idle
            uart_tx_busy = 0;
            uart_tx_baud_cnt = $ceil(0.5 * uart0_baud_val_c);
            uart_tx_bitcnt = 9;
        
            if(uart_tx_sync[4:1] == 4'b1100) begin //Start bit Falling edge
                uart_tx_busy = 1;
            end 
        end 
        else if (uart_tx_baud_cnt == 0.0) begin
            //$display("comunication"); 
            if (uart_tx_bitcnt == 1) begin
                uart_tx_baud_cnt = $ceil(0.5 * uart0_baud_val_c);    
            end
            else begin
                uart_tx_baud_cnt = $ceil(uart0_baud_val_c);
            end     
            if (uart_tx_bitcnt == 0) begin
                uart_tx_busy = 0;  // done
                
                uart_tx_char = uart_tx_sreg[8:1];
                //$display("%b", uart_rx_sreg[8:1]);
                if ((uart_tx_char >= 32) && (uart_tx_char < 32+95)) begin // Printable character ?
                    $display(       "[%0d ns]\tuart_tx_o\t= ['%c']", $time, uart_tx_char);  
                    $fwrite(fout,   "%0d;%8h;;;;%c\n", $time, curr_pc_top_o, uart_tx_char);
                end
                else begin                 
                    $display(       "[%0d ns]\tuart_tx_o\t= [0d%d, 0x%h (unprintable)]", $time, uart_tx_char, uart_tx_char);                      
                    $fwrite(fout,   "%0d;%8h;;;;%c\n", $time, curr_pc_top_o, uart_tx_char);
                end
            end 
            else begin
                uart_tx_sreg = {uart_tx_sync[4], uart_tx_sreg[8:1]};
                uart_tx_bitcnt = uart_tx_bitcnt - 1;       
            end
        end
        else begin
            uart_tx_baud_cnt <= uart_tx_baud_cnt - 1.0;   
        end         
    end   
       
endmodule
