module top_test(
    clk    ,
    rst_n  ,
    //�����ź�,����dout
    data_gtx,
    ldpc_out,
    charisk_out
    );

    //��������
    parameter      DATA_W =         16;

    //�����źŶ���
    input               clk    ;
    input               rst_n  ;
    input [DATA_W-1:0]  data_gtx;
    //����źŶ���
    output[DATA_W-1:0]  ldpc_out   ;
    output [1:0]       charisk_out;
    //����ź�reg����
   
    //�м��źŶ���
    wire [DATA_W-1:0] fifo_data;
    wire rd_en;
    wire rd_clk;
    
    //�ײ�ģ�����
   //fifoģ�����
    fifo_control  u1(
    .clk(clk),
    .rst_n(rst_n),
    .data_in(data_gtx),
    .data_out(fifo_data),
    .rd_en(rd_en),
    .rd_clk(rd_clk)
    );
  

    //ldpcģ�����
    ldpc_control    u2(
    .clk(rd_clk),
    .rst_n(rst_n),
    .data_in(fifo_data),
    .r_en(rd_en),
    .data_out(ldpc_out),
    .charisk(charisk_out)
    );
    endmodule

