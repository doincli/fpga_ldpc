`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module fn_1(
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
        data_out0<=(s_data_in[53]&s_H_in[3392]);
        data_out1<=(s_data_in[54]&s_H_in[3457]);
        data_out2<=(s_data_in[55]&s_H_in[3522]);
        data_out3<=(s_data_in[56]&s_H_in[3587]);
        data_out4<=(s_data_in[57]&s_H_in[3652]);
        data_out5<=(s_data_in[58]&s_H_in[3717]);
        data_out6<=(s_data_in[59]&s_H_in[3782]);
        data_out7<=(s_data_in[60]&s_H_in[3847]);
        data_out8<=(s_data_in[61]&s_H_in[3912]);
        data_out9<=(s_data_in[62]&s_H_in[3977]);
        data_out10<=(s_data_in[63]&s_H_in[4042]);
        data_out11<=(s_data_in[32]&s_H_in[2059]);
        data_out12<=(s_data_in[33]&s_H_in[2124]);
        data_out13<=(s_data_in[34]&s_H_in[2189]);
        data_out14<=(s_data_in[35]&s_H_in[2254]);
        data_out15<=(s_data_in[36]&s_H_in[2319]);
        data_out16<=(s_data_in[37]&s_H_in[2384]);
        data_out17<=(s_data_in[38]&s_H_in[2449]);
        data_out18<=(s_data_in[39]&s_H_in[2514]);
        data_out19<=(s_data_in[40]&s_H_in[2579]);
        data_out20<=(s_data_in[41]&s_H_in[2644]);
        data_out21<=(s_data_in[42]&s_H_in[2709]);
        data_out22<=(s_data_in[43]&s_H_in[2774]);
        data_out23<=(s_data_in[44]&s_H_in[2839]);
        data_out24<=(s_data_in[45]&s_H_in[2904]);
        data_out25<=(s_data_in[46]&s_H_in[2969]);
        data_out26<=(s_data_in[47]&s_H_in[3034]);
        data_out27<=(s_data_in[48]&s_H_in[3099]);
        data_out28<=(s_data_in[49]&s_H_in[3164]);
        data_out29<=(s_data_in[50]&s_H_in[3229]);
        data_out30<=(s_data_in[51]&s_H_in[3294]);
        data_out31<=(s_data_in[52]&s_H_in[3359]);
        data_out32<=(s_data_in[7]&s_H_in[480])+(s_data_in[41]&s_H_in[2656]);
        data_out33<=(s_data_in[8]&s_H_in[545])+(s_data_in[42]&s_H_in[2721]);
        data_out34<=(s_data_in[9]&s_H_in[610])+(s_data_in[43]&s_H_in[2786]);
        data_out35<=(s_data_in[10]&s_H_in[675])+(s_data_in[44]&s_H_in[2851]);
        data_out36<=(s_data_in[11]&s_H_in[740])+(s_data_in[45]&s_H_in[2916]);
        data_out37<=(s_data_in[12]&s_H_in[805])+(s_data_in[46]&s_H_in[2981]);
        data_out38<=(s_data_in[13]&s_H_in[870])+(s_data_in[47]&s_H_in[3046]);
        data_out39<=(s_data_in[14]&s_H_in[935])+(s_data_in[48]&s_H_in[3111]);
        data_out40<=(s_data_in[15]&s_H_in[1000])+(s_data_in[49]&s_H_in[3176]);
        data_out41<=(s_data_in[16]&s_H_in[1065])+(s_data_in[50]&s_H_in[3241]);
        data_out42<=(s_data_in[17]&s_H_in[1130])+(s_data_in[51]&s_H_in[3306]);
        data_out43<=(s_data_in[18]&s_H_in[1195])+(s_data_in[52]&s_H_in[3371]);
        data_out44<=(s_data_in[19]&s_H_in[1260])+(s_data_in[53]&s_H_in[3436]);
        data_out45<=(s_data_in[20]&s_H_in[1325])+(s_data_in[54]&s_H_in[3501]);
        data_out46<=(s_data_in[21]&s_H_in[1390])+(s_data_in[55]&s_H_in[3566]);
        data_out47<=(s_data_in[22]&s_H_in[1455])+(s_data_in[56]&s_H_in[3631]);
        data_out48<=(s_data_in[23]&s_H_in[1520])+(s_data_in[57]&s_H_in[3696]);
        data_out49<=(s_data_in[24]&s_H_in[1585])+(s_data_in[58]&s_H_in[3761]);
        data_out50<=(s_data_in[25]&s_H_in[1650])+(s_data_in[59]&s_H_in[3826]);
        data_out51<=(s_data_in[26]&s_H_in[1715])+(s_data_in[60]&s_H_in[3891]);
        data_out52<=(s_data_in[27]&s_H_in[1780])+(s_data_in[61]&s_H_in[3956]);
        data_out53<=(s_data_in[28]&s_H_in[1845])+(s_data_in[62]&s_H_in[4021]);
        data_out54<=(s_data_in[29]&s_H_in[1910])+(s_data_in[63]&s_H_in[4086]);
        data_out55<=(s_data_in[30]&s_H_in[1975])+(s_data_in[32]&s_H_in[2103]);
        data_out56<=(s_data_in[31]&s_H_in[2040])+(s_data_in[33]&s_H_in[2168]);
        data_out57<=(s_data_in[0]&s_H_in[57])+(s_data_in[34]&s_H_in[2233]);
        data_out58<=(s_data_in[1]&s_H_in[122])+(s_data_in[35]&s_H_in[2298]);
        data_out59<=(s_data_in[2]&s_H_in[187])+(s_data_in[36]&s_H_in[2363]);
        data_out60<=(s_data_in[3]&s_H_in[252])+(s_data_in[37]&s_H_in[2428]);
        data_out61<=(s_data_in[4]&s_H_in[317])+(s_data_in[38]&s_H_in[2493]);
        data_out62<=(s_data_in[5]&s_H_in[382])+(s_data_in[39]&s_H_in[2558]);
        data_out63<=(s_data_in[6]&s_H_in[447])+(s_data_in[40]&s_H_in[2623]);
   
        end
        
        else if(r_en&&cnt==1)begin
        data_out0<=(s_data_in[6]&s_H_in[384])+(s_data_in[58]&s_H_in[3712]);
        data_out1<=(s_data_in[7]&s_H_in[449])+(s_data_in[59]&s_H_in[3777]);
        data_out2<=(s_data_in[8]&s_H_in[514])+(s_data_in[60]&s_H_in[3842]);
        data_out3<=(s_data_in[9]&s_H_in[579])+(s_data_in[61]&s_H_in[3907]);
        data_out4<=(s_data_in[10]&s_H_in[644])+(s_data_in[62]&s_H_in[3972]);
        data_out5<=(s_data_in[11]&s_H_in[709])+(s_data_in[63]&s_H_in[4037]);
        data_out6<=(s_data_in[12]&s_H_in[774])+(s_data_in[32]&s_H_in[2054]);
        data_out7<=(s_data_in[13]&s_H_in[839])+(s_data_in[33]&s_H_in[2119]);
        data_out8<=(s_data_in[14]&s_H_in[904])+(s_data_in[34]&s_H_in[2184]);
        data_out9<=(s_data_in[15]&s_H_in[969])+(s_data_in[35]&s_H_in[2249]);
        data_out10<=(s_data_in[16]&s_H_in[1034])+(s_data_in[36]&s_H_in[2314]);
        data_out11<=(s_data_in[17]&s_H_in[1099])+(s_data_in[37]&s_H_in[2379]);
        data_out12<=(s_data_in[18]&s_H_in[1164])+(s_data_in[38]&s_H_in[2444]);
        data_out13<=(s_data_in[19]&s_H_in[1229])+(s_data_in[39]&s_H_in[2509]);
        data_out14<=(s_data_in[20]&s_H_in[1294])+(s_data_in[40]&s_H_in[2574]);
        data_out15<=(s_data_in[21]&s_H_in[1359])+(s_data_in[41]&s_H_in[2639]);
        data_out16<=(s_data_in[22]&s_H_in[1424])+(s_data_in[42]&s_H_in[2704]);
        data_out17<=(s_data_in[23]&s_H_in[1489])+(s_data_in[43]&s_H_in[2769]);
        data_out18<=(s_data_in[24]&s_H_in[1554])+(s_data_in[44]&s_H_in[2834]);
        data_out19<=(s_data_in[25]&s_H_in[1619])+(s_data_in[45]&s_H_in[2899]);
        data_out20<=(s_data_in[26]&s_H_in[1684])+(s_data_in[46]&s_H_in[2964]);
        data_out21<=(s_data_in[27]&s_H_in[1749])+(s_data_in[47]&s_H_in[3029]);
        data_out22<=(s_data_in[28]&s_H_in[1814])+(s_data_in[48]&s_H_in[3094]);
        data_out23<=(s_data_in[29]&s_H_in[1879])+(s_data_in[49]&s_H_in[3159]);
        data_out24<=(s_data_in[30]&s_H_in[1944])+(s_data_in[50]&s_H_in[3224]);
        data_out25<=(s_data_in[31]&s_H_in[2009])+(s_data_in[51]&s_H_in[3289]);
        data_out26<=(s_data_in[0]&s_H_in[26])+(s_data_in[52]&s_H_in[3354]);
        data_out27<=(s_data_in[1]&s_H_in[91])+(s_data_in[53]&s_H_in[3419]);
        data_out28<=(s_data_in[2]&s_H_in[156])+(s_data_in[54]&s_H_in[3484]);
        data_out29<=(s_data_in[3]&s_H_in[221])+(s_data_in[55]&s_H_in[3549]);
        data_out30<=(s_data_in[4]&s_H_in[286])+(s_data_in[56]&s_H_in[3614]);
        data_out31<=(s_data_in[5]&s_H_in[351])+(s_data_in[57]&s_H_in[3679]);
        data_out32<=(s_data_in[44]&s_H_in[2848]);
        data_out33<=(s_data_in[45]&s_H_in[2913]);
        data_out34<=(s_data_in[46]&s_H_in[2978]);
        data_out35<=(s_data_in[47]&s_H_in[3043]);
        data_out36<=(s_data_in[48]&s_H_in[3108]);
        data_out37<=(s_data_in[49]&s_H_in[3173]);
        data_out38<=(s_data_in[50]&s_H_in[3238]);
        data_out39<=(s_data_in[51]&s_H_in[3303]);
        data_out40<=(s_data_in[52]&s_H_in[3368]);
        data_out41<=(s_data_in[53]&s_H_in[3433]);
        data_out42<=(s_data_in[54]&s_H_in[3498]);
        data_out43<=(s_data_in[55]&s_H_in[3563]);
        data_out44<=(s_data_in[56]&s_H_in[3628]);
        data_out45<=(s_data_in[57]&s_H_in[3693]);
        data_out46<=(s_data_in[58]&s_H_in[3758]);
        data_out47<=(s_data_in[59]&s_H_in[3823]);
        data_out48<=(s_data_in[60]&s_H_in[3888]);
        data_out49<=(s_data_in[61]&s_H_in[3953]);
        data_out50<=(s_data_in[62]&s_H_in[4018]);
        data_out51<=(s_data_in[63]&s_H_in[4083]);
        data_out52<=(s_data_in[32]&s_H_in[2100]);
        data_out53<=(s_data_in[33]&s_H_in[2165]);
        data_out54<=(s_data_in[34]&s_H_in[2230]);
        data_out55<=(s_data_in[35]&s_H_in[2295]);
        data_out56<=(s_data_in[36]&s_H_in[2360]);
        data_out57<=(s_data_in[37]&s_H_in[2425]);
        data_out58<=(s_data_in[38]&s_H_in[2490]);
        data_out59<=(s_data_in[39]&s_H_in[2555]);
        data_out60<=(s_data_in[40]&s_H_in[2620]);
        data_out61<=(s_data_in[41]&s_H_in[2685]);
        data_out62<=(s_data_in[42]&s_H_in[2750]);
        data_out63<=(s_data_in[43]&s_H_in[2815]);

        end
        else if(r_en&&cnt==2)begin
        data_out0<=(s_data_in[29]&s_H_in[1856]);
        data_out1<=(s_data_in[30]&s_H_in[1921]);
        data_out2<=(s_data_in[31]&s_H_in[1986]);
        data_out3<=(s_data_in[0]&s_H_in[3]);
        data_out4<=(s_data_in[1]&s_H_in[68]);
        data_out5<=(s_data_in[2]&s_H_in[133]);
        data_out6<=(s_data_in[3]&s_H_in[198]);
        data_out7<=(s_data_in[4]&s_H_in[263]);
        data_out8<=(s_data_in[5]&s_H_in[328]);
        data_out9<=(s_data_in[6]&s_H_in[393]);
        data_out10<=(s_data_in[7]&s_H_in[458]);
        data_out11<=(s_data_in[8]&s_H_in[523]);
        data_out12<=(s_data_in[9]&s_H_in[588]);
        data_out13<=(s_data_in[10]&s_H_in[653]);
        data_out14<=(s_data_in[11]&s_H_in[718]);
        data_out15<=(s_data_in[12]&s_H_in[783]);
        data_out16<=(s_data_in[13]&s_H_in[848]);
        data_out17<=(s_data_in[14]&s_H_in[913]);
        data_out18<=(s_data_in[15]&s_H_in[978]);
        data_out19<=(s_data_in[16]&s_H_in[1043]);
        data_out20<=(s_data_in[17]&s_H_in[1108]);
        data_out21<=(s_data_in[18]&s_H_in[1173]);
        data_out22<=(s_data_in[19]&s_H_in[1238]);
        data_out23<=(s_data_in[20]&s_H_in[1303]);
        data_out24<=(s_data_in[21]&s_H_in[1368]);
        data_out25<=(s_data_in[22]&s_H_in[1433]);
        data_out26<=(s_data_in[23]&s_H_in[1498]);
        data_out27<=(s_data_in[24]&s_H_in[1563]);
        data_out28<=(s_data_in[25]&s_H_in[1628]);
        data_out29<=(s_data_in[26]&s_H_in[1693]);
        data_out30<=(s_data_in[27]&s_H_in[1758]);
        data_out31<=(s_data_in[28]&s_H_in[1823]);
        data_out32<=(s_data_in[29]&s_H_in[1888]);
        data_out33<=(s_data_in[30]&s_H_in[1953]);
        data_out34<=(s_data_in[31]&s_H_in[2018]);
        data_out35<=(s_data_in[0]&s_H_in[35]);
        data_out36<=(s_data_in[1]&s_H_in[100]);
        data_out37<=(s_data_in[2]&s_H_in[165]);
        data_out38<=(s_data_in[3]&s_H_in[230]);
        data_out39<=(s_data_in[4]&s_H_in[295]);
        data_out40<=(s_data_in[5]&s_H_in[360]);
        data_out41<=(s_data_in[6]&s_H_in[425]);
        data_out42<=(s_data_in[7]&s_H_in[490]);
        data_out43<=(s_data_in[8]&s_H_in[555]);
        data_out44<=(s_data_in[9]&s_H_in[620]);
        data_out45<=(s_data_in[10]&s_H_in[685]);
        data_out46<=(s_data_in[11]&s_H_in[750]);
        data_out47<=(s_data_in[12]&s_H_in[815]);
        data_out48<=(s_data_in[13]&s_H_in[880]);
        data_out49<=(s_data_in[14]&s_H_in[945]);
        data_out50<=(s_data_in[15]&s_H_in[1010]);
        data_out51<=(s_data_in[16]&s_H_in[1075]);
        data_out52<=(s_data_in[17]&s_H_in[1140]);
        data_out53<=(s_data_in[18]&s_H_in[1205]);
        data_out54<=(s_data_in[19]&s_H_in[1270]);
        data_out55<=(s_data_in[20]&s_H_in[1335]);
        data_out56<=(s_data_in[21]&s_H_in[1400]);
        data_out57<=(s_data_in[22]&s_H_in[1465]);
        data_out58<=(s_data_in[23]&s_H_in[1530]);
        data_out59<=(s_data_in[24]&s_H_in[1595]);
        data_out60<=(s_data_in[25]&s_H_in[1660]);
        data_out61<=(s_data_in[26]&s_H_in[1725]);
        data_out62<=(s_data_in[27]&s_H_in[1790]);
        data_out63<=(s_data_in[28]&s_H_in[1855]);

        end
        else if(r_en&&cnt==3)begin
        data_out0<=(s_data_in[28]&s_H_in[1792]);
        data_out1<=(s_data_in[29]&s_H_in[1857]);
        data_out2<=(s_data_in[30]&s_H_in[1922]);
        data_out3<=(s_data_in[31]&s_H_in[1987]);
        data_out4<=(s_data_in[0]&s_H_in[4]);
        data_out5<=(s_data_in[1]&s_H_in[69]);
        data_out6<=(s_data_in[2]&s_H_in[134]);
        data_out7<=(s_data_in[3]&s_H_in[199]);
        data_out8<=(s_data_in[4]&s_H_in[264]);
        data_out9<=(s_data_in[5]&s_H_in[329]);
        data_out10<=(s_data_in[6]&s_H_in[394]);
        data_out11<=(s_data_in[7]&s_H_in[459]);
        data_out12<=(s_data_in[8]&s_H_in[524]);
        data_out13<=(s_data_in[9]&s_H_in[589]);
        data_out14<=(s_data_in[10]&s_H_in[654]);
        data_out15<=(s_data_in[11]&s_H_in[719]);
        data_out16<=(s_data_in[12]&s_H_in[784]);
        data_out17<=(s_data_in[13]&s_H_in[849]);
        data_out18<=(s_data_in[14]&s_H_in[914]);
        data_out19<=(s_data_in[15]&s_H_in[979]);
        data_out20<=(s_data_in[16]&s_H_in[1044]);
        data_out21<=(s_data_in[17]&s_H_in[1109]);
        data_out22<=(s_data_in[18]&s_H_in[1174]);
        data_out23<=(s_data_in[19]&s_H_in[1239]);
        data_out24<=(s_data_in[20]&s_H_in[1304]);
        data_out25<=(s_data_in[21]&s_H_in[1369]);
        data_out26<=(s_data_in[22]&s_H_in[1434]);
        data_out27<=(s_data_in[23]&s_H_in[1499]);
        data_out28<=(s_data_in[24]&s_H_in[1564]);
        data_out29<=(s_data_in[25]&s_H_in[1629]);
        data_out30<=(s_data_in[26]&s_H_in[1694]);
        data_out31<=(s_data_in[27]&s_H_in[1759]);
        data_out32<=(s_data_in[2]&s_H_in[160])+(s_data_in[61]&s_H_in[3936]);
        data_out33<=(s_data_in[3]&s_H_in[225])+(s_data_in[62]&s_H_in[4001]);
        data_out34<=(s_data_in[4]&s_H_in[290])+(s_data_in[63]&s_H_in[4066]);
        data_out35<=(s_data_in[5]&s_H_in[355])+(s_data_in[32]&s_H_in[2083]);
        data_out36<=(s_data_in[6]&s_H_in[420])+(s_data_in[33]&s_H_in[2148]);
        data_out37<=(s_data_in[7]&s_H_in[485])+(s_data_in[34]&s_H_in[2213]);
        data_out38<=(s_data_in[8]&s_H_in[550])+(s_data_in[35]&s_H_in[2278]);
        data_out39<=(s_data_in[9]&s_H_in[615])+(s_data_in[36]&s_H_in[2343]);
        data_out40<=(s_data_in[10]&s_H_in[680])+(s_data_in[37]&s_H_in[2408]);
        data_out41<=(s_data_in[11]&s_H_in[745])+(s_data_in[38]&s_H_in[2473]);
        data_out42<=(s_data_in[12]&s_H_in[810])+(s_data_in[39]&s_H_in[2538]);
        data_out43<=(s_data_in[13]&s_H_in[875])+(s_data_in[40]&s_H_in[2603]);
        data_out44<=(s_data_in[14]&s_H_in[940])+(s_data_in[41]&s_H_in[2668]);
        data_out45<=(s_data_in[15]&s_H_in[1005])+(s_data_in[42]&s_H_in[2733]);
        data_out46<=(s_data_in[16]&s_H_in[1070])+(s_data_in[43]&s_H_in[2798]);
        data_out47<=(s_data_in[17]&s_H_in[1135])+(s_data_in[44]&s_H_in[2863]);
        data_out48<=(s_data_in[18]&s_H_in[1200])+(s_data_in[45]&s_H_in[2928]);
        data_out49<=(s_data_in[19]&s_H_in[1265])+(s_data_in[46]&s_H_in[2993]);
        data_out50<=(s_data_in[20]&s_H_in[1330])+(s_data_in[47]&s_H_in[3058]);
        data_out51<=(s_data_in[21]&s_H_in[1395])+(s_data_in[48]&s_H_in[3123]);
        data_out52<=(s_data_in[22]&s_H_in[1460])+(s_data_in[49]&s_H_in[3188]);
        data_out53<=(s_data_in[23]&s_H_in[1525])+(s_data_in[50]&s_H_in[3253]);
        data_out54<=(s_data_in[24]&s_H_in[1590])+(s_data_in[51]&s_H_in[3318]);
        data_out55<=(s_data_in[25]&s_H_in[1655])+(s_data_in[52]&s_H_in[3383]);
        data_out56<=(s_data_in[26]&s_H_in[1720])+(s_data_in[53]&s_H_in[3448]);
        data_out57<=(s_data_in[27]&s_H_in[1785])+(s_data_in[54]&s_H_in[3513]);
        data_out58<=(s_data_in[28]&s_H_in[1850])+(s_data_in[55]&s_H_in[3578]);
        data_out59<=(s_data_in[29]&s_H_in[1915])+(s_data_in[56]&s_H_in[3643]);
        data_out60<=(s_data_in[30]&s_H_in[1980])+(s_data_in[57]&s_H_in[3708]);
        data_out61<=(s_data_in[31]&s_H_in[2045])+(s_data_in[58]&s_H_in[3773]);
        data_out62<=(s_data_in[0]&s_H_in[62])+(s_data_in[59]&s_H_in[3838]);
        data_out63<=(s_data_in[1]&s_H_in[127])+(s_data_in[60]&s_H_in[3903]);

        end
        else if(r_en&&cnt==4)begin
        data_out0<=(s_data_in[0]&s_H_in[0])+(s_data_in[32]&s_H_in[2048]);
        data_out1<=(s_data_in[1]&s_H_in[65])+(s_data_in[33]&s_H_in[2113]);
        data_out2<=(s_data_in[2]&s_H_in[130])+(s_data_in[34]&s_H_in[2178]);
        data_out3<=(s_data_in[3]&s_H_in[195])+(s_data_in[35]&s_H_in[2243]);
        data_out4<=(s_data_in[4]&s_H_in[260])+(s_data_in[36]&s_H_in[2308]);
        data_out5<=(s_data_in[5]&s_H_in[325])+(s_data_in[37]&s_H_in[2373]);
        data_out6<=(s_data_in[6]&s_H_in[390])+(s_data_in[38]&s_H_in[2438]);
        data_out7<=(s_data_in[7]&s_H_in[455])+(s_data_in[39]&s_H_in[2503]);
        data_out8<=(s_data_in[8]&s_H_in[520])+(s_data_in[40]&s_H_in[2568]);
        data_out9<=(s_data_in[9]&s_H_in[585])+(s_data_in[41]&s_H_in[2633]);
        data_out10<=(s_data_in[10]&s_H_in[650])+(s_data_in[42]&s_H_in[2698]);
        data_out11<=(s_data_in[11]&s_H_in[715])+(s_data_in[43]&s_H_in[2763]);
        data_out12<=(s_data_in[12]&s_H_in[780])+(s_data_in[44]&s_H_in[2828]);
        data_out13<=(s_data_in[13]&s_H_in[845])+(s_data_in[45]&s_H_in[2893]);
        data_out14<=(s_data_in[14]&s_H_in[910])+(s_data_in[46]&s_H_in[2958]);
        data_out15<=(s_data_in[15]&s_H_in[975])+(s_data_in[47]&s_H_in[3023]);
        data_out16<=(s_data_in[16]&s_H_in[1040])+(s_data_in[48]&s_H_in[3088]);
        data_out17<=(s_data_in[17]&s_H_in[1105])+(s_data_in[49]&s_H_in[3153]);
        data_out18<=(s_data_in[18]&s_H_in[1170])+(s_data_in[50]&s_H_in[3218]);
        data_out19<=(s_data_in[19]&s_H_in[1235])+(s_data_in[51]&s_H_in[3283]);
        data_out20<=(s_data_in[20]&s_H_in[1300])+(s_data_in[52]&s_H_in[3348]);
        data_out21<=(s_data_in[21]&s_H_in[1365])+(s_data_in[53]&s_H_in[3413]);
        data_out22<=(s_data_in[22]&s_H_in[1430])+(s_data_in[54]&s_H_in[3478]);
        data_out23<=(s_data_in[23]&s_H_in[1495])+(s_data_in[55]&s_H_in[3543]);
        data_out24<=(s_data_in[24]&s_H_in[1560])+(s_data_in[56]&s_H_in[3608]);
        data_out25<=(s_data_in[25]&s_H_in[1625])+(s_data_in[57]&s_H_in[3673]);
        data_out26<=(s_data_in[26]&s_H_in[1690])+(s_data_in[58]&s_H_in[3738]);
        data_out27<=(s_data_in[27]&s_H_in[1755])+(s_data_in[59]&s_H_in[3803]);
        data_out28<=(s_data_in[28]&s_H_in[1820])+(s_data_in[60]&s_H_in[3868]);
        data_out29<=(s_data_in[29]&s_H_in[1885])+(s_data_in[61]&s_H_in[3933]);
        data_out30<=(s_data_in[30]&s_H_in[1950])+(s_data_in[62]&s_H_in[3998]);
        data_out31<=(s_data_in[31]&s_H_in[2015])+(s_data_in[63]&s_H_in[4063]);
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
        else if(r_en&&cnt==5)begin
        
        data_out32<=(s_data_in[0]&s_H_in[32]);
        data_out33<=(s_data_in[1]&s_H_in[97]);
        data_out34<=(s_data_in[2]&s_H_in[162]);
        data_out35<=(s_data_in[3]&s_H_in[227]);
        data_out36<=(s_data_in[4]&s_H_in[292]);
        data_out37<=(s_data_in[5]&s_H_in[357]);
        data_out38<=(s_data_in[6]&s_H_in[422]);
        data_out39<=(s_data_in[7]&s_H_in[487]);
        data_out40<=(s_data_in[8]&s_H_in[552]);
        data_out41<=(s_data_in[9]&s_H_in[617]);
        data_out42<=(s_data_in[10]&s_H_in[682]);
        data_out43<=(s_data_in[11]&s_H_in[747]);
        data_out44<=(s_data_in[12]&s_H_in[812]);
        data_out45<=(s_data_in[13]&s_H_in[877]);
        data_out46<=(s_data_in[14]&s_H_in[942]);
        data_out47<=(s_data_in[15]&s_H_in[1007]);
        data_out48<=(s_data_in[16]&s_H_in[1072]);
        data_out49<=(s_data_in[17]&s_H_in[1137]);
        data_out50<=(s_data_in[18]&s_H_in[1202]);
        data_out51<=(s_data_in[19]&s_H_in[1267]);
        data_out52<=(s_data_in[20]&s_H_in[1332]);
        data_out53<=(s_data_in[21]&s_H_in[1397]);
        data_out54<=(s_data_in[22]&s_H_in[1462]);
        data_out55<=(s_data_in[23]&s_H_in[1527]);
        data_out56<=(s_data_in[24]&s_H_in[1592]);
        data_out57<=(s_data_in[25]&s_H_in[1657]);
        data_out58<=(s_data_in[26]&s_H_in[1722]);
        data_out59<=(s_data_in[27]&s_H_in[1787]);
        data_out60<=(s_data_in[28]&s_H_in[1852]);
        data_out61<=(s_data_in[29]&s_H_in[1917]);
        data_out62<=(s_data_in[30]&s_H_in[1982]);
        data_out63<=(s_data_in[31]&s_H_in[2047]);

         end
         //cnt 6 没有
         else if(r_en&&cnt==6)begin
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
