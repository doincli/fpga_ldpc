module buff( 
    clk_50    ,
    clk_500    ,
    rst_n  ,
    din    ,
    tem_vaild ,
    dataout_sel,
    buff_out

    );

    //参数定义
    parameter      DATA_W =         16;
    parameter      DATA_R =         64;

    //输入信号定义
    input               clk_50    ;
    input               clk_500    ;
    input               rst_n  ;
    input[DATA_W-1:0]   din    ; 
    //输出信号定义
//    output[255:0]  data_out  ;
    output   tem_vaild         ;
    output [DATA_R-1:0]   buff_out  ;
    output [2:0]     dataout_sel ;
    
      reg   tem_vaild           ;
      reg  wea;    
      reg  rd_en;       
    reg [2:0] dataout_sel ;
      wire full ;
      //wea contrl
      wire add_cnt;
      wire end_cnt;
      reg [5:0] cnt;
      always @(posedge clk_50 or negedge rst_n)begin
          if(!rst_n)begin
              cnt <= 0;
          end
          else if(add_cnt)begin
              if(end_cnt)
                  cnt <= 0;
              else
                  cnt <= cnt + 1;
          end
      end

      assign add_cnt = wea==1 ;       
      assign end_cnt = add_cnt && cnt==31;   
    
    //缓存模块
      reg [63:0]  temp   ;
      always  @(posedge clk_50 or negedge rst_n)begin
          if(rst_n==1'b0)begin
               temp <= 0;
          end
          else begin             
                  case(cnt)
                                        5'd0:temp[63:48] <= din;
                                        5'd1:temp[47:32] <= din;
                                        5'd2:temp[31:16] <= din;
                                        5'd3:temp[15:0]  <= din;
                                        5'd4:temp[63:48] <= din;
                                        5'd5:temp[47:32] <= din;
                                        5'd6:temp[31:16] <= din;
                                        5'd7:temp[15:0]  <= din;
                                        5'd8:temp[63:48]  <= din;
                                        5'd9:temp[47:32] <= din;
                                        5'd10:temp[31:16]  <= din;
                                        5'd11:temp[15:0]  <= din;
                                        5'd12:temp[63:48]  <= din;
                                        5'd13:temp[47:32]  <= din;
                                        5'd14:temp[31:16] <= din;
                                        5'd15:temp[15:0]   <= din;
                                        5'd16:temp[63:48] <= din;
                                        5'd17:temp[47:32] <= din;
                                        5'd18:temp[31:16] <= din;
                                        5'd19:temp[15:0]  <= din;
                                        5'd20:temp[63:48] <= din;
                                        5'd21:temp[47:32] <= din;                                      
                                        5'd22:temp[31:16] <= din;
                                        5'd23:temp[15:0] <= din;                    
                                        5'd24:temp[63:48] <= din;
                                        5'd25:temp[47:32] <= din;                    
                                        5'd26:temp[31:16] <= din;
                                        5'd27:temp[15:0] <= din;
                                        5'd28:temp[63:48] <= din;
                                        5'd29:temp[47:32] <= din;
                                        5'd30:temp[31:16]  <= din;
                                        5'd31:temp[15:0]  <= din;                                        
                      default: temp =64'd0;
                  endcase
              end          
      end


      //wea control
      always  @(posedge clk_50 or negedge rst_n)begin
          if(rst_n==1'b0)begin
              wea <= 0;
          end
          else if(din==16'h02bc&&full==0)begin//&&full==0
              wea <= 1;
          end
          else if(cnt ==31) begin
              wea <= 0;
          end
         
      end

    //缓存3帧数据
    //计数器，记录缓存了多少帧数据
  wire add_cnt3;
  wire end_cnt3;
  reg [2:0] cnt3;
  always @(posedge clk_50 or negedge rst_n)begin
      if(!rst_n)begin
          cnt3 <= 0;
      end
      else if(add_cnt3)begin
          if(end_cnt3)
              cnt3 <= 3;
          else
              cnt3 <= cnt3 + 1;
      end
  end

  assign add_cnt3 = din == 16'h02bc ;       
  assign end_cnt3 = add_cnt3 && cnt3== 4-1 ;   


       //写进去的  wr_en
      wire rd_add;
      wire rd_add1;
      always  @(posedge clk_50 or negedge rst_n)begin
          if(rst_n==1'b0)begin 
              rd_en <= 0;
          end
          else if(rd_add) begin
              rd_en <= 1;
          end
          else begin 
              rd_en <=0;
          end
      end
      assign  rd_add =cnt==3||cnt==7||cnt==11||cnt==15||cnt==19||cnt==23||cnt==27||cnt==31;


      //RD delay
       
      //rd_en control

      wire add_cnt2;
      wire end_cnt2;
      reg [3:0] cnt2;
      always @(posedge clk_500 or negedge rst_n)begin  //倍频的
          if(!rst_n)begin
              cnt2 <= 0;
          end
          else if(add_cnt2)begin
              if(end_cnt2)
                  cnt2 <= 0;
              else
                  cnt2 <= cnt2 + 1;
          end
          else begin
           cnt2<= 0;
           end
      end

      assign add_cnt2 =tem_vaild ;       
      assign end_cnt2 = add_cnt2 && cnt2==11 ;  

//reg [2:0] star ;
//    always  @(posedge clk_50 or negedge rst_n)begin  //倍频的
//          if(rst_n==1'b0)begin
//              star <= 0;
//          end
//          else begin
//              star <= cnt3 ;
//          end
//          end

    always  @(posedge clk_500 or negedge rst_n)begin  //倍频的
          if(rst_n==1'b0)begin
              tem_vaild <= 0;
          end
          else if(cnt==31&&cnt3==3)begin
              tem_vaild <= 1 ;
          end
          else if(cnt2==7)begin
              tem_vaild <= 0;
          end
          else begin
              tem_vaild <= tem_vaild ;
          end
      end
     
    //边沿检测
    reg temp_tem_vaild ;
    always  @(posedge clk_500 or negedge rst_n)begin
        if(rst_n==1'b0)begin
            temp_tem_vaild <= 0 ;
        end
        else begin
            temp_tem_vaild <= tem_vaild ;
        end
    end


      //多路选择的计数器
    wire add_cnt4;
    wire end_cnt4;
   
    always @(posedge clk_500 or negedge rst_n)begin
        if(!rst_n)begin
            dataout_sel <= 0;
        end
        else if(add_cnt4)begin
            if(end_cnt4)
                dataout_sel <= 0;
            else
                dataout_sel <= dataout_sel + 1;
        end
    end

    assign add_cnt4 = tem_vaild==0&&temp_tem_vaild==1 ;       
    assign end_cnt4 = add_cnt4 && dataout_sel== 4;   



    
    wire empty ;
    wire wr_rst_busy;
    wire rd_rst_busy ;
    fifo_in fifoin (
      .rst(~rst_n),                  // input wire rst
      .wr_clk(clk_50),            // input wire wr_clk
      .rd_clk(clk_500),            // input wire rd_clk
      .din(temp),                  // input wire [63 : 0] din
      .wr_en(rd_en),              // input wire wr_en
      .rd_en(tem_vaild),              // input wire rd_en
      .dout(buff_out),                // output wire [63 : 0] dout
      .full(full),                // output wire full
      .empty(empty),              // output wire empty
      .wr_rst_busy(wr_rst_busy),  // output wire wr_rst_busy
      .rd_rst_busy(rd_rst_busy)  // output wire rd_rst_busy
    );
//    fifo_in fifo_in (
//      .rst(~rst_n),        // input wire rst
//      .wr_clk(clk_50),  // input wire wr_clk
//      .rd_clk(clk_500),  // input wire rd_clk
//      .din(temp),        // input wire [63 : 0] din
//      .wr_en(rd_en),    // input wire wr_en
//      .rd_en(tem_vaild),    // input wire rd_en
//      .dout(buff_out),      // output wire [63 : 0] dout
//      .full(full),      // output wire full
//      .empty(empty)    // output wire empty
//    );
      endmodule
