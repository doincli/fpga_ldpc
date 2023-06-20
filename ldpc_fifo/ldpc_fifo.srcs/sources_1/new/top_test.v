module top_test(
    clk    ,
    rst_n  ,
    //其他信号,举例dout
    data_gtx,
    ldpc_out,
    charisk_out
    );

    //参数定义
    parameter      DATA_W =         16;

    //输入信号定义
    input               clk    ;
    input               rst_n  ;
    input [DATA_W-1:0]  data_gtx;
    //输出信号定义
    output[DATA_W-1:0]  ldpc_out   ;
    output [1:0]       charisk_out;
    //输出信号reg定义
   
    //中间信号定义
    wire [DATA_W-1:0] fifo_data;
    wire rd_en;
    wire rd_clk;
    
    //底层模块调用
   //fifo模块调用
    fifo_control  u1(
    .clk(clk),
    .rst_n(rst_n),
    .data_in(data_gtx),
    .data_out(fifo_data),
    .rd_en(rd_en),
    .rd_clk(rd_clk)
    );
  

    //ldpc模块调用
    ldpc_control    u2(
    .clk(rd_clk),
    .rst_n(rst_n),
    .data_in(fifo_data),
    .r_en(rd_en),
    .data_out(ldpc_out),
    .charisk(charisk_out)
    );
    endmodule

