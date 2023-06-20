`timescale 1 ns/1 ns

module ram_test_tb();

//时钟和复位
reg clk  ;
reg rst_n;

//uut的输入信号
reg[15:0]  din  ;



//uut的输出信号

wire[63:0] dout;


//时钟周期，单位为ns，可在此修改时钟周期。
parameter CYCLE    = 10;

//复位时间，此时表示复位3个时钟周期的时间。
parameter RST_TIME = 3 ;
wire en;
wire [15:0] decode;
//待测试的模块例化
all_control uut(
    .clk          (clk), 
    .rst_n        (rst_n),
    .din         (din),
   .decode   (decode)
//    .data_out        (dout)

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

reg [15:0] rom_data[0:33];

 initial
    begin
           $readmemh("C:/Users/doinc/Desktop/ldpc_yi/data.dat",rom_data);
    end
reg [6:0] read_counter_i;

always  @(posedge clk or negedge rst_n)begin
        if(!rst_n || (read_counter_i == 6'd33))  
        begin
             read_counter_i   <= 6'd0;
        end
        else 
        begin
            read_counter_i   <= read_counter_i + 6'd1;    
        end 
end

always @(*) begin

    din = rom_data[read_counter_i];   
end




endmodule
