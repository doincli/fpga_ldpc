`timescale 1 ns/1 ps

module top_tb();

//时钟和复位
reg clk  ;
reg rst_n;

//uut的输入信号
reg[15:0]  data_in  ;

//uut的输出信号
wire[1:0]   charisk;
wire[15:0] ldpc_out;


//时钟周期，单位为ns，可在此修改时钟周期。//50MHz
parameter CYCLE    = 20;

//复位时间，此时表示复位3个时钟周期的时间。
parameter RST_TIME = 150 ;

//待测试的模块例化
data_control uut(
    .clk          (clk     ), 
    .rst        (rst_n   ),
    .data_gtx      (data_in    ),
    .ldpc_out     (ldpc_out   ),
    .charisk_out        (charisk   )

);


//生成本地时钟50M
initial begin
    clk = 0;
    forever
    #(CYCLE/2)
    clk=~clk;
end

//产生复位信号
initial begin
    rst_n = 1;
    #2;
    rst_n = 0;
    #(CYCLE*RST_TIME);
    rst_n = 1;
end


reg [15:0] rom_data[0:16];

 initial
    begin
           $readmemh("C:/Users/doinc/Desktop/my_ldpc/my_code/code/data.dat",rom_data);
    end
reg [4:0] read_counter_i;

always  @(posedge clk or negedge rst_n)begin
        if(!rst_n || (read_counter_i == 5'd16))  
        begin
             read_counter_i   <= 5'd0;
        end
        else 
        begin
            read_counter_i   <= read_counter_i + 5'd1;    
        end 
end

always @(posedge clk) begin

    data_in <= rom_data[read_counter_i];   
end

endmodule


