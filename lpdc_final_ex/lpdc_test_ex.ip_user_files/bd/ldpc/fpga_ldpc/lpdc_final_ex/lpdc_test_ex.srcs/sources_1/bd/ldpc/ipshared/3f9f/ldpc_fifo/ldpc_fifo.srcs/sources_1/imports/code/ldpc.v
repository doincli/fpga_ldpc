module ldpc_control(
    clk    ,
    rst_n  ,
    //�����ź�,����dout
    data_in,
    r_en,
    data_out,
    charisk
    );

    //��������
    parameter      DATA_W =         16;
    parameter      Rst    =         0;
    parameter      S_out  =         1;
    parameter      P_out  =         2;
    parameter      frame_delay =    3;

    //�����źŶ���
    input               clk    ;
    input               rst_n  ;
    input [DATA_W-1:0] data_in ;
    input               r_en ;
    //����źŶ���
    output[DATA_W-1:0]  data_out   ;
    output[1:0]         charisk  ;

    //����ź�reg����
    reg   [DATA_W-1:0]  data_out   ;
    reg   [1:0]         charisk  ;

    //�м��źŶ���
    wire  [255:0]   ldpc_data;
    reg   [DATA_W-1:0]  frame_data;
    reg   [DATA_W-1:0]   p_data;  
   

    //������Ƶ�״̬��
    //�Ķ�ʽ״̬��
    reg [1:0] state_c;
    reg [1:0] state_n;
    wire r2s_start;
    wire s2p_start;
    wire p2f_start;
    wire f2s_start;
    reg [4:0] cnt;
    reg [3:0] cnt1;
    wire  cnt2;
    
    //��һ�Σ�ͬ��ʱ��alwaysģ�飬��ʽ��������̬�Ĵ���Ǩ�Ƶ���̬�Ĵ���(������ģ�
    always@(posedge clk or negedge rst_n)begin
        if(!rst_n)begin
            state_c <= Rst;
        end
        else begin
            state_c <= state_n;
        end
    end

    //�ڶ��Σ�����߼�alwaysģ�飬����״̬ת�������ж�
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
                    state_n = S_out;
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

    //�����Σ����ת������
    assign r2s_start  = state_c == Rst && rst_n==1 ;//�ߵ͵�ƽ�����
    assign s2p_start = state_c==S_out    && cnt ==16;
    assign p2f_start = state_c==P_out    && cnt1 ==15 ;
    assign f2s_start = state_c ==frame_delay && cnt2 ==0;

    //���ĶΣ�ͬ��ʱ��alwaysģ�飬��ʽ�������Ĵ�����������ж�������
    always  @(posedge clk or negedge rst_n)begin
        if(!rst_n)begin
            data_out <= 0   ;   //��ʼ��
        end
        else if(state_c==S_out&&cnt>=1)begin//  ǰ��16��ֱ�Ӷ���
            data_out <= data_in;
        end
        else if(state_c==S_out&&cnt==0)begin//  ǰ��16��ֱ�Ӷ���
                    data_out <= 16'h02bc;
                    
                end
        else if(state_c ==P_out)begin//  16��У��λ
            data_out <= p_data;
        end
        else if(state_c ==frame_delay)begin   //�ȴ�2��ʱ��
            data_out <= 0;
        end
        else begin
            data_out <= 0;     
                         //�����Ϊ0
        end
    end
    
    //p_data��������
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
    
//    //frame_data��������
//    always  @(posedge clk or negedge rst_n)begin
//        if(rst_n==1'b0)begin
//            frame_data <= 0;
//        end
//        else if(state_c==frame_delay) begin
//            frame_data <= 16'h02bc;
//        end
//        else begin
//            frame_data <= 0;
//        end
//    end

//    charisk���ģ��
    always  @(posedge clk or negedge rst_n)begin
        if(rst_n==1'b0)begin
            charisk <= 0;
        end
        else if(state_c==S_out&&cnt==0) begin
            charisk <= 2'b01;
        end
        else begin 
            charisk <= 0;
        end
    end

   

    //������Ƶļ�����
    //s��Ϣλ����ļ�����
    wire add_cnt;
    wire end_cnt;
    
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

    assign add_cnt = state_c ==S_out ;       
    assign end_cnt = add_cnt && cnt== 17-1 ;   
     
    //pУ��λ����ļ�����
    wire add_cnt1;
    wire end_cnt1;
    
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

    assign add_cnt1 =state_c ==P_out;       
    assign end_cnt1 = add_cnt1 && cnt1== 16-1 ;   

    //frame��֡�ļ�����
    assign cnt2=0;
//    wire add_cnt2;
//    wire end_cnt2;
    
//    always @(posedge clk or negedge rst_n)begin
//        if(!rst_n)begin
//            cnt2 <= 0;
//        end
//        else if(add_cnt2)begin
//            if(end_cnt2)
//                cnt2 <= 0;
//            else
//                cnt2 <= cnt2 + 1;
//        end
//    end

//    assign add_cnt2 =state_c ==frame_delay && !r_en ;       
//    assign end_cnt2 = add_cnt2 && cnt2== 0;   
      
    //ROM�˵�ַ������
    reg   [    3: 0]        addra ;
    wire add_cnt3;
    wire end_cnt3;
    
    always @(posedge clk or negedge rst_n)begin
        if(!rst_n)begin
            addra <= 0;
        end
        else if(add_cnt3)begin
            if(end_cnt3)
                addra <= 0;
            else
                addra <= addra + 1;
        end
    end

    assign add_cnt3 = r_en;       
    assign end_cnt3 = add_cnt3 && addra==16-1 ;   

      wire [1023:0]  rom_data1;
      wire [1023:0]  rom_data2;
      wire [1023:0]  rom_data3;
      wire [1023:0]  rom_data4;


     //����ʱ�����
     reg ldpc_en1;
     wire ldpc_en;
     always  @(posedge clk or negedge rst_n)begin
         if(rst_n==1'b0)begin
             ldpc_en1 <= 0 ;
         end
         else begin
             ldpc_en1 <= r_en;
         end
     end
   assign ldpc_en =ldpc_en1;//ldpc_en�Ǳ����ʹ���ź�
    //�²�ģ��ĵ���  
    //ROM����
H1 h1 (
  .clka(clk),    // input wire clka
  .addra(addra),  // input wire [3 : 0] addra
  .douta(rom_data1)  // output wire [1023 : 0] douta
);

H2 h2 (
  .clka(clk),    // input wire clka
  .addra(addra),  // input wire [3 : 0] addra
  .douta(rom_data2)  // output wire [1023 : 0] douta
);

h3 h3 (
  .clka(clk),    // input wire clka
  .addra(addra),  // input wire [3 : 0] addra
  .douta(rom_data3)  // output wire [1023 : 0] douta
);
    
H4 h4 (
  .clka(clk),    // input wire clka
  .addra(addra),  // input wire [3 : 0] addra
  .douta(rom_data4)  // output wire [1023 : 0] douta
);

//ldpc����ģ�����
encode u1(
  .fifo_in(data_in),
  .H_data(rom_data1),
  .clk(clk),
  .rst(rst_n),
  .encode_en(ldpc_en),
  .encoder_count(cnt),
  .p_out(ldpc_data[255:192])
);

 encode u2(
  .fifo_in(data_in),
  .H_data(rom_data2),
  .clk(clk),
  .rst(rst_n),
  .encode_en(ldpc_en),
  .encoder_count(cnt),
  .p_out(ldpc_data[191:128])
);

encode u3(
  .fifo_in(data_in),
  .H_data(rom_data3),
  .clk(clk),
  .rst(rst_n),
  .encode_en(ldpc_en),
  .encoder_count(cnt),
  .p_out(ldpc_data[127:64])
);

encode u4(
  .fifo_in(data_in),
  .H_data(rom_data4),
  .clk(clk),
  .rst(rst_n),
  .encode_en(ldpc_en),
  .encoder_count(cnt),
  .p_out(ldpc_data[63:0])
);

//ila
ila_0 ldpc (
	.clk(clk), // input wire clk


	.probe0(data_out), // input wire [15:0]  probe0  
	.probe1(charisk) // input wire [1:0]  probe1
);
    endmodule

