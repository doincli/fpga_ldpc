`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
module fn_4(
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
      data_out0<=(s_data_in[1]&s_H_in[64]);
data_out1<=(s_data_in[2]&s_H_in[129]);
data_out2<=(s_data_in[3]&s_H_in[194]);
data_out3<=(s_data_in[4]&s_H_in[259]);
data_out4<=(s_data_in[5]&s_H_in[324]);
data_out5<=(s_data_in[6]&s_H_in[389]);
data_out6<=(s_data_in[7]&s_H_in[454]);
data_out7<=(s_data_in[8]&s_H_in[519]);
data_out8<=(s_data_in[9]&s_H_in[584]);
data_out9<=(s_data_in[10]&s_H_in[649]);
data_out10<=(s_data_in[11]&s_H_in[714]);
data_out11<=(s_data_in[12]&s_H_in[779]);
data_out12<=(s_data_in[13]&s_H_in[844]);
data_out13<=(s_data_in[14]&s_H_in[909]);
data_out14<=(s_data_in[15]&s_H_in[974]);
data_out15<=(s_data_in[16]&s_H_in[1039]);
data_out16<=(s_data_in[17]&s_H_in[1104]);
data_out17<=(s_data_in[18]&s_H_in[1169]);
data_out18<=(s_data_in[19]&s_H_in[1234]);
data_out19<=(s_data_in[20]&s_H_in[1299]);
data_out20<=(s_data_in[21]&s_H_in[1364]);
data_out21<=(s_data_in[22]&s_H_in[1429]);
data_out22<=(s_data_in[23]&s_H_in[1494]);
data_out23<=(s_data_in[24]&s_H_in[1559]);
data_out24<=(s_data_in[25]&s_H_in[1624]);
data_out25<=(s_data_in[26]&s_H_in[1689]);
data_out26<=(s_data_in[27]&s_H_in[1754]);
data_out27<=(s_data_in[28]&s_H_in[1819]);
data_out28<=(s_data_in[29]&s_H_in[1884]);
data_out29<=(s_data_in[30]&s_H_in[1949]);
data_out30<=(s_data_in[31]&s_H_in[2014]);
data_out31<=(s_data_in[0]&s_H_in[31]);
data_out32<=(s_data_in[59]&s_H_in[3808]);
data_out33<=(s_data_in[60]&s_H_in[3873]);
data_out34<=(s_data_in[61]&s_H_in[3938]);
data_out35<=(s_data_in[62]&s_H_in[4003]);
data_out36<=(s_data_in[63]&s_H_in[4068]);
data_out37<=(s_data_in[32]&s_H_in[2085]);
data_out38<=(s_data_in[33]&s_H_in[2150]);
data_out39<=(s_data_in[34]&s_H_in[2215]);
data_out40<=(s_data_in[35]&s_H_in[2280]);
data_out41<=(s_data_in[36]&s_H_in[2345]);
data_out42<=(s_data_in[37]&s_H_in[2410]);
data_out43<=(s_data_in[38]&s_H_in[2475]);
data_out44<=(s_data_in[39]&s_H_in[2540]);
data_out45<=(s_data_in[40]&s_H_in[2605]);
data_out46<=(s_data_in[41]&s_H_in[2670]);
data_out47<=(s_data_in[42]&s_H_in[2735]);
data_out48<=(s_data_in[43]&s_H_in[2800]);
data_out49<=(s_data_in[44]&s_H_in[2865]);
data_out50<=(s_data_in[45]&s_H_in[2930]);
data_out51<=(s_data_in[46]&s_H_in[2995]);
data_out52<=(s_data_in[47]&s_H_in[3060]);
data_out53<=(s_data_in[48]&s_H_in[3125]);
data_out54<=(s_data_in[49]&s_H_in[3190]);
data_out55<=(s_data_in[50]&s_H_in[3255]);
data_out56<=(s_data_in[51]&s_H_in[3320]);
data_out57<=(s_data_in[52]&s_H_in[3385]);
data_out58<=(s_data_in[53]&s_H_in[3450]);
data_out59<=(s_data_in[54]&s_H_in[3515]);
data_out60<=(s_data_in[55]&s_H_in[3580]);
data_out61<=(s_data_in[56]&s_H_in[3645]);
data_out62<=(s_data_in[57]&s_H_in[3710]);
data_out63<=(s_data_in[58]&s_H_in[3775]);

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
        data_out0<=(s_data_in[19]&s_H_in[1216])+(s_data_in[36]&s_H_in[2304]);
        data_out1<=(s_data_in[20]&s_H_in[1281])+(s_data_in[37]&s_H_in[2369]);
        data_out2<=(s_data_in[21]&s_H_in[1346])+(s_data_in[38]&s_H_in[2434]);
        data_out3<=(s_data_in[22]&s_H_in[1411])+(s_data_in[39]&s_H_in[2499]);
        data_out4<=(s_data_in[23]&s_H_in[1476])+(s_data_in[40]&s_H_in[2564]);
        data_out5<=(s_data_in[24]&s_H_in[1541])+(s_data_in[41]&s_H_in[2629]);
        data_out6<=(s_data_in[25]&s_H_in[1606])+(s_data_in[42]&s_H_in[2694]);
        data_out7<=(s_data_in[26]&s_H_in[1671])+(s_data_in[43]&s_H_in[2759]);
        data_out8<=(s_data_in[27]&s_H_in[1736])+(s_data_in[44]&s_H_in[2824]);
        data_out9<=(s_data_in[28]&s_H_in[1801])+(s_data_in[45]&s_H_in[2889]);
        data_out10<=(s_data_in[29]&s_H_in[1866])+(s_data_in[46]&s_H_in[2954]);
        data_out11<=(s_data_in[30]&s_H_in[1931])+(s_data_in[47]&s_H_in[3019]);
        data_out12<=(s_data_in[31]&s_H_in[1996])+(s_data_in[48]&s_H_in[3084]);
        data_out13<=(s_data_in[0]&s_H_in[13])+(s_data_in[49]&s_H_in[3149]);
        data_out14<=(s_data_in[1]&s_H_in[78])+(s_data_in[50]&s_H_in[3214]);
        data_out15<=(s_data_in[2]&s_H_in[143])+(s_data_in[51]&s_H_in[3279]);
        data_out16<=(s_data_in[3]&s_H_in[208])+(s_data_in[52]&s_H_in[3344]);
        data_out17<=(s_data_in[4]&s_H_in[273])+(s_data_in[53]&s_H_in[3409]);
        data_out18<=(s_data_in[5]&s_H_in[338])+(s_data_in[54]&s_H_in[3474]);
        data_out19<=(s_data_in[6]&s_H_in[403])+(s_data_in[55]&s_H_in[3539]);
        data_out20<=(s_data_in[7]&s_H_in[468])+(s_data_in[56]&s_H_in[3604]);
        data_out21<=(s_data_in[8]&s_H_in[533])+(s_data_in[57]&s_H_in[3669]);
        data_out22<=(s_data_in[9]&s_H_in[598])+(s_data_in[58]&s_H_in[3734]);
        data_out23<=(s_data_in[10]&s_H_in[663])+(s_data_in[59]&s_H_in[3799]);
        data_out24<=(s_data_in[11]&s_H_in[728])+(s_data_in[60]&s_H_in[3864]);
        data_out25<=(s_data_in[12]&s_H_in[793])+(s_data_in[61]&s_H_in[3929]);
        data_out26<=(s_data_in[13]&s_H_in[858])+(s_data_in[62]&s_H_in[3994]);
        data_out27<=(s_data_in[14]&s_H_in[923])+(s_data_in[63]&s_H_in[4059]);
        data_out28<=(s_data_in[15]&s_H_in[988])+(s_data_in[32]&s_H_in[2076]);
        data_out29<=(s_data_in[16]&s_H_in[1053])+(s_data_in[33]&s_H_in[2141]);
        data_out30<=(s_data_in[17]&s_H_in[1118])+(s_data_in[34]&s_H_in[2206]);
        data_out31<=(s_data_in[18]&s_H_in[1183])+(s_data_in[35]&s_H_in[2271]);

        end
        else if(r_en&&cnt==3)begin
        data_out0<=(s_data_in[12]&s_H_in[768])+(s_data_in[45]&s_H_in[2880]);
        data_out1<=(s_data_in[13]&s_H_in[833])+(s_data_in[46]&s_H_in[2945]);
        data_out2<=(s_data_in[14]&s_H_in[898])+(s_data_in[47]&s_H_in[3010]);
        data_out3<=(s_data_in[15]&s_H_in[963])+(s_data_in[48]&s_H_in[3075]);
        data_out4<=(s_data_in[16]&s_H_in[1028])+(s_data_in[49]&s_H_in[3140]);
        data_out5<=(s_data_in[17]&s_H_in[1093])+(s_data_in[50]&s_H_in[3205]);
        data_out6<=(s_data_in[18]&s_H_in[1158])+(s_data_in[51]&s_H_in[3270]);
        data_out7<=(s_data_in[19]&s_H_in[1223])+(s_data_in[52]&s_H_in[3335]);
        data_out8<=(s_data_in[20]&s_H_in[1288])+(s_data_in[53]&s_H_in[3400]);
        data_out9<=(s_data_in[21]&s_H_in[1353])+(s_data_in[54]&s_H_in[3465]);
        data_out10<=(s_data_in[22]&s_H_in[1418])+(s_data_in[55]&s_H_in[3530]);
        data_out11<=(s_data_in[23]&s_H_in[1483])+(s_data_in[56]&s_H_in[3595]);
        data_out12<=(s_data_in[24]&s_H_in[1548])+(s_data_in[57]&s_H_in[3660]);
        data_out13<=(s_data_in[25]&s_H_in[1613])+(s_data_in[58]&s_H_in[3725]);
        data_out14<=(s_data_in[26]&s_H_in[1678])+(s_data_in[59]&s_H_in[3790]);
        data_out15<=(s_data_in[27]&s_H_in[1743])+(s_data_in[60]&s_H_in[3855]);
        data_out16<=(s_data_in[28]&s_H_in[1808])+(s_data_in[61]&s_H_in[3920]);
        data_out17<=(s_data_in[29]&s_H_in[1873])+(s_data_in[62]&s_H_in[3985]);
        data_out18<=(s_data_in[30]&s_H_in[1938])+(s_data_in[63]&s_H_in[4050]);
        data_out19<=(s_data_in[31]&s_H_in[2003])+(s_data_in[32]&s_H_in[2067]);
        data_out20<=(s_data_in[0]&s_H_in[20])+(s_data_in[33]&s_H_in[2132]);
        data_out21<=(s_data_in[1]&s_H_in[85])+(s_data_in[34]&s_H_in[2197]);
        data_out22<=(s_data_in[2]&s_H_in[150])+(s_data_in[35]&s_H_in[2262]);
        data_out23<=(s_data_in[3]&s_H_in[215])+(s_data_in[36]&s_H_in[2327]);
        data_out24<=(s_data_in[4]&s_H_in[280])+(s_data_in[37]&s_H_in[2392]);
        data_out25<=(s_data_in[5]&s_H_in[345])+(s_data_in[38]&s_H_in[2457]);
        data_out26<=(s_data_in[6]&s_H_in[410])+(s_data_in[39]&s_H_in[2522]);
        data_out27<=(s_data_in[7]&s_H_in[475])+(s_data_in[40]&s_H_in[2587]);
        data_out28<=(s_data_in[8]&s_H_in[540])+(s_data_in[41]&s_H_in[2652]);
        data_out29<=(s_data_in[9]&s_H_in[605])+(s_data_in[42]&s_H_in[2717]);
        data_out30<=(s_data_in[10]&s_H_in[670])+(s_data_in[43]&s_H_in[2782]);
        data_out31<=(s_data_in[11]&s_H_in[735])+(s_data_in[44]&s_H_in[2847]);
        end
        else if(r_en&&cnt==4)begin
       data_out0<=(s_data_in[3]&s_H_in[192])+(s_data_in[62]&s_H_in[3968]);
        data_out1<=(s_data_in[4]&s_H_in[257])+(s_data_in[63]&s_H_in[4033]);
        data_out2<=(s_data_in[5]&s_H_in[322])+(s_data_in[32]&s_H_in[2050]);
        data_out3<=(s_data_in[6]&s_H_in[387])+(s_data_in[33]&s_H_in[2115]);
        data_out4<=(s_data_in[7]&s_H_in[452])+(s_data_in[34]&s_H_in[2180]);
        data_out5<=(s_data_in[8]&s_H_in[517])+(s_data_in[35]&s_H_in[2245]);
        data_out6<=(s_data_in[9]&s_H_in[582])+(s_data_in[36]&s_H_in[2310]);
        data_out7<=(s_data_in[10]&s_H_in[647])+(s_data_in[37]&s_H_in[2375]);
        data_out8<=(s_data_in[11]&s_H_in[712])+(s_data_in[38]&s_H_in[2440]);
        data_out9<=(s_data_in[12]&s_H_in[777])+(s_data_in[39]&s_H_in[2505]);
        data_out10<=(s_data_in[13]&s_H_in[842])+(s_data_in[40]&s_H_in[2570]);
        data_out11<=(s_data_in[14]&s_H_in[907])+(s_data_in[41]&s_H_in[2635]);
        data_out12<=(s_data_in[15]&s_H_in[972])+(s_data_in[42]&s_H_in[2700]);
        data_out13<=(s_data_in[16]&s_H_in[1037])+(s_data_in[43]&s_H_in[2765]);
        data_out14<=(s_data_in[17]&s_H_in[1102])+(s_data_in[44]&s_H_in[2830]);
        data_out15<=(s_data_in[18]&s_H_in[1167])+(s_data_in[45]&s_H_in[2895]);
        data_out16<=(s_data_in[19]&s_H_in[1232])+(s_data_in[46]&s_H_in[2960]);
        data_out17<=(s_data_in[20]&s_H_in[1297])+(s_data_in[47]&s_H_in[3025]);
        data_out18<=(s_data_in[21]&s_H_in[1362])+(s_data_in[48]&s_H_in[3090]);
        data_out19<=(s_data_in[22]&s_H_in[1427])+(s_data_in[49]&s_H_in[3155]);
        data_out20<=(s_data_in[23]&s_H_in[1492])+(s_data_in[50]&s_H_in[3220]);
        data_out21<=(s_data_in[24]&s_H_in[1557])+(s_data_in[51]&s_H_in[3285]);
        data_out22<=(s_data_in[25]&s_H_in[1622])+(s_data_in[52]&s_H_in[3350]);
        data_out23<=(s_data_in[26]&s_H_in[1687])+(s_data_in[53]&s_H_in[3415]);
        data_out24<=(s_data_in[27]&s_H_in[1752])+(s_data_in[54]&s_H_in[3480]);
        data_out25<=(s_data_in[28]&s_H_in[1817])+(s_data_in[55]&s_H_in[3545]);
        data_out26<=(s_data_in[29]&s_H_in[1882])+(s_data_in[56]&s_H_in[3610]);
        data_out27<=(s_data_in[30]&s_H_in[1947])+(s_data_in[57]&s_H_in[3675]);
        data_out28<=(s_data_in[31]&s_H_in[2012])+(s_data_in[58]&s_H_in[3740]);
        data_out29<=(s_data_in[0]&s_H_in[29])+(s_data_in[59]&s_H_in[3805]);
        data_out30<=(s_data_in[1]&s_H_in[94])+(s_data_in[60]&s_H_in[3870]);
        data_out31<=(s_data_in[2]&s_H_in[159])+(s_data_in[61]&s_H_in[3935]);
        end
        else if(r_en&&cnt==5)begin
        
       data_out0<=(s_data_in[20]&s_H_in[1280]);
        data_out1<=(s_data_in[21]&s_H_in[1345]);
        data_out2<=(s_data_in[22]&s_H_in[1410]);
        data_out3<=(s_data_in[23]&s_H_in[1475]);
        data_out4<=(s_data_in[24]&s_H_in[1540]);
        data_out5<=(s_data_in[25]&s_H_in[1605]);
        data_out6<=(s_data_in[26]&s_H_in[1670]);
        data_out7<=(s_data_in[27]&s_H_in[1735]);
        data_out8<=(s_data_in[28]&s_H_in[1800]);
        data_out9<=(s_data_in[29]&s_H_in[1865]);
        data_out10<=(s_data_in[30]&s_H_in[1930]);
        data_out11<=(s_data_in[31]&s_H_in[1995]);
        data_out12<=(s_data_in[0]&s_H_in[12]);
        data_out13<=(s_data_in[1]&s_H_in[77]);
        data_out14<=(s_data_in[2]&s_H_in[142]);
        data_out15<=(s_data_in[3]&s_H_in[207]);
        data_out16<=(s_data_in[4]&s_H_in[272]);
        data_out17<=(s_data_in[5]&s_H_in[337]);
        data_out18<=(s_data_in[6]&s_H_in[402]);
        data_out19<=(s_data_in[7]&s_H_in[467]);
        data_out20<=(s_data_in[8]&s_H_in[532]);
        data_out21<=(s_data_in[9]&s_H_in[597]);
        data_out22<=(s_data_in[10]&s_H_in[662]);
        data_out23<=(s_data_in[11]&s_H_in[727]);
        data_out24<=(s_data_in[12]&s_H_in[792]);
        data_out25<=(s_data_in[13]&s_H_in[857]);
        data_out26<=(s_data_in[14]&s_H_in[922]);
        data_out27<=(s_data_in[15]&s_H_in[987]);
        data_out28<=(s_data_in[16]&s_H_in[1052]);
        data_out29<=(s_data_in[17]&s_H_in[1117]);
        data_out30<=(s_data_in[18]&s_H_in[1182]);
        data_out31<=(s_data_in[19]&s_H_in[1247]); 
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
