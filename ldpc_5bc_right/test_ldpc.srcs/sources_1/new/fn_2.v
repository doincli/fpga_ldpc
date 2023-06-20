`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module fn_2(
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
        data_out0<=(s_data_in[8]&s_H_in[512])+(s_data_in[50]&s_H_in[3200]);
        data_out1<=(s_data_in[9]&s_H_in[577])+(s_data_in[51]&s_H_in[3265]);
        data_out2<=(s_data_in[10]&s_H_in[642])+(s_data_in[52]&s_H_in[3330]);
        data_out3<=(s_data_in[11]&s_H_in[707])+(s_data_in[53]&s_H_in[3395]);
        data_out4<=(s_data_in[12]&s_H_in[772])+(s_data_in[54]&s_H_in[3460]);
        data_out5<=(s_data_in[13]&s_H_in[837])+(s_data_in[55]&s_H_in[3525]);
        data_out6<=(s_data_in[14]&s_H_in[902])+(s_data_in[56]&s_H_in[3590]);
        data_out7<=(s_data_in[15]&s_H_in[967])+(s_data_in[57]&s_H_in[3655]);
        data_out8<=(s_data_in[16]&s_H_in[1032])+(s_data_in[58]&s_H_in[3720]);
        data_out9<=(s_data_in[17]&s_H_in[1097])+(s_data_in[59]&s_H_in[3785]);
        data_out10<=(s_data_in[18]&s_H_in[1162])+(s_data_in[60]&s_H_in[3850]);
        data_out11<=(s_data_in[19]&s_H_in[1227])+(s_data_in[61]&s_H_in[3915]);
        data_out12<=(s_data_in[20]&s_H_in[1292])+(s_data_in[62]&s_H_in[3980]);
        data_out13<=(s_data_in[21]&s_H_in[1357])+(s_data_in[63]&s_H_in[4045]);
        data_out14<=(s_data_in[22]&s_H_in[1422])+(s_data_in[32]&s_H_in[2062]);
        data_out15<=(s_data_in[23]&s_H_in[1487])+(s_data_in[33]&s_H_in[2127]);
        data_out16<=(s_data_in[24]&s_H_in[1552])+(s_data_in[34]&s_H_in[2192]);
        data_out17<=(s_data_in[25]&s_H_in[1617])+(s_data_in[35]&s_H_in[2257]);
        data_out18<=(s_data_in[26]&s_H_in[1682])+(s_data_in[36]&s_H_in[2322]);
        data_out19<=(s_data_in[27]&s_H_in[1747])+(s_data_in[37]&s_H_in[2387]);
        data_out20<=(s_data_in[28]&s_H_in[1812])+(s_data_in[38]&s_H_in[2452]);
        data_out21<=(s_data_in[29]&s_H_in[1877])+(s_data_in[39]&s_H_in[2517]);
        data_out22<=(s_data_in[30]&s_H_in[1942])+(s_data_in[40]&s_H_in[2582]);
        data_out23<=(s_data_in[31]&s_H_in[2007])+(s_data_in[41]&s_H_in[2647]);
        data_out24<=(s_data_in[0]&s_H_in[24])+(s_data_in[42]&s_H_in[2712]);
        data_out25<=(s_data_in[1]&s_H_in[89])+(s_data_in[43]&s_H_in[2777]);
        data_out26<=(s_data_in[2]&s_H_in[154])+(s_data_in[44]&s_H_in[2842]);
        data_out27<=(s_data_in[3]&s_H_in[219])+(s_data_in[45]&s_H_in[2907]);
        data_out28<=(s_data_in[4]&s_H_in[284])+(s_data_in[46]&s_H_in[2972]);
        data_out29<=(s_data_in[5]&s_H_in[349])+(s_data_in[47]&s_H_in[3037]);
        data_out30<=(s_data_in[6]&s_H_in[414])+(s_data_in[48]&s_H_in[3102]);
        data_out31<=(s_data_in[7]&s_H_in[479])+(s_data_in[49]&s_H_in[3167]);
        data_out32<=(s_data_in[49]&s_H_in[3168]);
        data_out33<=(s_data_in[50]&s_H_in[3233]);
        data_out34<=(s_data_in[51]&s_H_in[3298]);
        data_out35<=(s_data_in[52]&s_H_in[3363]);
        data_out36<=(s_data_in[53]&s_H_in[3428]);
        data_out37<=(s_data_in[54]&s_H_in[3493]);
        data_out38<=(s_data_in[55]&s_H_in[3558]);
        data_out39<=(s_data_in[56]&s_H_in[3623]);
        data_out40<=(s_data_in[57]&s_H_in[3688]);
        data_out41<=(s_data_in[58]&s_H_in[3753]);
        data_out42<=(s_data_in[59]&s_H_in[3818]);
        data_out43<=(s_data_in[60]&s_H_in[3883]);
        data_out44<=(s_data_in[61]&s_H_in[3948]);
        data_out45<=(s_data_in[62]&s_H_in[4013]);
        data_out46<=(s_data_in[63]&s_H_in[4078]);
        data_out47<=(s_data_in[32]&s_H_in[2095]);
        data_out48<=(s_data_in[33]&s_H_in[2160]);
        data_out49<=(s_data_in[34]&s_H_in[2225]);
        data_out50<=(s_data_in[35]&s_H_in[2290]);
        data_out51<=(s_data_in[36]&s_H_in[2355]);
        data_out52<=(s_data_in[37]&s_H_in[2420]);
        data_out53<=(s_data_in[38]&s_H_in[2485]);
        data_out54<=(s_data_in[39]&s_H_in[2550]);
        data_out55<=(s_data_in[40]&s_H_in[2615]);
        data_out56<=(s_data_in[41]&s_H_in[2680]);
        data_out57<=(s_data_in[42]&s_H_in[2745]);
        data_out58<=(s_data_in[43]&s_H_in[2810]);
        data_out59<=(s_data_in[44]&s_H_in[2875]);
        data_out60<=(s_data_in[45]&s_H_in[2940]);
        data_out61<=(s_data_in[46]&s_H_in[3005]);
        data_out62<=(s_data_in[47]&s_H_in[3070]);
        data_out63<=(s_data_in[48]&s_H_in[3135]);

        end
        
        else if(r_en&&cnt==1)begin
        data_out0<=(s_data_in[44]&s_H_in[2816]);
        data_out1<=(s_data_in[45]&s_H_in[2881]);
        data_out2<=(s_data_in[46]&s_H_in[2946]);
        data_out3<=(s_data_in[47]&s_H_in[3011]);
        data_out4<=(s_data_in[48]&s_H_in[3076]);
        data_out5<=(s_data_in[49]&s_H_in[3141]);
        data_out6<=(s_data_in[50]&s_H_in[3206]);
        data_out7<=(s_data_in[51]&s_H_in[3271]);
        data_out8<=(s_data_in[52]&s_H_in[3336]);
        data_out9<=(s_data_in[53]&s_H_in[3401]);
        data_out10<=(s_data_in[54]&s_H_in[3466]);
        data_out11<=(s_data_in[55]&s_H_in[3531]);
        data_out12<=(s_data_in[56]&s_H_in[3596]);
        data_out13<=(s_data_in[57]&s_H_in[3661]);
        data_out14<=(s_data_in[58]&s_H_in[3726]);
        data_out15<=(s_data_in[59]&s_H_in[3791]);
        data_out16<=(s_data_in[60]&s_H_in[3856]);
        data_out17<=(s_data_in[61]&s_H_in[3921]);
        data_out18<=(s_data_in[62]&s_H_in[3986]);
        data_out19<=(s_data_in[63]&s_H_in[4051]);
        data_out20<=(s_data_in[32]&s_H_in[2068]);
        data_out21<=(s_data_in[33]&s_H_in[2133]);
        data_out22<=(s_data_in[34]&s_H_in[2198]);
        data_out23<=(s_data_in[35]&s_H_in[2263]);
        data_out24<=(s_data_in[36]&s_H_in[2328]);
        data_out25<=(s_data_in[37]&s_H_in[2393]);
        data_out26<=(s_data_in[38]&s_H_in[2458]);
        data_out27<=(s_data_in[39]&s_H_in[2523]);
        data_out28<=(s_data_in[40]&s_H_in[2588]);
        data_out29<=(s_data_in[41]&s_H_in[2653]);
        data_out30<=(s_data_in[42]&s_H_in[2718]);
        data_out31<=(s_data_in[43]&s_H_in[2783]);
        data_out32<=(s_data_in[26]&s_H_in[1696]);
        data_out33<=(s_data_in[27]&s_H_in[1761]);
        data_out34<=(s_data_in[28]&s_H_in[1826]);
        data_out35<=(s_data_in[29]&s_H_in[1891]);
        data_out36<=(s_data_in[30]&s_H_in[1956]);
        data_out37<=(s_data_in[31]&s_H_in[2021]);
        data_out38<=(s_data_in[0]&s_H_in[38]);
        data_out39<=(s_data_in[1]&s_H_in[103]);
        data_out40<=(s_data_in[2]&s_H_in[168]);
        data_out41<=(s_data_in[3]&s_H_in[233]);
        data_out42<=(s_data_in[4]&s_H_in[298]);
        data_out43<=(s_data_in[5]&s_H_in[363]);
        data_out44<=(s_data_in[6]&s_H_in[428]);
        data_out45<=(s_data_in[7]&s_H_in[493]);
        data_out46<=(s_data_in[8]&s_H_in[558]);
        data_out47<=(s_data_in[9]&s_H_in[623]);
        data_out48<=(s_data_in[10]&s_H_in[688]);
        data_out49<=(s_data_in[11]&s_H_in[753]);
        data_out50<=(s_data_in[12]&s_H_in[818]);
        data_out51<=(s_data_in[13]&s_H_in[883]);
        data_out52<=(s_data_in[14]&s_H_in[948]);
        data_out53<=(s_data_in[15]&s_H_in[1013]);
        data_out54<=(s_data_in[16]&s_H_in[1078]);
        data_out55<=(s_data_in[17]&s_H_in[1143]);
        data_out56<=(s_data_in[18]&s_H_in[1208]);
        data_out57<=(s_data_in[19]&s_H_in[1273]);
        data_out58<=(s_data_in[20]&s_H_in[1338]);
        data_out59<=(s_data_in[21]&s_H_in[1403]);
        data_out60<=(s_data_in[22]&s_H_in[1468]);
        data_out61<=(s_data_in[23]&s_H_in[1533]);
        data_out62<=(s_data_in[24]&s_H_in[1598]);
        data_out63<=(s_data_in[25]&s_H_in[1663]);

        end
        else if(r_en&&cnt==2)begin
        data_out0<=(s_data_in[8]&s_H_in[512]);
        data_out1<=(s_data_in[9]&s_H_in[577]);
        data_out2<=(s_data_in[10]&s_H_in[642]);
        data_out3<=(s_data_in[11]&s_H_in[707]);
        data_out4<=(s_data_in[12]&s_H_in[772]);
        data_out5<=(s_data_in[13]&s_H_in[837]);
        data_out6<=(s_data_in[14]&s_H_in[902]);
        data_out7<=(s_data_in[15]&s_H_in[967]);
        data_out8<=(s_data_in[16]&s_H_in[1032]);
        data_out9<=(s_data_in[17]&s_H_in[1097]);
        data_out10<=(s_data_in[18]&s_H_in[1162]);
        data_out11<=(s_data_in[19]&s_H_in[1227]);
        data_out12<=(s_data_in[20]&s_H_in[1292]);
        data_out13<=(s_data_in[21]&s_H_in[1357]);
        data_out14<=(s_data_in[22]&s_H_in[1422]);
        data_out15<=(s_data_in[23]&s_H_in[1487]);
        data_out16<=(s_data_in[24]&s_H_in[1552]);
        data_out17<=(s_data_in[25]&s_H_in[1617]);
        data_out18<=(s_data_in[26]&s_H_in[1682]);
        data_out19<=(s_data_in[27]&s_H_in[1747]);
        data_out20<=(s_data_in[28]&s_H_in[1812]);
        data_out21<=(s_data_in[29]&s_H_in[1877]);
        data_out22<=(s_data_in[30]&s_H_in[1942]);
        data_out23<=(s_data_in[31]&s_H_in[2007]);
        data_out24<=(s_data_in[0]&s_H_in[24]);
        data_out25<=(s_data_in[1]&s_H_in[89]);
        data_out26<=(s_data_in[2]&s_H_in[154]);
        data_out27<=(s_data_in[3]&s_H_in[219]);
        data_out28<=(s_data_in[4]&s_H_in[284]);
        data_out29<=(s_data_in[5]&s_H_in[349]);
        data_out30<=(s_data_in[6]&s_H_in[414]);
        data_out31<=(s_data_in[7]&s_H_in[479]);
        data_out32<=(s_data_in[30]&s_H_in[1952])+(s_data_in[52]&s_H_in[3360]);
        data_out33<=(s_data_in[31]&s_H_in[2017])+(s_data_in[53]&s_H_in[3425]);
        data_out34<=(s_data_in[0]&s_H_in[34])+(s_data_in[54]&s_H_in[3490]);
        data_out35<=(s_data_in[1]&s_H_in[99])+(s_data_in[55]&s_H_in[3555]);
        data_out36<=(s_data_in[2]&s_H_in[164])+(s_data_in[56]&s_H_in[3620]);
        data_out37<=(s_data_in[3]&s_H_in[229])+(s_data_in[57]&s_H_in[3685]);
        data_out38<=(s_data_in[4]&s_H_in[294])+(s_data_in[58]&s_H_in[3750]);
        data_out39<=(s_data_in[5]&s_H_in[359])+(s_data_in[59]&s_H_in[3815]);
        data_out40<=(s_data_in[6]&s_H_in[424])+(s_data_in[60]&s_H_in[3880]);
        data_out41<=(s_data_in[7]&s_H_in[489])+(s_data_in[61]&s_H_in[3945]);
        data_out42<=(s_data_in[8]&s_H_in[554])+(s_data_in[62]&s_H_in[4010]);
        data_out43<=(s_data_in[9]&s_H_in[619])+(s_data_in[63]&s_H_in[4075]);
        data_out44<=(s_data_in[10]&s_H_in[684])+(s_data_in[32]&s_H_in[2092]);
        data_out45<=(s_data_in[11]&s_H_in[749])+(s_data_in[33]&s_H_in[2157]);
        data_out46<=(s_data_in[12]&s_H_in[814])+(s_data_in[34]&s_H_in[2222]);
        data_out47<=(s_data_in[13]&s_H_in[879])+(s_data_in[35]&s_H_in[2287]);
        data_out48<=(s_data_in[14]&s_H_in[944])+(s_data_in[36]&s_H_in[2352]);
        data_out49<=(s_data_in[15]&s_H_in[1009])+(s_data_in[37]&s_H_in[2417]);
        data_out50<=(s_data_in[16]&s_H_in[1074])+(s_data_in[38]&s_H_in[2482]);
        data_out51<=(s_data_in[17]&s_H_in[1139])+(s_data_in[39]&s_H_in[2547]);
        data_out52<=(s_data_in[18]&s_H_in[1204])+(s_data_in[40]&s_H_in[2612]);
        data_out53<=(s_data_in[19]&s_H_in[1269])+(s_data_in[41]&s_H_in[2677]);
        data_out54<=(s_data_in[20]&s_H_in[1334])+(s_data_in[42]&s_H_in[2742]);
        data_out55<=(s_data_in[21]&s_H_in[1399])+(s_data_in[43]&s_H_in[2807]);
        data_out56<=(s_data_in[22]&s_H_in[1464])+(s_data_in[44]&s_H_in[2872]);
        data_out57<=(s_data_in[23]&s_H_in[1529])+(s_data_in[45]&s_H_in[2937]);
        data_out58<=(s_data_in[24]&s_H_in[1594])+(s_data_in[46]&s_H_in[3002]);
        data_out59<=(s_data_in[25]&s_H_in[1659])+(s_data_in[47]&s_H_in[3067]);
        data_out60<=(s_data_in[26]&s_H_in[1724])+(s_data_in[48]&s_H_in[3132]);
        data_out61<=(s_data_in[27]&s_H_in[1789])+(s_data_in[49]&s_H_in[3197]);
        data_out62<=(s_data_in[28]&s_H_in[1854])+(s_data_in[50]&s_H_in[3262]);
        data_out63<=(s_data_in[29]&s_H_in[1919])+(s_data_in[51]&s_H_in[3327]);

        end
        else if(r_en&&cnt==3)begin
        data_out0<=(s_data_in[22]&s_H_in[1408]);
        data_out1<=(s_data_in[23]&s_H_in[1473]);
        data_out2<=(s_data_in[24]&s_H_in[1538]);
        data_out3<=(s_data_in[25]&s_H_in[1603]);
        data_out4<=(s_data_in[26]&s_H_in[1668]);
        data_out5<=(s_data_in[27]&s_H_in[1733]);
        data_out6<=(s_data_in[28]&s_H_in[1798]);
        data_out7<=(s_data_in[29]&s_H_in[1863]);
        data_out8<=(s_data_in[30]&s_H_in[1928]);
        data_out9<=(s_data_in[31]&s_H_in[1993]);
        data_out10<=(s_data_in[0]&s_H_in[10]);
        data_out11<=(s_data_in[1]&s_H_in[75]);
        data_out12<=(s_data_in[2]&s_H_in[140]);
        data_out13<=(s_data_in[3]&s_H_in[205]);
        data_out14<=(s_data_in[4]&s_H_in[270]);
        data_out15<=(s_data_in[5]&s_H_in[335]);
        data_out16<=(s_data_in[6]&s_H_in[400]);
        data_out17<=(s_data_in[7]&s_H_in[465]);
        data_out18<=(s_data_in[8]&s_H_in[530]);
        data_out19<=(s_data_in[9]&s_H_in[595]);
        data_out20<=(s_data_in[10]&s_H_in[660]);
        data_out21<=(s_data_in[11]&s_H_in[725]);
        data_out22<=(s_data_in[12]&s_H_in[790]);
        data_out23<=(s_data_in[13]&s_H_in[855]);
        data_out24<=(s_data_in[14]&s_H_in[920]);
        data_out25<=(s_data_in[15]&s_H_in[985]);
        data_out26<=(s_data_in[16]&s_H_in[1050]);
        data_out27<=(s_data_in[17]&s_H_in[1115]);
        data_out28<=(s_data_in[18]&s_H_in[1180]);
        data_out29<=(s_data_in[19]&s_H_in[1245]);
        data_out30<=(s_data_in[20]&s_H_in[1310]);
        data_out31<=(s_data_in[21]&s_H_in[1375]);
        data_out32<=(s_data_in[17]&s_H_in[1120]);
        data_out33<=(s_data_in[18]&s_H_in[1185]);
        data_out34<=(s_data_in[19]&s_H_in[1250]);
        data_out35<=(s_data_in[20]&s_H_in[1315]);
        data_out36<=(s_data_in[21]&s_H_in[1380]);
        data_out37<=(s_data_in[22]&s_H_in[1445]);
        data_out38<=(s_data_in[23]&s_H_in[1510]);
        data_out39<=(s_data_in[24]&s_H_in[1575]);
        data_out40<=(s_data_in[25]&s_H_in[1640]);
        data_out41<=(s_data_in[26]&s_H_in[1705]);
        data_out42<=(s_data_in[27]&s_H_in[1770]);
        data_out43<=(s_data_in[28]&s_H_in[1835]);
        data_out44<=(s_data_in[29]&s_H_in[1900]);
        data_out45<=(s_data_in[30]&s_H_in[1965]);
        data_out46<=(s_data_in[31]&s_H_in[2030]);
        data_out47<=(s_data_in[0]&s_H_in[47]);
        data_out48<=(s_data_in[1]&s_H_in[112]);
        data_out49<=(s_data_in[2]&s_H_in[177]);
        data_out50<=(s_data_in[3]&s_H_in[242]);
        data_out51<=(s_data_in[4]&s_H_in[307]);
        data_out52<=(s_data_in[5]&s_H_in[372]);
        data_out53<=(s_data_in[6]&s_H_in[437]);
        data_out54<=(s_data_in[7]&s_H_in[502]);
        data_out55<=(s_data_in[8]&s_H_in[567]);
        data_out56<=(s_data_in[9]&s_H_in[632]);
        data_out57<=(s_data_in[10]&s_H_in[697]);
        data_out58<=(s_data_in[11]&s_H_in[762]);
        data_out59<=(s_data_in[12]&s_H_in[827]);
        data_out60<=(s_data_in[13]&s_H_in[892]);
        data_out61<=(s_data_in[14]&s_H_in[957]);
        data_out62<=(s_data_in[15]&s_H_in[1022]);
        data_out63<=(s_data_in[16]&s_H_in[1087]);

        end
        else if(r_en&&cnt==4)begin
        data_out0<=0;
        data_out1<=0;
        data_out2<=0;
        data_out3<=0;
        data_out4<=0;
        data_out5<=0;
        data_out6<=0;
        data_out7<=0;
        data_out8<=0;
        data_out9<=0;
        data_out10<=0;
        data_out11<=0;
        data_out12<=0;
        data_out13<=0;
        data_out14<=0;
        data_out15<=0;
        data_out16<=0;
        data_out17<=0;
        data_out18<=0;
        data_out19<=0;
        data_out20<=0;
        data_out21<=0;
        data_out22<=0;
        data_out23<=0;
        data_out24<=0;
        data_out25<=0;
        data_out26<=0;
        data_out27<=0;
        data_out28<=0;
        data_out29<=0;
        data_out30<=0;
        data_out31<=0;
        data_out32<=(s_data_in[0]&s_H_in[32])+(s_data_in[33]&s_H_in[2144]);
        data_out33<=(s_data_in[1]&s_H_in[97])+(s_data_in[34]&s_H_in[2209]);
        data_out34<=(s_data_in[2]&s_H_in[162])+(s_data_in[35]&s_H_in[2274]);
        data_out35<=(s_data_in[3]&s_H_in[227])+(s_data_in[36]&s_H_in[2339]);
        data_out36<=(s_data_in[4]&s_H_in[292])+(s_data_in[37]&s_H_in[2404]);
        data_out37<=(s_data_in[5]&s_H_in[357])+(s_data_in[38]&s_H_in[2469]);
        data_out38<=(s_data_in[6]&s_H_in[422])+(s_data_in[39]&s_H_in[2534]);
        data_out39<=(s_data_in[7]&s_H_in[487])+(s_data_in[40]&s_H_in[2599]);
        data_out40<=(s_data_in[8]&s_H_in[552])+(s_data_in[41]&s_H_in[2664]);
        data_out41<=(s_data_in[9]&s_H_in[617])+(s_data_in[42]&s_H_in[2729]);
        data_out42<=(s_data_in[10]&s_H_in[682])+(s_data_in[43]&s_H_in[2794]);
        data_out43<=(s_data_in[11]&s_H_in[747])+(s_data_in[44]&s_H_in[2859]);
        data_out44<=(s_data_in[12]&s_H_in[812])+(s_data_in[45]&s_H_in[2924]);
        data_out45<=(s_data_in[13]&s_H_in[877])+(s_data_in[46]&s_H_in[2989]);
        data_out46<=(s_data_in[14]&s_H_in[942])+(s_data_in[47]&s_H_in[3054]);
        data_out47<=(s_data_in[15]&s_H_in[1007])+(s_data_in[48]&s_H_in[3119]);
        data_out48<=(s_data_in[16]&s_H_in[1072])+(s_data_in[49]&s_H_in[3184]);
        data_out49<=(s_data_in[17]&s_H_in[1137])+(s_data_in[50]&s_H_in[3249]);
        data_out50<=(s_data_in[18]&s_H_in[1202])+(s_data_in[51]&s_H_in[3314]);
        data_out51<=(s_data_in[19]&s_H_in[1267])+(s_data_in[52]&s_H_in[3379]);
        data_out52<=(s_data_in[20]&s_H_in[1332])+(s_data_in[53]&s_H_in[3444]);
        data_out53<=(s_data_in[21]&s_H_in[1397])+(s_data_in[54]&s_H_in[3509]);
        data_out54<=(s_data_in[22]&s_H_in[1462])+(s_data_in[55]&s_H_in[3574]);
        data_out55<=(s_data_in[23]&s_H_in[1527])+(s_data_in[56]&s_H_in[3639]);
        data_out56<=(s_data_in[24]&s_H_in[1592])+(s_data_in[57]&s_H_in[3704]);
        data_out57<=(s_data_in[25]&s_H_in[1657])+(s_data_in[58]&s_H_in[3769]);
        data_out58<=(s_data_in[26]&s_H_in[1722])+(s_data_in[59]&s_H_in[3834]);
        data_out59<=(s_data_in[27]&s_H_in[1787])+(s_data_in[60]&s_H_in[3899]);
        data_out60<=(s_data_in[28]&s_H_in[1852])+(s_data_in[61]&s_H_in[3964]);
        data_out61<=(s_data_in[29]&s_H_in[1917])+(s_data_in[62]&s_H_in[4029]);
        data_out62<=(s_data_in[30]&s_H_in[1982])+(s_data_in[63]&s_H_in[4094]);
        data_out63<=(s_data_in[31]&s_H_in[2047])+(s_data_in[32]&s_H_in[2111]);

        end
        else if(r_en&&cnt==5)begin
        
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
