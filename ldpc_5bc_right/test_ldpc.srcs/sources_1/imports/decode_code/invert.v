module invert(
    clk    ,
    rst_n  ,
    max    ,
    count  ,
    din    ,
    rd_en  ,
    invert_en ,
    //其他信号,举例dout
    invert_out ,
    error_en,
    cnt_num  ,
    c_code
    
    );

    //参数定义
    parameter      DATA_W =         64;

    //输入信号定义
    input               clk    ;
    input               rst_n  ;
    input      [9:0]    count  ;
    input      [7:0]    max   ;
    input               rd_en  ;
    input      [DATA_W-1:0]  din ;
    input              invert_en ;

    //输出信号定义
    output[DATA_W-1:0]  invert_out   ;
    output   [3:0]      cnt_num ;
    output    error_en  ;
    output [511:0] c_code;
   // output  [63:0]  pre_decode ;
    //输出信号reg定义
    reg   [DATA_W-1:0]  invert_out   ;
//    reg    [2:0]      cnt   ;
    reg   error_en ;
    //中间信号定义
     reg [511:0] c_code; 


    
     //缓存计数器
     wire add_cnt;
     wire end_cnt;
     reg [2:0] cnt;
     always @(posedge clk or negedge rst_n)begin
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

     assign add_cnt =rd_en ;       
     assign end_cnt = add_cnt && cnt==7 ;   


    always  @(posedge clk or negedge rst_n)begin
        if(rst_n==1'b0)begin
            c_code <= 0;
        end
         else if(invert_en&&max!=0)begin                 //invert
                   c_code[count] <= ~c_code[count];
               end
        else if(rd_en) begin
                case(cnt)
                        3'd0:c_code[511:448] <= din;
                        3'd1:c_code[447:384] <= din;
                        3'd2:c_code[383:320] <= din;
                        3'd3:c_code[319:256]  <= din;
                        3'd4:c_code[255:192] <= din;
                        3'd5:c_code[191:128] <= din;
                        3'd6:c_code[127:64] <= din;
                        3'd7:c_code[63:0]  <= din;                   
                    default: c_code <= 0;
                endcase          
        end
       
        else begin
            c_code <= c_code ;
        end
    end
    
     //out en
      wire add_cnt1;
      wire end_cnt1;
      reg [2:0] cnt1;
     reg out_en ;
     always  @(posedge clk or negedge rst_n)begin
         if(rst_n==1'b0)begin
             out_en <= 0;
         end
         else if(invert_en)begin
             out_en <= 1 ;
         end
         else if(cnt1==7) begin
             out_en <= 0 ;
         end
         else begin
             out_en <= out_en ;
         end
     end
    
     
     always @(posedge clk or negedge rst_n)begin
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

     assign add_cnt1 =out_en ;       
     assign end_cnt1 = add_cnt1 && cnt1== 7;   

    
     


     //输出模块
     always  @(posedge clk or negedge rst_n)begin
         if(rst_n==1'b0)begin
             invert_out <= 0 ;
         end
         else if(out_en)begin
             case(cnt1)
                        3'd0:invert_out<=c_code[511:448] ;
                        3'd1:invert_out<=c_code[447:384] ;
                        3'd2:invert_out<=c_code[383:320] ;
                        3'd3:invert_out<=c_code[319:256] ;
                        3'd4:invert_out<=c_code[255:192] ;
                        3'd5:invert_out<=c_code[191:128] ;
                        3'd6:invert_out<=c_code[127:64];
                        3'd7:invert_out<=c_code[63:0]  ;                   
                    default: invert_out <= 0;
                endcase  
         end
         else begin
             invert_out <= invert_out ;
         end
     end
   
     /*
   //译码输出模块
   reg [63:0] decode ;
    always  @(posedge clk or negedge rst_n)begin
           if(rst_n==1'b0)begin
               decode <= 0 ;
           end
           else if(out_en&&cnt_num==9)begin
               case(cnt1)
                          3'd0:decode<=c_code[511:448] ;
                          3'd1:decode<=c_code[447:384] ;
                          3'd2:decode<=c_code[383:320] ;
                          3'd3:decode<=c_code[319:256] ;
                          3'd4:decode<=c_code[255:192] ;
                          3'd5:decode<=c_code[191:128] ;
                          3'd6:decode<=c_code[127:64];
                          3'd7:decode<=c_code[63:0]  ;                   
                      default: decode <= 0;
                  endcase  
           end
           else begin
               decode <= decode ;
           end
       end
*/
     //迭代次数计数器
     wire add_cnt2;
     wire end_cnt2;
     reg [3:0] cnt_num;
     always @(posedge clk or negedge rst_n)begin
         if(!rst_n)begin
             cnt_num <= 0;
         end
         else if(add_cnt2)begin
             if(end_cnt2)
                 cnt_num <= 0;
             else
                 cnt_num <= cnt_num + 1;
         end
     end

     assign add_cnt2 =invert_en ;       
     assign end_cnt2 = add_cnt2 && cnt_num==9 ;   

    //error _en
    always  @(posedge clk or negedge rst_n)begin
        if(rst_n==1'b0)begin
            error_en <= 0;
        end
        else begin
            error_en <= out_en ;
        end
    end

    endmodule

