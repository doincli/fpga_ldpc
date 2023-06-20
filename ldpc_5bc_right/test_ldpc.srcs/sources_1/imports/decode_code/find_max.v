module find_max#(
parameter DW = 8
)
(
input clk,
input rst_n,
input rd_en,
input [512*DW-1 :0] din,
output [DW-1:0] max1,
output [9:0] count,
output reg [3:0] cnt
);

wire add_cnt;
wire end_cnt;
//reg [3:0] cnt;
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

assign add_cnt = rd_en;       
assign end_cnt = add_cnt && cnt== 9-1;   
//利用存储器进行赋值
wire[DW-1:0] d[511:0];
generate
    genvar i;
    for(i=0;i<512;i=i+1)
    begin:loop_assign
        assign d[i] = din[DW*i+DW-1:DW*i];
    end
endgenerate

//进行第一级的两两比较    共9级比较
// stage 1,comp
reg[DW-1:0] s1_max[255:0];
reg[9:0]  s1_count[255:0];
generate
    for(i=0;i<256;i=i+1)
    begin:loop_comp
        always@(posedge clk  or negedge rst_n)
            if(rst_n==1'b0)begin
                   s1_max[i] <= 0 ;
                   s1_count[i] <= 0 ;
               end
            else if(d[2*i]>d[2*i+1]&&rd_en==1)begin
                s1_max[i] <= d[2*i];
               s1_count[i] <=2*i;
            end
            else if(d[2*i]<=d[2*i+1]&&rd_en) begin
                s1_max[i] <= d[2*i+1];
                s1_count[i] <=2*i+1;      
            end
            else begin
            s1_max[i] <= s1_max[i]  ;
            s1_count[i] <=s1_count[i] ;
            end
            
    end
endgenerate

// stage 2,
wire[DW-1:0] s2_max[127:0];
wire[9:0] s2_count[127:0];

generate
    for(i=0;i<128;i=i+1)
    begin:loop_megs2
        meg u_s2meg(
            .clk(clk),
            .rst_n(rst_n),
            .rd_en(rd_en),
            .g1_max(s1_max[2*i]),
            .count1_max(s1_count[2*i]),
            .count2_max(s1_count[2*i+1]),
            .g2_max(s1_max[2*i+1]),          
            .max1(s2_max[i]),
            .count_max(s2_count[i])
        );
    end
endgenerate
// stage 3,
wire[DW-1:0] s3_max[63:0];
wire[9:0] s3_count[63:0];

generate
    for(i=0;i<64;i=i+1)
    begin:loop_megs3
        meg u_s3meg(
            .clk(clk),
            .rst_n(rst_n),
            .rd_en(rd_en),
            .g1_max(s2_max[2*i]),
            .count1_max(s2_count[2*i]),
            .count2_max(s2_count[2*i+1]),
            .g2_max(s2_max[2*i+1]),         
            .max1(s3_max[i]),
            .count_max(s3_count[i])
        );
    end
endgenerate

// stage 4,
wire[DW-1:0] s4_max[31:0];
wire[9:0] s4_count[31:0];

generate
    for(i=0;i<32;i=i+1)
    begin:loop_megs4
        meg u_s4meg(
            .clk(clk),
            .rst_n(rst_n),
            .rd_en(rd_en),
            .g1_max(s3_max[2*i]),
             .count1_max(s3_count[2*i]),
             .count2_max(s3_count[2*i+1]),
            .g2_max(s3_max[2*i+1]),          
            .max1(s4_max[i]),
            .count_max(s4_count[i])
        );
    end
endgenerate

//stage 5

wire[DW-1:0] s5_max[15:0];
wire[9:0] s5_count[15:0];

generate
    for(i=0;i<16;i=i+1)
    begin:loop_megs5
        meg u_s5meg(
            .clk(clk),
            .rst_n(rst_n),
            .rd_en(rd_en),
            .g1_max(s4_max[2*i]),
             .count1_max(s4_count[2*i]),
             .count2_max(s4_count[2*i+1]),
            .g2_max(s4_max[2*i+1]),        
            .max1(s5_max[i]),
            .count_max(s5_count[i])
        );
    end
endgenerate

//stage 6
wire[DW-1:0] s6_max[7:0];
wire[9:0] s6_count[7:0];

generate
    for(i=0;i<8;i=i+1)
    begin:loop_megs6
        meg u_s6meg(
            .clk(clk),
            .rst_n(rst_n),
             .rd_en(rd_en),
            .g1_max(s5_max[2*i]),
             .count1_max(s5_count[2*i]),
             .count2_max(s5_count[2*i+1]),
            .g2_max(s5_max[2*i+1]),        
            .max1(s6_max[i]),
            .count_max(s6_count[i])
        );
    end
endgenerate

//stage 7
wire[DW-1:0] s7_max[3:0];
wire[9:0] s7_count[3:0];
generate
    for(i=0;i<4;i=i+1)
    begin:loop_megs7
        meg u_s7meg(
            .clk(clk),
            .rst_n(rst_n),
            .rd_en(rd_en),
            .g1_max(s6_max[2*i]),
             .count1_max(s6_count[2*i]),
             .count2_max(s6_count[2*i+1]),
            .g2_max(s6_max[2*i+1]),        
            .max1(s7_max[i]),
            .count_max(s7_count[i])
        );
    end
endgenerate

//stage 8
wire[DW-1:0] s8_max[1:0];
wire[9:0] s8_count[1:0];

generate
    for(i=0;i<2;i=i+1)
    begin:loop_megs8
        meg u_s8meg(
            .clk(clk),
            .rst_n(rst_n),
            .rd_en(rd_en),
            .g1_max(s7_max[2*i]),
             .count1_max(s7_count[2*i]),
             .count2_max(s7_count[2*i+1]),
            .g2_max(s7_max[2*i+1]),          
            .max1(s8_max[i]),
            .count_max(s8_count[i])
        );
    end
endgenerate



// stage 9,

meg u_s5meg(
    .clk(clk),
    .rst_n(rst_n),
    .rd_en(rd_en),
    .g1_max(s8_max[0]),
    .count1_max(s8_count[0]),
    .count2_max(s8_count[1]),
    .g2_max(s8_max[1]),
    .count_max(count),         
    .max1(max1)
);
endmodule

module meg#(
parameter DW = 8
)
(
input clk,
input rst_n,
input rd_en,
input [DW-1 :0] g1_max,
input [9 :0] count1_max,
input [DW-1 :0] g2_max,
input [9:0] count2_max,
output reg [DW-1:0] max1,
output reg [9:0] count_max
);
always@(posedge clk or negedge rst_n) begin
    if(rst_n==1'b0)begin
        max1 <= 0 ;
        count_max <= 0;
    end
    else if(g1_max>g2_max &&rd_en==1) begin
        max1 <= g1_max;
        count_max <=count1_max;
    end
    else if (g1_max<=g2_max &&rd_en==1)begin
        max1 <= g2_max;
        count_max <=count2_max;
    end
    else begin 
        max1 <= max1 ;
        count_max <= count_max ;
    end
end

endmodule
