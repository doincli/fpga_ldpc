module module_name(
    clk    ,
    rst_n  ,
    //其他信号,举例dout
    data_in,
    r_en,
    data_out,
    charisk
    );

    //参数定义
    parameter      DATA_W =         16;
    parameter      Rst    =         0;
    parameter      S_out  =         1;
    parameter      P_out  =         2;
    parameter      frame_delay =    3;

    //输入信号定义
    input               clk    ;
    input               rst_n  ;
    input [DATA_W-1:0] data_in ;
    input               r_en ;
    //输出信号定义
    output[DATA_W-1:0]  data_out   ;
    output[1:0]         charisk  ;

    //输出信号reg定义
    reg   [DATA_W-1:0]  data_out   ;
    reg   [1:0]         charisk  ;

    //中间信号定义
    wire  [255:0]   ldpc_data;
    reg   [DATA_W-1:0]  frame_data;
    reg   [DATA_W-1:0]   p_data;  
   

    //编码控制的状态机
    //四段式状态机
    reg [1:0] state_c;
    reg [1:0] state_n;
    wire r2s_start;
    wire s2p_start;
    wire p2f_start;
    wire f2s_start;
 
    //第一段：同步时序always模块，格式化描述次态寄存器迁移到现态寄存器(不需更改）
    always@(posedge clk or negedge rst_n)begin
        if(!rst_n)begin
            state_c <= Rst;
        end
        else begin
            state_c <= state_n;
        end
    end

    //第二段：组合逻辑always模块，描述状态转移条件判断
    always@(*)begin
        case(state_c)
            Rst:begin
                if(r2s_start)begin
                    state_n = S_out;
                end
                else begin
                    state_n = state_c;
                end
            end
            S_out:begin
                if(s2p_start)begin
                    state_n = P_out;
                end
                else begin
                    state_n = state_c;
                end
            end
            P_out:begin
                if(p2f_start)begin
                    state_n = frame_delay;
                end
                else begin
                    state_n = state_c;
                end
            end
            frame_delay:begin
                if(f2s_start)begin
                    state_n = Rst;
                end
                else begin
                    state_n = state_c;
                end
            end
            default:begin
                state_n = Rst;
            end
        endcase
    end

    //第三段：设计转移条件
    assign r2s_start  = state_c==Rst && rst_n=0 ;//高低电平看情况
    assign s2p_start = state_c==S_out    && cnt ==15;
    assign p2f_start   = state_c==P_out    && cnt1 ==15 ;
    assign f2s_start  == state_c ==frame_delay && cnt2 ==1;

    //第四段：同步时序always模块，格式化描述寄存器输出（可有多个输出）
    always  @(posedge clk or negedge rst_n)begin
        if(!rst_n)begin
            data_out <= 0   ;   //初始化
        end
        else if(state_c==S_out&&r_en)begin//  前面16个直接读出
            data_out <= data_in;
        end
        else if(state_c ==P_out&&!r_en)begin//  16个校验位
            data_out <= p_data;
        end
        else if(state_c ==frame_delay&&!r_en)begin   //等待2个时钟
            data_out <= frame_data;
        end
        else begin
            data_out <= 0;                  //情况外为0
        end
    end
    
    //p_data的输出情况
    always  @(*)begin
        case(cnt1)
            4'd0:p_data = ldpc_data[255:240];
            4'd1:p_data = ldpc_data[239:224];
            4'd2:p_data = ldpc_data[223:208];
            4'd3:p_data = ldpc_data[207:192];
            4'd4:p_data = ldpc_data[191:176];
            4'd5:p_data = ldpc_data[175:160];
            4'd6:p_data = ldpc_data[159:144];
            4'd7:p_data = ldpc_data[143:128];
            4'd8:p_data = ldpc_data[127:112];
            4'd9:p_data = ldpc_data[111:96];
            4'd10:p_data = ldpc_data[95:80];
            4'd11:p_data = ldpc_data[79:64];
            4'd12:p_data = ldpc_data[63:48];
            4'd13:p_data = ldpc_data[47:32];
            4'd14:p_data = ldpc_data[31:16];
            4'd15:p_data = ldpc_data[15:0];
            default: p_data =0;
        endcase
    end
    
    //frame_data的输出情况
    always  @(posedge clk or negedge rst_n)begin
        if(rst_n==1'b0)begin
            frame_data <= 0;
        end
        else if(state_c==frame_delay&&cnt2==1) begin
            frame_data <= 16'h02bc;
        end
        else begin
            frame_data <= 0;
        end
    end

    //charisk输出模块
    always  @(posedge clk or negedge rst_n)begin
        if(rst_n==1'b0)begin
            charisk <= 0;
        end
        else if(state_c==frame_delay&&cnt2==1) begin
            charisk <= 2'b01;
        end
        else begin 
            charisk <= 0;
        end
    end

   

    //编码控制的计数器
    //s信息位输出的计数器
    wire add_cnt;
    wire end_cnt;
    reg [3:0] cnt;
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

    assign add_cnt = state_c ==S_out&&r_en ;       
    assign end_cnt = add_cnt && cnt== 16-1 ;   
     
    //p校验位输出的计数器
    wire add_cnt1;
    wire end_cnt1;
    reg [3:0] cnt1;
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

    assign add_cnt1 =state_c ==P_out && !r_en ;       
    assign end_cnt1 = add_cnt1 && cnt1== 16-1 ;   

    //frame成帧的计数器
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

    assign add_cnt2 =state_c ==frame_delay && !r_en ;       
    assign end_cnt2 = add_cnt2 && cnt2== 2-1;   

    //下层模块的调用
    endmodule

