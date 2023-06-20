module error_control(
    clk    ,
    rst_n  ,
    //其他信号,举例dout
    rd_en,
    data_in,
    data_out,
    cnt
    );

    //参数定义
    parameter      DATA_W =         4096;

    //输入信号定义
    input               clk    ;
    input               rst_n  ;
    input               rd_en  ;
    input [63:0]       data_in;
    reg  [3:0]  addar;
    //输出信号定义
    output[255:0]  data_out   ;
    output[2:0]  cnt;
//    reg [2:0]  cnt;
    
    //中间信号
//    wire [DATA_W-1:0]  H_out;
    wire [63:0] data_out1 ;
    wire [63:0] data_out2 ;
    wire [63:0] data_out3 ;
    wire [63:0] data_out4 ;
    
    //error 图样输出
    assign data_out = {data_out1,data_out2,data_out3,data_out4};
    
    //rom 地址控制模块
    always  @(posedge clk or negedge rst_n)begin
        if(rst_n==1'b0)begin
            addar <= 0 ;
        end
        else if(rd_en==1)begin
            addar <= addar +1 ;
        end
        else begin
            addar <= 0;
        end
    end
 // H模块调用
 wire [4095 : 0] H_out1;
 wire [4095 : 0] H_out2;
 wire [4095 : 0] H_out3;
 wire [4095 : 0] H_out4;
 
// H1 h1 (
//   .clka(clk),    // input wire clka
//   .addra(addar),  // input wire [2 : 0] addra
//   .douta(H_out1)  // output wire [4095 : 0] douta
// );
 
//  H2 h2 (
//   .clka(clk),    // input wire clka
//   .addra(addar),  // input wire [2 : 0] addra
//   .douta(H_out2)  // output wire [4095 : 0] douta
// );
 
//  H3 h3 (
//   .clka(clk),    // input wire clka
//   .addra(addar),  // input wire [2 : 0] addra
//   .douta(H_out3)  // output wire [4095 : 0] douta
// );
 
//  h4 h4 (
//   .clka(clk),    // input wire clka
//   .addra(addar),  // input wire [2 : 0] addra
//   .douta(H_out4)  // output wire [4095 : 0] douta
// );

//rom 4 h 
wire [1023:0] H_out4_1 ;
coe4_1 coe4_1 (
  .a(addar),      // input wire [3 : 0] a
  .clk(clk),  // input wire clk
  .spo(H_out4_1)  // output wire [1023 : 0] spo
);
wire [1023:0] H_out4_2 ;
coe4_2 coe4_2 (
  .a(addar),      // input wire [3 : 0] a
  .clk(clk),  // input wire clk
  .spo(H_out4_2)  // output wire [1023 : 0] spo
);
wire [1023:0] H_out4_3 ;
coe4_3 coe4_3 (
  .a(addar),      // input wire [3 : 0] a
  .clk(clk),  // input wire clk
  .spo(H_out4_3)  // output wire [1023 : 0] spo
);
wire [1023:0] H_out4_4 ;
coe4_4 coe4_4 (
  .a(addar),      // input wire [3 : 0] a
  .clk(clk),  // input wire clk
  .spo(H_out4_4)  // output wire [1023 : 0] spo
);

//rom h1
wire [1023:0] H_out1_1 ;
H1_1 H1_1 (
  .a(addar),      // input wire [3 : 0] a
  .clk(clk),  // input wire clk
  .spo(H_out1_1)  // output wire [1023 : 0] spo
);
wire [1023:0] H_out1_2 ;
H1_2 H1_2 (
  .a(addar),      // input wire [3 : 0] a
  .clk(clk),  // input wire clk
  .spo(H_out1_2)  // output wire [1023 : 0] spo
);
wire [1023:0] H_out1_3 ;
H1_3 H1_3 (
  .a(addar),      // input wire [3 : 0] a
  .clk(clk),  // input wire clk
  .spo(H_out1_3)  // output wire [1023 : 0] spo
);
wire [1023:0] H_out1_4 ;
H1_4 H1_4 (
  .a(addar),      // input wire [3 : 0] a
  .clk(clk),  // input wire clk
  .spo(H_out1_4)  // output wire [1023 : 0] spo
);

// rom 2 h
wire [1023:0] H_out2_1 ;
H2_1 H2_1 (
  .a(addar),      // input wire [3 : 0] a
  .clk(clk),  // input wire clk
  .spo(H_out2_1)  // output wire [1023 : 0] spo
);
wire [1023:0] H_out2_2 ;
H2_2 H2_2 (
  .a(addar),      // input wire [3 : 0] a
  .clk(clk),  // input wire clk
  .spo(H_out2_2)  // output wire [1023 : 0] spo
);
wire [1023:0] H_out2_3 ;
H2_3 H2_3 (
  .a(addar),      // input wire [3 : 0] a
  .clk(clk),  // input wire clk
  .spo(H_out2_3)  // output wire [1023 : 0] spo
);
wire [1023:0] H_out2_4 ;
H2_4 H2_4 (
  .a(addar),      // input wire [3 : 0] a
  .clk(clk),  // input wire clk
  .spo(H_out2_4)  // output wire [1023 : 0] spo
);

//rom h3
wire [1023:0] H_out3_1 ;
H3_1 H3_1 (
  .a(addar),      // input wire [3 : 0] a
  .clk(clk),  // input wire clk
  .spo(H_out3_1)  // output wire [1023 : 0] spo
);
wire [1023:0] H_out3_2 ;
H3_2 H3_2 (
  .a(addar),      // input wire [3 : 0] a
  .clk(clk),  // input wire clk
  .spo(H_out3_2)  // output wire [1023 : 0] spo
);
wire [1023:0] H_out3_3 ;
H3_3 H3_3 (
  .a(addar),      // input wire [3 : 0] a
  .clk(clk),  // input wire clk
  .spo(H_out3_3)  // output wire [1023 : 0] spo
);
wire [1023:0] H_out3_4 ;
H3_4 H3_4 (
  .a(addar),      // input wire [3 : 0] a
  .clk(clk),  // input wire clk
  .spo(H_out3_4)  // output wire [1023 : 0] spo
);

assign H_out4={H_out4_1,H_out4_2,H_out4_3,H_out4_4};
assign H_out1={H_out1_1,H_out1_2,H_out1_3,H_out1_4};
assign H_out2={H_out2_1,H_out2_2,H_out2_3,H_out2_4};
assign H_out3={H_out3_1,H_out3_2,H_out3_3,H_out3_4};

   error_comp c1(
   .clk(clk),
   .rst_n(rst_n),
   .r_pre(rd_en),
   .data_pre(data_in),
   .H_in(H_out1),
   .data_out(data_out1),
   .cnt(cnt)
   );

    error_comp c2(
   .clk(clk),
   .rst_n(rst_n),
   .r_pre(rd_en),
   .data_pre(data_in),
   .H_in(H_out2),
   .data_out(data_out2)
//   .cnt(cnt)
   );
   
    error_comp c3(
   .clk(clk),
   .rst_n(rst_n),
   .r_pre(rd_en),
   .data_pre(data_in),
   .H_in(H_out3),
   .data_out(data_out3)
//   .cnt(cnt)
   );
   
    error_comp c4(
     .clk(clk),
     .rst_n(rst_n),
     .r_pre(rd_en),
     .data_pre(data_in),
     .H_in(H_out4),
     .data_out(data_out4)
//     .cnt(cnt)
     );
    endmodule

