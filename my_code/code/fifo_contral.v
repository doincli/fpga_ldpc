module fifo_control(
    clk    ,
    rst_n  ,
    data_in,
    //charisk_in,
    data_out,
    rd_en
    //其他信号,举例dout
    
    );

    //参数定义
    parameter      DATA_W =         16;

    //输入信号定义
    input               clk    ;
    input               rst_n  ;
    input [DATA_W-1:0]  data_in;
   // input [1:0]  charisk_in;
    //输出信号定义
    output[DATA_W-1:0]  data_out     ;
    output  rd_en;
    //输出信号reg定义
    reg   [DATA_W-1:0]  data_out   ;
    reg rd_en;
    //中间信号定义
    reg [DATA_W-1:0]  data_temp;
    wire[DATA_W-1:0]  data_temp1; 
    reg wr_en;
    wire wr_clk;
    wire rd_clk;
    wire rd_start;
    wire full;
    wire empty;
    wire wr_rst_busy;
    wire rd_rst_busy;
    wire rd_en1;
    wire locked;

    //缓存data,data_temp进入fifo
    always  @(posedge clk or negedge rst_n)begin
        if(rst_n==1'b0)begin
            data_temp <= 0;
        end
        else begin
            data_temp <=data_in;
        end
    end
  
    //wr_en控制 02bc后的一个数进入fifo
    always  @(posedge clk or negedge rst_n)begin
        if(rst_n==1'b0)begin
            wr_en <= 0 ;
        end
        else if(data_in ==16'h02bc) begin
            wr_en <= 0 ;
        end
        else if(data_temp ==16'h02bc) begin 
            wr_en <= 1 ;
        end
    end
      
    assign data_temp1 =data_temp ;
    //pll 倍频时钟 ,生成wr_clk与rd_clk
 clk_wiz_0 fifo_read
   (
    // Clock out ports
    .clk_out1(wr_clk),     // output clk_out1
    .clk_out2(rd_clk),     // output clk_out2
    // Status and control signals
    .reset(~rst_n), // input reset   高电平有效的复位
    .locked(locked),       // output locked
   // Clock in ports
    .clk_in1(clk));      // input clk_in1
    
    
    //缓存3帧数据
    //计数器，记录缓存了多少帧数据
  wire add_cnt;
  wire end_cnt;
  reg [2:0] cnt;
  always @(posedge clk or negedge rst_n)begin
      if(!rst_n)begin
          cnt <= 0;
      end
      else if(add_cnt)begin
          if(end_cnt)
              cnt <= 4;
          else
              cnt <= cnt + 1;
      end
  end

  assign add_cnt = data_in ==16'h02bc ;       
  assign end_cnt = add_cnt && cnt== 5-1 ;   



    //rd_en 控制
    wire add_cnt1;
    wire end_cnt1;
   reg [5:0] cnt1;
   always @(posedge clk or negedge rst_n)begin
       if(!rst_n)begin
          cnt <= 0;
      end
      else if(add_cnt1)begin
          if(end_cnt1)
             cnt1 <= 0;
        else
           cnt1 <= cnt1 + 1;
   end
  end

 assign add_cnt = cnt==4 ;       
 assign end_cnt = add_cnt && cnt== 34-1;   

 

    always  @(posedge rd_clk or negedge rst_n)begin
        if(rst_n==1'b0)begin
            rd_en <= 0;
        end
        else if(rd_start)begin
            rd_en <= 1;
        end
        else begin
            rd_en <= 0;
        end
    end

    assign rd_start = cnt==4&&(cnt1<=15);
    assign rd_en1 =rd_en;
 //fifo 模块
fifo_generator_0 fifo_test (
  .rst(~rst_n),                  // input wire rst
  .wr_clk(wr_clk),            // input wire wr_clk
  .rd_clk(rd_clk),            // input wire rd_clk
  .din(data_temp1),                  // input wire [15 : 0] din
  .wr_en(wr_en),              // input wire wr_en
  .rd_en(rd_en1),              // input wire rd_en
  .dout(data_out),                // output wire [15 : 0] dout
  .full(full),                // output wire full
  .empty(empty),              // output wire empty
  .wr_rst_busy(wr_rst_busy),  // output wire wr_rst_busy
  .rd_rst_busy(rd_rst_busy)  // output wire rd_rst_busy
);


    endmodule



