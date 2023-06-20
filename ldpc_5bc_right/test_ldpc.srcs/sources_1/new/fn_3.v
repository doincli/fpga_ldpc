`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module fn_3(
    clk    ,
    rst_n  ,
    s_data_in   ,
    s_H_in      ,
    pre_en        , 
    //其他信号,举例dout
    data_out0 ,
data_out1 ,
data_out2 ,
data_out3 ,
data_out4 ,
data_out5 ,
data_out6 ,
data_out7 ,
data_out8 ,
data_out9 ,
data_out10 ,
data_out11 ,
data_out12 ,
data_out13 ,
data_out14 ,
data_out15 ,
data_out16 ,
data_out17 ,
data_out18 ,
data_out19 ,
data_out20 ,
data_out21 ,
data_out22 ,
data_out23 ,
data_out24 ,
data_out25 ,
data_out26 ,
data_out27 ,
data_out28 ,
data_out29 ,
data_out30 ,
data_out31 ,
data_out32 ,
data_out33 ,
data_out34 ,
data_out35 ,
data_out36 ,
data_out37 ,
data_out38 ,
data_out39 ,
data_out40 ,
data_out41 ,
data_out42 ,
data_out43 ,
data_out44 ,
data_out45 ,
data_out46 ,
data_out47 ,
data_out48 ,
data_out49 ,
data_out50 ,
data_out51 ,
data_out52 ,
data_out53 ,
data_out54 ,
data_out55 ,
data_out56 ,
data_out57 ,
data_out58 ,
data_out59 ,
data_out60 ,
data_out61 ,
data_out62 ,
data_out63 ,
      
    cnt
    );


    //参数定义
    parameter      DATA_W =         64;
    parameter      DATA_H =         4096;
    parameter      W_BIT =         4;
    //输入信号定义
    input               clk    ;
    input               rst_n  ;
    input [DATA_W-1:0] s_data_in ;
    input [DATA_H-1:0] s_H_in ;
    input              pre_en   ;

    //输出信号定义 
output [W_BIT-1:0] data_out0 ;
output [W_BIT-1:0] data_out1 ;
output [W_BIT-1:0] data_out2 ;
output [W_BIT-1:0] data_out3 ;
output [W_BIT-1:0] data_out4 ;
output [W_BIT-1:0] data_out5 ;
output [W_BIT-1:0] data_out6 ;
output [W_BIT-1:0] data_out7 ;
output [W_BIT-1:0] data_out8 ;
output [W_BIT-1:0] data_out9 ;
output [W_BIT-1:0] data_out10 ;
output [W_BIT-1:0] data_out11 ;
output [W_BIT-1:0] data_out12 ;
output [W_BIT-1:0] data_out13 ;
output [W_BIT-1:0] data_out14 ;
output [W_BIT-1:0] data_out15 ;
output [W_BIT-1:0] data_out16 ;
output [W_BIT-1:0] data_out17 ;
output [W_BIT-1:0] data_out18 ;
output [W_BIT-1:0] data_out19 ;
output [W_BIT-1:0] data_out20 ;
output [W_BIT-1:0] data_out21 ;
output [W_BIT-1:0] data_out22 ;
output [W_BIT-1:0] data_out23 ;
output [W_BIT-1:0] data_out24 ;
output [W_BIT-1:0] data_out25 ;
output [W_BIT-1:0] data_out26 ;
output [W_BIT-1:0] data_out27 ;
output [W_BIT-1:0] data_out28 ;
output [W_BIT-1:0] data_out29 ;
output [W_BIT-1:0] data_out30 ;
output [W_BIT-1:0] data_out31 ;
output [W_BIT-1:0] data_out32 ;
output [W_BIT-1:0] data_out33 ;
output [W_BIT-1:0] data_out34 ;
output [W_BIT-1:0] data_out35 ;
output [W_BIT-1:0] data_out36 ;
output [W_BIT-1:0] data_out37 ;
output [W_BIT-1:0] data_out38 ;
output [W_BIT-1:0] data_out39 ;
output [W_BIT-1:0] data_out40 ;
output [W_BIT-1:0] data_out41 ;
output [W_BIT-1:0] data_out42 ;
output [W_BIT-1:0] data_out43 ;
output [W_BIT-1:0] data_out44 ;
output [W_BIT-1:0] data_out45 ;
output [W_BIT-1:0] data_out46 ;
output [W_BIT-1:0] data_out47 ;
output [W_BIT-1:0] data_out48 ;
output [W_BIT-1:0] data_out49 ;
output [W_BIT-1:0] data_out50 ;
output [W_BIT-1:0] data_out51 ;
output [W_BIT-1:0] data_out52 ;
output [W_BIT-1:0] data_out53 ;
output [W_BIT-1:0] data_out54 ;
output [W_BIT-1:0] data_out55 ;
output [W_BIT-1:0] data_out56 ;
output [W_BIT-1:0] data_out57 ;
output [W_BIT-1:0] data_out58 ;
output [W_BIT-1:0] data_out59 ;
output [W_BIT-1:0] data_out60 ;
output [W_BIT-1:0] data_out61 ;
output [W_BIT-1:0] data_out62 ;
output [W_BIT-1:0] data_out63 ;
output [2:0]    cnt;
    //输出信号reg定义
reg [W_BIT-1:0] data_out0 ;
reg [W_BIT-1:0] data_out1 ;
reg [W_BIT-1:0] data_out2 ;
reg [W_BIT-1:0] data_out3 ;
reg [W_BIT-1:0] data_out4 ;
reg [W_BIT-1:0] data_out5 ;
reg [W_BIT-1:0] data_out6 ;
reg [W_BIT-1:0] data_out7 ;
reg [W_BIT-1:0] data_out8 ;
reg [W_BIT-1:0] data_out9 ;
reg [W_BIT-1:0] data_out10 ;
reg [W_BIT-1:0] data_out11 ;
reg [W_BIT-1:0] data_out12 ;
reg [W_BIT-1:0] data_out13 ;
reg [W_BIT-1:0] data_out14 ;
reg [W_BIT-1:0] data_out15 ;
reg [W_BIT-1:0] data_out16 ;
reg [W_BIT-1:0] data_out17 ;
reg [W_BIT-1:0] data_out18 ;
reg [W_BIT-1:0] data_out19 ;
reg [W_BIT-1:0] data_out20 ;
reg [W_BIT-1:0] data_out21 ;
reg [W_BIT-1:0] data_out22 ;
reg [W_BIT-1:0] data_out23 ;
reg [W_BIT-1:0] data_out24 ;
reg [W_BIT-1:0] data_out25 ;
reg [W_BIT-1:0] data_out26 ;
reg [W_BIT-1:0] data_out27 ;
reg [W_BIT-1:0] data_out28 ;
reg [W_BIT-1:0] data_out29 ;
reg [W_BIT-1:0] data_out30 ;
reg [W_BIT-1:0] data_out31 ;
reg [W_BIT-1:0] data_out32 ;
reg [W_BIT-1:0] data_out33 ;
reg [W_BIT-1:0] data_out34 ;
reg [W_BIT-1:0] data_out35 ;
reg [W_BIT-1:0] data_out36 ;
reg [W_BIT-1:0] data_out37 ;
reg [W_BIT-1:0] data_out38 ;
reg [W_BIT-1:0] data_out39 ;
reg [W_BIT-1:0] data_out40 ;
reg [W_BIT-1:0] data_out41 ;
reg [W_BIT-1:0] data_out42 ;
reg [W_BIT-1:0] data_out43 ;
reg [W_BIT-1:0] data_out44 ;
reg [W_BIT-1:0] data_out45 ;
reg [W_BIT-1:0] data_out46 ;
reg [W_BIT-1:0] data_out47 ;
reg [W_BIT-1:0] data_out48 ;
reg [W_BIT-1:0] data_out49 ;
reg [W_BIT-1:0] data_out50 ;
reg [W_BIT-1:0] data_out51 ;
reg [W_BIT-1:0] data_out52 ;
reg [W_BIT-1:0] data_out53 ;
reg [W_BIT-1:0] data_out54 ;
reg [W_BIT-1:0] data_out55 ;
reg [W_BIT-1:0] data_out56 ;
reg [W_BIT-1:0] data_out57 ;
reg [W_BIT-1:0] data_out58 ;
reg [W_BIT-1:0] data_out59 ;
reg [W_BIT-1:0] data_out60 ;
reg [W_BIT-1:0] data_out61 ;
reg [W_BIT-1:0] data_out62 ;
reg [W_BIT-1:0] data_out63 ;
    
 
    
    reg   [2:0]         cnt        ;
    //中间信号定义
    reg   r_en    ;
//cnt计数器
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
    else begin
        cnt <= 0 ;
    end
end

assign add_cnt =r_en ;       
assign end_cnt = add_cnt && cnt==7 ;   

    //编码使能控制
    always  @(posedge clk or negedge rst_n)begin
        if(rst_n==1'b0)begin
            r_en <= 0;
        end
        else begin
            r_en <= pre_en ;
        end
    end

   //fn计算模块
    always  @(posedge clk or negedge rst_n)begin
        if(rst_n==1'b0)begin
        data_out0 <= 0 ;
        data_out1 <= 0 ;
        data_out2 <= 0 ;
        data_out3 <= 0 ;
        data_out4 <= 0 ;
        data_out5 <= 0 ;
        data_out6 <= 0 ;
        data_out7 <= 0 ;
        data_out8 <= 0 ;
        data_out9 <= 0 ;
        data_out10 <= 0 ;
        data_out11 <= 0 ;
        data_out12 <= 0 ;
        data_out13 <= 0 ;
        data_out14 <= 0 ;
        data_out15 <= 0 ;
        data_out16 <= 0 ;
        data_out17 <= 0 ;
        data_out18 <= 0 ;
        data_out19 <= 0 ;
        data_out20 <= 0 ;
        data_out21 <= 0 ;
        data_out22 <= 0 ;
        data_out23 <= 0 ;
        data_out24 <= 0 ;
        data_out25 <= 0 ;
        data_out26 <= 0 ;
        data_out27 <= 0 ;
        data_out28 <= 0 ;
        data_out29 <= 0 ;
        data_out30 <= 0 ;
        data_out31 <= 0 ;
        data_out32 <= 0 ;
        data_out33 <= 0 ;
        data_out34 <= 0 ;
        data_out35 <= 0 ;
        data_out36 <= 0 ;
        data_out37 <= 0 ;
        data_out38 <= 0 ;
        data_out39 <= 0 ;
        data_out40 <= 0 ;
        data_out41 <= 0 ;
        data_out42 <= 0 ;
        data_out43 <= 0 ;
        data_out44 <= 0 ;
        data_out45 <= 0 ;
        data_out46 <= 0 ;
        data_out47 <= 0 ;
        data_out48 <= 0 ;
        data_out49 <= 0 ;
        data_out50 <= 0 ;
        data_out51 <= 0 ;
        data_out52 <= 0 ;
        data_out53 <= 0 ;
        data_out54 <= 0 ;
        data_out55 <= 0 ;
        data_out56 <= 0 ;
        data_out57 <= 0 ;
        data_out58 <= 0 ;
        data_out59 <= 0 ;
        data_out60 <= 0 ;
        data_out61 <= 0 ;
        data_out62 <= 0 ;
        data_out63 <= 0 ;         
        end
        else if(r_en&&cnt==0)begin
       data_out0<=(s_data_in[9]&s_H_in[576])+(s_data_in[54]&s_H_in[3456]);
        data_out1<=(s_data_in[10]&s_H_in[641])+(s_data_in[55]&s_H_in[3521]);
        data_out2<=(s_data_in[11]&s_H_in[706])+(s_data_in[56]&s_H_in[3586]);
        data_out3<=(s_data_in[12]&s_H_in[771])+(s_data_in[57]&s_H_in[3651]);
        data_out4<=(s_data_in[13]&s_H_in[836])+(s_data_in[58]&s_H_in[3716]);
        data_out5<=(s_data_in[14]&s_H_in[901])+(s_data_in[59]&s_H_in[3781]);
        data_out6<=(s_data_in[15]&s_H_in[966])+(s_data_in[60]&s_H_in[3846]);
        data_out7<=(s_data_in[16]&s_H_in[1031])+(s_data_in[61]&s_H_in[3911]);
        data_out8<=(s_data_in[17]&s_H_in[1096])+(s_data_in[62]&s_H_in[3976]);
        data_out9<=(s_data_in[18]&s_H_in[1161])+(s_data_in[63]&s_H_in[4041]);
        data_out10<=(s_data_in[19]&s_H_in[1226])+(s_data_in[32]&s_H_in[2058]);
        data_out11<=(s_data_in[20]&s_H_in[1291])+(s_data_in[33]&s_H_in[2123]);
        data_out12<=(s_data_in[21]&s_H_in[1356])+(s_data_in[34]&s_H_in[2188]);
        data_out13<=(s_data_in[22]&s_H_in[1421])+(s_data_in[35]&s_H_in[2253]);
        data_out14<=(s_data_in[23]&s_H_in[1486])+(s_data_in[36]&s_H_in[2318]);
        data_out15<=(s_data_in[24]&s_H_in[1551])+(s_data_in[37]&s_H_in[2383]);
        data_out16<=(s_data_in[25]&s_H_in[1616])+(s_data_in[38]&s_H_in[2448]);
        data_out17<=(s_data_in[26]&s_H_in[1681])+(s_data_in[39]&s_H_in[2513]);
        data_out18<=(s_data_in[27]&s_H_in[1746])+(s_data_in[40]&s_H_in[2578]);
        data_out19<=(s_data_in[28]&s_H_in[1811])+(s_data_in[41]&s_H_in[2643]);
        data_out20<=(s_data_in[29]&s_H_in[1876])+(s_data_in[42]&s_H_in[2708]);
        data_out21<=(s_data_in[30]&s_H_in[1941])+(s_data_in[43]&s_H_in[2773]);
        data_out22<=(s_data_in[31]&s_H_in[2006])+(s_data_in[44]&s_H_in[2838]);
        data_out23<=(s_data_in[0]&s_H_in[23])+(s_data_in[45]&s_H_in[2903]);
        data_out24<=(s_data_in[1]&s_H_in[88])+(s_data_in[46]&s_H_in[2968]);
        data_out25<=(s_data_in[2]&s_H_in[153])+(s_data_in[47]&s_H_in[3033]);
        data_out26<=(s_data_in[3]&s_H_in[218])+(s_data_in[48]&s_H_in[3098]);
        data_out27<=(s_data_in[4]&s_H_in[283])+(s_data_in[49]&s_H_in[3163]);
        data_out28<=(s_data_in[5]&s_H_in[348])+(s_data_in[50]&s_H_in[3228]);
        data_out29<=(s_data_in[6]&s_H_in[413])+(s_data_in[51]&s_H_in[3293]);
        data_out30<=(s_data_in[7]&s_H_in[478])+(s_data_in[52]&s_H_in[3358]);
        data_out31<=(s_data_in[8]&s_H_in[543])+(s_data_in[53]&s_H_in[3423]);
        data_out32<=(s_data_in[7]&s_H_in[480])+(s_data_in[51]&s_H_in[3296]);
        data_out33<=(s_data_in[8]&s_H_in[545])+(s_data_in[52]&s_H_in[3361]);
        data_out34<=(s_data_in[9]&s_H_in[610])+(s_data_in[53]&s_H_in[3426]);
        data_out35<=(s_data_in[10]&s_H_in[675])+(s_data_in[54]&s_H_in[3491]);
        data_out36<=(s_data_in[11]&s_H_in[740])+(s_data_in[55]&s_H_in[3556]);
        data_out37<=(s_data_in[12]&s_H_in[805])+(s_data_in[56]&s_H_in[3621]);
        data_out38<=(s_data_in[13]&s_H_in[870])+(s_data_in[57]&s_H_in[3686]);
        data_out39<=(s_data_in[14]&s_H_in[935])+(s_data_in[58]&s_H_in[3751]);
        data_out40<=(s_data_in[15]&s_H_in[1000])+(s_data_in[59]&s_H_in[3816]);
        data_out41<=(s_data_in[16]&s_H_in[1065])+(s_data_in[60]&s_H_in[3881]);
        data_out42<=(s_data_in[17]&s_H_in[1130])+(s_data_in[61]&s_H_in[3946]);
        data_out43<=(s_data_in[18]&s_H_in[1195])+(s_data_in[62]&s_H_in[4011]);
        data_out44<=(s_data_in[19]&s_H_in[1260])+(s_data_in[63]&s_H_in[4076]);
        data_out45<=(s_data_in[20]&s_H_in[1325])+(s_data_in[32]&s_H_in[2093]);
        data_out46<=(s_data_in[21]&s_H_in[1390])+(s_data_in[33]&s_H_in[2158]);
        data_out47<=(s_data_in[22]&s_H_in[1455])+(s_data_in[34]&s_H_in[2223]);
        data_out48<=(s_data_in[23]&s_H_in[1520])+(s_data_in[35]&s_H_in[2288]);
        data_out49<=(s_data_in[24]&s_H_in[1585])+(s_data_in[36]&s_H_in[2353]);
        data_out50<=(s_data_in[25]&s_H_in[1650])+(s_data_in[37]&s_H_in[2418]);
        data_out51<=(s_data_in[26]&s_H_in[1715])+(s_data_in[38]&s_H_in[2483]);
        data_out52<=(s_data_in[27]&s_H_in[1780])+(s_data_in[39]&s_H_in[2548]);
        data_out53<=(s_data_in[28]&s_H_in[1845])+(s_data_in[40]&s_H_in[2613]);
        data_out54<=(s_data_in[29]&s_H_in[1910])+(s_data_in[41]&s_H_in[2678]);
        data_out55<=(s_data_in[30]&s_H_in[1975])+(s_data_in[42]&s_H_in[2743]);
        data_out56<=(s_data_in[31]&s_H_in[2040])+(s_data_in[43]&s_H_in[2808]);
        data_out57<=(s_data_in[0]&s_H_in[57])+(s_data_in[44]&s_H_in[2873]);
        data_out58<=(s_data_in[1]&s_H_in[122])+(s_data_in[45]&s_H_in[2938]);
        data_out59<=(s_data_in[2]&s_H_in[187])+(s_data_in[46]&s_H_in[3003]);
        data_out60<=(s_data_in[3]&s_H_in[252])+(s_data_in[47]&s_H_in[3068]);
        data_out61<=(s_data_in[4]&s_H_in[317])+(s_data_in[48]&s_H_in[3133]);
        data_out62<=(s_data_in[5]&s_H_in[382])+(s_data_in[49]&s_H_in[3198]);
        data_out63<=(s_data_in[6]&s_H_in[447])+(s_data_in[50]&s_H_in[3263]);


        end
        
        else if(r_en&&cnt==1)begin
       data_out0 <= 0 ;
                data_out1 <= 0 ;
                data_out2 <= 0 ;
                data_out3 <= 0 ;
                data_out4 <= 0 ;
                data_out5 <= 0 ;
                data_out6 <= 0 ;
                data_out7 <= 0 ;
                data_out8 <= 0 ;
                data_out9 <= 0 ;
                data_out10 <= 0 ;
                data_out11 <= 0 ;
                data_out12 <= 0 ;
                data_out13 <= 0 ;
                data_out14 <= 0 ;
                data_out15 <= 0 ;
                data_out16 <= 0 ;
                data_out17 <= 0 ;
                data_out18 <= 0 ;
                data_out19 <= 0 ;
                data_out20 <= 0 ;
                data_out21 <= 0 ;
                data_out22 <= 0 ;
                data_out23 <= 0 ;
                data_out24 <= 0 ;
                data_out25 <= 0 ;
                data_out26 <= 0 ;
                data_out27 <= 0 ;
                data_out28 <= 0 ;
                data_out29 <= 0 ;
                data_out30 <= 0 ;
                data_out31 <= 0 ;
                data_out32 <= 0 ;
                data_out33 <= 0 ;
                data_out34 <= 0 ;
                data_out35 <= 0 ;
                data_out36 <= 0 ;
                data_out37 <= 0 ;
                data_out38 <= 0 ;
                data_out39 <= 0 ;
                data_out40 <= 0 ;
                data_out41 <= 0 ;
                data_out42 <= 0 ;
                data_out43 <= 0 ;
                data_out44 <= 0 ;
                data_out45 <= 0 ;
                data_out46 <= 0 ;
                data_out47 <= 0 ;
                data_out48 <= 0 ;
                data_out49 <= 0 ;
                data_out50 <= 0 ;
                data_out51 <= 0 ;
                data_out52 <= 0 ;
                data_out53 <= 0 ;
                data_out54 <= 0 ;
                data_out55 <= 0 ;
                data_out56 <= 0 ;
                data_out57 <= 0 ;
                data_out58 <= 0 ;
                data_out59 <= 0 ;
                data_out60 <= 0 ;
                data_out61 <= 0 ;
                data_out62 <= 0 ;
                data_out63 <= 0 ;  
        end
        else if(r_en&&cnt==2)begin
        data_out0<=(s_data_in[2]&s_H_in[128]);
        data_out1<=(s_data_in[3]&s_H_in[193]);
        data_out2<=(s_data_in[4]&s_H_in[258]);
        data_out3<=(s_data_in[5]&s_H_in[323]);
        data_out4<=(s_data_in[6]&s_H_in[388]);
        data_out5<=(s_data_in[7]&s_H_in[453]);
        data_out6<=(s_data_in[8]&s_H_in[518]);
        data_out7<=(s_data_in[9]&s_H_in[583]);
        data_out8<=(s_data_in[10]&s_H_in[648]);
        data_out9<=(s_data_in[11]&s_H_in[713]);
        data_out10<=(s_data_in[12]&s_H_in[778]);
        data_out11<=(s_data_in[13]&s_H_in[843]);
        data_out12<=(s_data_in[14]&s_H_in[908]);
        data_out13<=(s_data_in[15]&s_H_in[973]);
        data_out14<=(s_data_in[16]&s_H_in[1038]);
        data_out15<=(s_data_in[17]&s_H_in[1103]);
        data_out16<=(s_data_in[18]&s_H_in[1168]);
        data_out17<=(s_data_in[19]&s_H_in[1233]);
        data_out18<=(s_data_in[20]&s_H_in[1298]);
        data_out19<=(s_data_in[21]&s_H_in[1363]);
        data_out20<=(s_data_in[22]&s_H_in[1428]);
        data_out21<=(s_data_in[23]&s_H_in[1493]);
        data_out22<=(s_data_in[24]&s_H_in[1558]);
        data_out23<=(s_data_in[25]&s_H_in[1623]);
        data_out24<=(s_data_in[26]&s_H_in[1688]);
        data_out25<=(s_data_in[27]&s_H_in[1753]);
        data_out26<=(s_data_in[28]&s_H_in[1818]);
        data_out27<=(s_data_in[29]&s_H_in[1883]);
        data_out28<=(s_data_in[30]&s_H_in[1948]);
        data_out29<=(s_data_in[31]&s_H_in[2013]);
        data_out30<=(s_data_in[0]&s_H_in[30]);
        data_out31<=(s_data_in[1]&s_H_in[95]);

        end
        else if(r_en&&cnt==3)begin
        data_out0<=(s_data_in[31]&s_H_in[1984]);
        data_out1<=(s_data_in[0]&s_H_in[1]);
        data_out2<=(s_data_in[1]&s_H_in[66]);
        data_out3<=(s_data_in[2]&s_H_in[131]);
        data_out4<=(s_data_in[3]&s_H_in[196]);
        data_out5<=(s_data_in[4]&s_H_in[261]);
        data_out6<=(s_data_in[5]&s_H_in[326]);
        data_out7<=(s_data_in[6]&s_H_in[391]);
        data_out8<=(s_data_in[7]&s_H_in[456]);
        data_out9<=(s_data_in[8]&s_H_in[521]);
        data_out10<=(s_data_in[9]&s_H_in[586]);
        data_out11<=(s_data_in[10]&s_H_in[651]);
        data_out12<=(s_data_in[11]&s_H_in[716]);
        data_out13<=(s_data_in[12]&s_H_in[781]);
        data_out14<=(s_data_in[13]&s_H_in[846]);
        data_out15<=(s_data_in[14]&s_H_in[911]);
        data_out16<=(s_data_in[15]&s_H_in[976]);
        data_out17<=(s_data_in[16]&s_H_in[1041]);
        data_out18<=(s_data_in[17]&s_H_in[1106]);
        data_out19<=(s_data_in[18]&s_H_in[1171]);
        data_out20<=(s_data_in[19]&s_H_in[1236]);
        data_out21<=(s_data_in[20]&s_H_in[1301]);
        data_out22<=(s_data_in[21]&s_H_in[1366]);
        data_out23<=(s_data_in[22]&s_H_in[1431]);
        data_out24<=(s_data_in[23]&s_H_in[1496]);
        data_out25<=(s_data_in[24]&s_H_in[1561]);
        data_out26<=(s_data_in[25]&s_H_in[1626]);
        data_out27<=(s_data_in[26]&s_H_in[1691]);
        data_out28<=(s_data_in[27]&s_H_in[1756]);
        data_out29<=(s_data_in[28]&s_H_in[1821]);
        data_out30<=(s_data_in[29]&s_H_in[1886]);
        data_out31<=(s_data_in[30]&s_H_in[1951]);
        end
        else if(r_en&&cnt==4)begin
        data_out0<=(s_data_in[7]&s_H_in[448])+(s_data_in[39]&s_H_in[2496]);
        data_out1<=(s_data_in[8]&s_H_in[513])+(s_data_in[40]&s_H_in[2561]);
        data_out2<=(s_data_in[9]&s_H_in[578])+(s_data_in[41]&s_H_in[2626]);
        data_out3<=(s_data_in[10]&s_H_in[643])+(s_data_in[42]&s_H_in[2691]);
        data_out4<=(s_data_in[11]&s_H_in[708])+(s_data_in[43]&s_H_in[2756]);
        data_out5<=(s_data_in[12]&s_H_in[773])+(s_data_in[44]&s_H_in[2821]);
        data_out6<=(s_data_in[13]&s_H_in[838])+(s_data_in[45]&s_H_in[2886]);
        data_out7<=(s_data_in[14]&s_H_in[903])+(s_data_in[46]&s_H_in[2951]);
        data_out8<=(s_data_in[15]&s_H_in[968])+(s_data_in[47]&s_H_in[3016]);
        data_out9<=(s_data_in[16]&s_H_in[1033])+(s_data_in[48]&s_H_in[3081]);
        data_out10<=(s_data_in[17]&s_H_in[1098])+(s_data_in[49]&s_H_in[3146]);
        data_out11<=(s_data_in[18]&s_H_in[1163])+(s_data_in[50]&s_H_in[3211]);
        data_out12<=(s_data_in[19]&s_H_in[1228])+(s_data_in[51]&s_H_in[3276]);
        data_out13<=(s_data_in[20]&s_H_in[1293])+(s_data_in[52]&s_H_in[3341]);
        data_out14<=(s_data_in[21]&s_H_in[1358])+(s_data_in[53]&s_H_in[3406]);
        data_out15<=(s_data_in[22]&s_H_in[1423])+(s_data_in[54]&s_H_in[3471]);
        data_out16<=(s_data_in[23]&s_H_in[1488])+(s_data_in[55]&s_H_in[3536]);
        data_out17<=(s_data_in[24]&s_H_in[1553])+(s_data_in[56]&s_H_in[3601]);
        data_out18<=(s_data_in[25]&s_H_in[1618])+(s_data_in[57]&s_H_in[3666]);
        data_out19<=(s_data_in[26]&s_H_in[1683])+(s_data_in[58]&s_H_in[3731]);
        data_out20<=(s_data_in[27]&s_H_in[1748])+(s_data_in[59]&s_H_in[3796]);
        data_out21<=(s_data_in[28]&s_H_in[1813])+(s_data_in[60]&s_H_in[3861]);
        data_out22<=(s_data_in[29]&s_H_in[1878])+(s_data_in[61]&s_H_in[3926]);
        data_out23<=(s_data_in[30]&s_H_in[1943])+(s_data_in[62]&s_H_in[3991]);
        data_out24<=(s_data_in[31]&s_H_in[2008])+(s_data_in[63]&s_H_in[4056]);
        data_out25<=(s_data_in[0]&s_H_in[25])+(s_data_in[32]&s_H_in[2073]);
        data_out26<=(s_data_in[1]&s_H_in[90])+(s_data_in[33]&s_H_in[2138]);
        data_out27<=(s_data_in[2]&s_H_in[155])+(s_data_in[34]&s_H_in[2203]);
        data_out28<=(s_data_in[3]&s_H_in[220])+(s_data_in[35]&s_H_in[2268]);
        data_out29<=(s_data_in[4]&s_H_in[285])+(s_data_in[36]&s_H_in[2333]);
        data_out30<=(s_data_in[5]&s_H_in[350])+(s_data_in[37]&s_H_in[2398]);
        data_out31<=(s_data_in[6]&s_H_in[415])+(s_data_in[38]&s_H_in[2463]);
        end
        else if(r_en&&cnt==5)begin
        
       data_out0 <= 0 ;
                data_out1 <= 0 ;
                data_out2 <= 0 ;
                data_out3 <= 0 ;
                data_out4 <= 0 ;
                data_out5 <= 0 ;
                data_out6 <= 0 ;
                data_out7 <= 0 ;
                data_out8 <= 0 ;
                data_out9 <= 0 ;
                data_out10 <= 0 ;
                data_out11 <= 0 ;
                data_out12 <= 0 ;
                data_out13 <= 0 ;
                data_out14 <= 0 ;
                data_out15 <= 0 ;
                data_out16 <= 0 ;
                data_out17 <= 0 ;
                data_out18 <= 0 ;
                data_out19 <= 0 ;
                data_out20 <= 0 ;
                data_out21 <= 0 ;
                data_out22 <= 0 ;
                data_out23 <= 0 ;
                data_out24 <= 0 ;
                data_out25 <= 0 ;
                data_out26 <= 0 ;
                data_out27 <= 0 ;
                data_out28 <= 0 ;
                data_out29 <= 0 ;
                data_out30 <= 0 ;
                data_out31 <= 0 ;
                data_out32 <= 0 ;
                data_out33 <= 0 ;
                data_out34 <= 0 ;
                data_out35 <= 0 ;
                data_out36 <= 0 ;
                data_out37 <= 0 ;
                data_out38 <= 0 ;
                data_out39 <= 0 ;
                data_out40 <= 0 ;
                data_out41 <= 0 ;
                data_out42 <= 0 ;
                data_out43 <= 0 ;
                data_out44 <= 0 ;
                data_out45 <= 0 ;
                data_out46 <= 0 ;
                data_out47 <= 0 ;
                data_out48 <= 0 ;
                data_out49 <= 0 ;
                data_out50 <= 0 ;
                data_out51 <= 0 ;
                data_out52 <= 0 ;
                data_out53 <= 0 ;
                data_out54 <= 0 ;
                data_out55 <= 0 ;
                data_out56 <= 0 ;
                data_out57 <= 0 ;
                data_out58 <= 0 ;
                data_out59 <= 0 ;
                data_out60 <= 0 ;
                data_out61 <= 0 ;
                data_out62 <= 0 ;
                data_out63 <= 0 ;  
         end
         //cnt 6 没有
         else if(r_en&&cnt==6)begin
         data_out0<=(s_data_in[0]&s_H_in[0]);
         data_out1<=(s_data_in[1]&s_H_in[65]);
         data_out2<=(s_data_in[2]&s_H_in[130]);
         data_out3<=(s_data_in[3]&s_H_in[195]);
         data_out4<=(s_data_in[4]&s_H_in[260]);
         data_out5<=(s_data_in[5]&s_H_in[325]);
         data_out6<=(s_data_in[6]&s_H_in[390]);
         data_out7<=(s_data_in[7]&s_H_in[455]);
         data_out8<=(s_data_in[8]&s_H_in[520]);
         data_out9<=(s_data_in[9]&s_H_in[585]);
         data_out10<=(s_data_in[10]&s_H_in[650]);
         data_out11<=(s_data_in[11]&s_H_in[715]);
         data_out12<=(s_data_in[12]&s_H_in[780]);
         data_out13<=(s_data_in[13]&s_H_in[845]);
         data_out14<=(s_data_in[14]&s_H_in[910]);
         data_out15<=(s_data_in[15]&s_H_in[975]);
         data_out16<=(s_data_in[16]&s_H_in[1040]);
         data_out17<=(s_data_in[17]&s_H_in[1105]);
         data_out18<=(s_data_in[18]&s_H_in[1170]);
         data_out19<=(s_data_in[19]&s_H_in[1235]);
         data_out20<=(s_data_in[20]&s_H_in[1300]);
         data_out21<=(s_data_in[21]&s_H_in[1365]);
         data_out22<=(s_data_in[22]&s_H_in[1430]);
         data_out23<=(s_data_in[23]&s_H_in[1495]);
         data_out24<=(s_data_in[24]&s_H_in[1560]);
         data_out25<=(s_data_in[25]&s_H_in[1625]);
         data_out26<=(s_data_in[26]&s_H_in[1690]);
         data_out27<=(s_data_in[27]&s_H_in[1755]);
         data_out28<=(s_data_in[28]&s_H_in[1820]);
         data_out29<=(s_data_in[29]&s_H_in[1885]);
         data_out30<=(s_data_in[30]&s_H_in[1950]);
         data_out31<=(s_data_in[31]&s_H_in[2015]);
         data_out32<=(s_data_in[32]&s_H_in[2080]);
         data_out33<=(s_data_in[33]&s_H_in[2145]);
         data_out34<=(s_data_in[34]&s_H_in[2210]);
         data_out35<=(s_data_in[35]&s_H_in[2275]);
         data_out36<=(s_data_in[36]&s_H_in[2340]);
         data_out37<=(s_data_in[37]&s_H_in[2405]);
         data_out38<=(s_data_in[38]&s_H_in[2470]);
         data_out39<=(s_data_in[39]&s_H_in[2535]);
         data_out40<=(s_data_in[40]&s_H_in[2600]);
         data_out41<=(s_data_in[41]&s_H_in[2665]);
         data_out42<=(s_data_in[42]&s_H_in[2730]);
         data_out43<=(s_data_in[43]&s_H_in[2795]);
         data_out44<=(s_data_in[44]&s_H_in[2860]);
         data_out45<=(s_data_in[45]&s_H_in[2925]);
         data_out46<=(s_data_in[46]&s_H_in[2990]);
         data_out47<=(s_data_in[47]&s_H_in[3055]);
         data_out48<=(s_data_in[48]&s_H_in[3120]);
         data_out49<=(s_data_in[49]&s_H_in[3185]);
         data_out50<=(s_data_in[50]&s_H_in[3250]);
         data_out51<=(s_data_in[51]&s_H_in[3315]);
         data_out52<=(s_data_in[52]&s_H_in[3380]);
         data_out53<=(s_data_in[53]&s_H_in[3445]);
         data_out54<=(s_data_in[54]&s_H_in[3510]);
         data_out55<=(s_data_in[55]&s_H_in[3575]);
         data_out56<=(s_data_in[56]&s_H_in[3640]);
         data_out57<=(s_data_in[57]&s_H_in[3705]);
         data_out58<=(s_data_in[58]&s_H_in[3770]);
         data_out59<=(s_data_in[59]&s_H_in[3835]);
         data_out60<=(s_data_in[60]&s_H_in[3900]);
         data_out61<=(s_data_in[61]&s_H_in[3965]);
         data_out62<=(s_data_in[62]&s_H_in[4030]);
         data_out63<=(s_data_in[63]&s_H_in[4095]);

        end
        else if(r_en&&cnt==7)begin
        data_out0 <= 0 ;
                data_out1 <= 0 ;
                data_out2 <= 0 ;
                data_out3 <= 0 ;
                data_out4 <= 0 ;
                data_out5 <= 0 ;
                data_out6 <= 0 ;
                data_out7 <= 0 ;
                data_out8 <= 0 ;
                data_out9 <= 0 ;
                data_out10 <= 0 ;
                data_out11 <= 0 ;
                data_out12 <= 0 ;
                data_out13 <= 0 ;
                data_out14 <= 0 ;
                data_out15 <= 0 ;
                data_out16 <= 0 ;
                data_out17 <= 0 ;
                data_out18 <= 0 ;
                data_out19 <= 0 ;
                data_out20 <= 0 ;
                data_out21 <= 0 ;
                data_out22 <= 0 ;
                data_out23 <= 0 ;
                data_out24 <= 0 ;
                data_out25 <= 0 ;
                data_out26 <= 0 ;
                data_out27 <= 0 ;
                data_out28 <= 0 ;
                data_out29 <= 0 ;
                data_out30 <= 0 ;
                data_out31 <= 0 ;
                data_out32 <= 0 ;
                data_out33 <= 0 ;
                data_out34 <= 0 ;
                data_out35 <= 0 ;
                data_out36 <= 0 ;
                data_out37 <= 0 ;
                data_out38 <= 0 ;
                data_out39 <= 0 ;
                data_out40 <= 0 ;
                data_out41 <= 0 ;
                data_out42 <= 0 ;
                data_out43 <= 0 ;
                data_out44 <= 0 ;
                data_out45 <= 0 ;
                data_out46 <= 0 ;
                data_out47 <= 0 ;
                data_out48 <= 0 ;
                data_out49 <= 0 ;
                data_out50 <= 0 ;
                data_out51 <= 0 ;
                data_out52 <= 0 ;
                data_out53 <= 0 ;
                data_out54 <= 0 ;
                data_out55 <= 0 ;
                data_out56 <= 0 ;
                data_out57 <= 0 ;
                data_out58 <= 0 ;
                data_out59 <= 0 ;
                data_out60 <= 0 ;
                data_out61 <= 0 ;
                data_out62 <= 0 ;
                data_out63 <= 0 ;  
        end
        else begin
        data_out0<=data_out0;
        data_out1<=data_out1;
        data_out2<=data_out2;
        data_out3<=data_out3;
        data_out4<=data_out4;
        data_out5<=data_out5;
        data_out6<=data_out6;
        data_out7<=data_out7;
        data_out8<=data_out8;
        data_out9<=data_out9;
        data_out10<=data_out10;
        data_out11<=data_out11;
        data_out12<=data_out12;
        data_out13<=data_out13;
        data_out14<=data_out14;
        data_out15<=data_out15;
        data_out16<=data_out16;
        data_out17<=data_out17;
        data_out18<=data_out18;
        data_out19<=data_out19;
        data_out20<=data_out20;
        data_out21<=data_out21;
        data_out22<=data_out22;
        data_out23<=data_out23;
        data_out24<=data_out24;
        data_out25<=data_out25;
        data_out26<=data_out26;
        data_out27<=data_out27;
        data_out28<=data_out28;
        data_out29<=data_out29;
        data_out30<=data_out30;
        data_out31<=data_out31;
        data_out32<=data_out32;
        data_out33<=data_out33;
        data_out34<=data_out34;
        data_out35<=data_out35;
        data_out36<=data_out36;
        data_out37<=data_out37;
        data_out38<=data_out38;
        data_out39<=data_out39;
        data_out40<=data_out40;
        data_out41<=data_out41;
        data_out42<=data_out42;
        data_out43<=data_out43;
        data_out44<=data_out44;
        data_out45<=data_out45;
        data_out46<=data_out46;
        data_out47<=data_out47;
        data_out48<=data_out48;
        data_out49<=data_out49;
        data_out50<=data_out50;
        data_out51<=data_out51;
        data_out52<=data_out52;
        data_out53<=data_out53;
        data_out54<=data_out54;
        data_out55<=data_out55;
        data_out56<=data_out56;
        data_out57<=data_out57;
        data_out58<=data_out58;
        data_out59<=data_out59;
        data_out60<=data_out60;
        data_out61<=data_out61;
        data_out62<=data_out62;
        data_out63<=data_out63;
        end
    end

   
    endmodule
