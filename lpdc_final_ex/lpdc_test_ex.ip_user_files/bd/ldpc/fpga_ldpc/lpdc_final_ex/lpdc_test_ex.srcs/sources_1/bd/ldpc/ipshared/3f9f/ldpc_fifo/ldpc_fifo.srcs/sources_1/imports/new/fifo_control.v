module fifo_control(
    clk    ,
    rst_n  ,
    data_in,
   
    data_out,
    rd_clk,
    rd_en
   
    );

    //��������
    parameter      DATA_W =         16;

    //�����źŶ���
    input               clk    ;
    input               rst_n  ;
    input [DATA_W-1:0]  data_in;
   // input [1:0]  charisk_in;
    //����źŶ���
    output[DATA_W-1:0]  data_out     ;
    output  rd_en;
    output rd_clk;

    //����ź�reg����

    reg rd_en;
    //�м��źŶ���
    reg [DATA_W-1:0]  data_temp;
    wire[DATA_W-1:0]  data_temp1; 
    reg wr_en;
    wire wr_clk;
    
    wire rd_start;
    wire full;
    wire empty;
    wire wr_rst_busy;
    wire rd_rst_busy;
    wire rd_en1;
    wire locked;

    //����data,data_temp����fifo
    always  @(posedge wr_clk or negedge rst_n)begin
        if(rst_n==1'b0)begin
            data_temp <= 0;
        end
        else begin
            data_temp <=data_in;
        end
    end
  
    //wr_en���� 02bc���һ��������fifo
    always  @(posedge wr_clk or negedge rst_n)begin
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
    //pll ��Ƶʱ�� ,����wr_clk��rd_clk
 clk_wiz_0 fifo
   (
    // Clock out ports
    .clk_out1(wr_clk),     // output clk_out1
    .clk_out2(rd_clk),     // output clk_out2
    // Status and control signals
    .reset(~rst_n), // input reset   �ߵ�ƽ��Ч�ĸ�λ
    .locked(locked),       // output locked
   // Clock in ports
    .clk_in1(clk));      // input clk_in1
    
    
    //����3֡����
    //����������¼�����˶���֡����
  wire add_cnt;
  wire end_cnt;
  reg [2:0] cnt;
  always @(posedge wr_clk or negedge rst_n)begin
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

  assign add_cnt = data_in == 16'h02bc ;       
  assign end_cnt = add_cnt && cnt== 5-1 ;   



    //rd_en ����
    wire add_cnt1;
    wire end_cnt1;
   reg [5:0] cnt1;
   always @(posedge rd_clk or negedge rst_n)begin
       if(!rst_n)begin
          cnt1 <= 0;
      end
      else if(add_cnt1)begin
          if(end_cnt1)
             cnt1 <= 0;
        else
           cnt1 <= cnt1 + 1;
   end
  end

 assign add_cnt1 = cnt==4 ;       
 assign end_cnt1 = add_cnt1 && cnt1== 34-1;   

 

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
   


 //fifo ģ��
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
