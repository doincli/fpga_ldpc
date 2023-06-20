module decode_out(
    clk_50    ,
    clk_500   ,
    rst_n  ,
    code    ,
    ilte_num ,
    //其他信号,举例dout
    decode  
    );

    //参数定义
    parameter      DATA_W =         16;

    //输入信号定义
    input               clk_50      ;
    input               clk_500     ;
    input               rst_n  ;
    input    [3:0]      ilte_num ;
    input   [511:0]     code      ;

    //输出信号定义
    output[DATA_W-1:0]  decode   ;

    //输出信号reg定义
   // reg   [DATA_W-1:0]  dout   ;

    //中间信号定义
   reg  [3:0]  temp_ilte_num ;

   //缓存一下迭代次数
   always  @(posedge clk_500 or negedge rst_n)begin
       if(rst_n==1'b0)begin
           temp_ilte_num <= 0 ;
       end
       else  begin
           temp_ilte_num <= ilte_num ;
       end
   end
   
   //code 缓存
   reg  [511:0]  temp_code;
   always  @(posedge clk_500 or negedge rst_n)begin
       if(rst_n==1'b0)begin
           temp_code <= 0 ;
       end
       else if(temp_ilte_num==9&&ilte_num==0)begin
           temp_code <= code ;
       end
       else begin
          temp_code <= temp_code ;
       end
   end

    //输出的使能控制
    reg out_en ;
    reg [5:0] cnt;
    always  @(posedge clk_500 or negedge rst_n)begin
        if(rst_n==1'b0)begin
            out_en <= 0 ;
        end
        else if(temp_ilte_num==9&&ilte_num==0)begin
            out_en <= 1 ;
        end
        else if(cnt==33)begin
            out_en <= 0 ;
        end
    end
     
    wire add_cnt;
    wire end_cnt;
    
    always @(posedge clk_500 or negedge rst_n)begin
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

    assign add_cnt =out_en ;       
    assign end_cnt = add_cnt && cnt==34-1 ;   

    //fifo 写入使能控制
    reg fifo_wr ;
    always  @(posedge clk_500 or negedge rst_n)begin
        if(rst_n==1'b0)begin
            fifo_wr <= 0 ;
        end
        else begin
            fifo_wr <= out_en ;
        end
    end
  
    
    /*
    //输出模块选择控制
    wire add_cnt2;
    wire end_cnt2;
    reg [1:0] cnt2;
    always @(posedge clk or negedge rst_n)begin
        if(!rst_n)begin
            cnt2 <= 0;
        end
        else if(add_cnt2)begin
            if(end_cnt2)
                cnt2 <= 0;
            else
                cnt2 <= cnt2 + 1;
        end
    end

    assign add_cnt2 = ;       
    assign end_cnt2 = add_cnt2 && cnt2== 1 ;   

   */ 
    
    //缓存3帧数据
    wire add_cnt1;
    wire end_cnt1;
    reg [1:0] cnt1;
    always @(posedge clk_500 or negedge rst_n)begin
        if(!rst_n)begin
            cnt1 <= 0;
        end
        else if(add_cnt1)begin
            if(end_cnt1)
                cnt1 <= 3;
            else
                cnt1 <= cnt1 + 1;
        end
    end

    assign add_cnt1 = cnt==33;       
    assign end_cnt1 = add_cnt1 && cnt1== 3;   


      //fifo 读使能控制
      reg fifo_rd ;
   always  @(posedge clk_500 or negedge rst_n)begin
       if(rst_n==1'b0)begin
           fifo_rd <= 0 ;
       end
       else if(cnt1==3)begin
           fifo_rd <=1 ;
       end
       else begin
           fifo_rd <= fifo_rd ;
       end
   end

      //fifo写入数据的准备
      reg [15:0] fifo_in ;
      always  @(posedge clk_500 or negedge rst_n)begin
          if(rst_n==1'b0)begin
              fifo_in <= 0 ;
          end
          else if(out_en) begin
                        case(cnt)
                        6'd0:fifo_in <=   16'h02bc;
                        6'd1:fifo_in <=   temp_code[511:496];
                        6'd2:fifo_in <=   temp_code[495:480];
                        6'd3:fifo_in <=   temp_code[479:464];
                        6'd4:fifo_in <=   temp_code[463:448];
                        6'd5:fifo_in <=   temp_code[447:432];
                        6'd6:fifo_in <=   temp_code[431:416];
                        6'd7:fifo_in <=   temp_code[415:400];
                        6'd8:fifo_in <=   temp_code[399:384];
                        6'd9:fifo_in <=   temp_code[383:368];
                        6'd10:fifo_in <=  temp_code[367:352];
                        6'd11:fifo_in <=  temp_code[351:336];
                        6'd12:fifo_in <=  temp_code[335:320];
                        6'd13:fifo_in <=  temp_code[319:304];
                        6'd14:fifo_in <=  temp_code[303:288];
                        6'd15:fifo_in <=  temp_code[287:272];
                        6'd16:fifo_in <=  temp_code[271:256];
                        6'd17:fifo_in <=  temp_code[255:240];
                        6'd18:fifo_in <=  temp_code[239:224];
                        6'd19:fifo_in <=  temp_code[223:208];
                        6'd20:fifo_in <=  temp_code[207:192];
                        6'd21:fifo_in <=  temp_code[191:176];                                      
                        6'd22:fifo_in <=  temp_code[175:160];
                        6'd23:fifo_in <=  temp_code[159:144];                    
                        6'd24:fifo_in <=  temp_code[143:128];
                        6'd25:fifo_in <=  temp_code[127:112];
                        6'd26:fifo_in <= temp_code[111:96];                    
                        6'd27:fifo_in <= temp_code[95:80];
                        6'd28:fifo_in <= temp_code[79:64];
                        6'd29:fifo_in <= temp_code[63:48];
                        6'd30:fifo_in <= temp_code[47:32];
                        6'd31:fifo_in <= temp_code[31:16];
                        6'd32:fifo_in <= temp_code[15:0];                              
                        6'd33:fifo_in <= 16'd0 ;                        
                      default: fifo_in =16'd0;
                  endcase
              end          
      end
    
      //fifo ip 调用
      wire full ;
      wire  empty ;
      wire  wr_rst_busy ;
      wire  rd_rst_busy ;
      
fifo_generator_0 fifo_out1 (
  .rst(~rst_n),                  // input wire rst
  .wr_clk(clk_500),            // input wire wr_clk
  .rd_clk(clk_50),            // input wire rd_clk
  .din(fifo_in),                  // input wire [15 : 0] din
  .wr_en(fifo_wr),              // input wire wr_en
  .rd_en(fifo_rd),              // input wire rd_en
  .dout(decode),                // output wire [15 : 0] dout
  .full(full),                // output wire full
  .empty(empty),              // output wire empty
  .wr_rst_busy(wr_rst_busy),  // output wire wr_rst_busy
  .rd_rst_busy(rd_rst_busy)  // output wire rd_rst_busy
);
     
//  decode_ila ila1 (
//	.clk(clk_500), // input wire clk


//	.probe0(ilte_num), // input wire [3:0]  probe0  
//	.probe1(temp_code) // input wire [511:0]  probe1
//);
//  fifo_look fifo_look1 (
//	.clk(clk_500), // input wire clk
//	.probe0(temp_code) // input wire [511:0] probe0
//);
//  ila_0 fifo_look1 (
//        .clk(clk_500), // input wire clk      
//        .probe0(temp_code), // input wire [511:0]  probe0  
//        .probe1(ilte_num), // input wire [3:0]  probe1 
//        .probe2(temp_ilte_num), // input wire [3:0]  probe2 
//        .probe3(fifo_rd), // input wire [0:0]  probe3 
//        .probe4(fifo_wr) // input wire [0:0]  probe4
//    );

    endmodule
