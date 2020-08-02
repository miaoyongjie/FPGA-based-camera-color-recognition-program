`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/18 19:50:13
// Design Name: 
// Module Name: Key_Test_Color
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Color_Diver(
    input [23:0]rgb_data,
    input i_clk,
    input i_rst,
    input i_key,

    output [23:0]o_rgb_data_0,
    output [23:0]o_rgb_data_1
    );
   
    //����
    reg [1:0]key_i=0;
    reg [23:0]rgb_hc=0;
    reg [26:0]count=0;
        reg [23:0]count2=0;
    //���
    reg [23:0]rgb_data_0=0;
    reg [23:0]rgb_data_1=0;
    //�������

    assign o_rgb_data_0=rgb_data_0;
    assign o_rgb_data_1=rgb_data_1;
 
       always@(posedge i_clk)begin//��ʱ��ֵ����rgb_data�����ݴ����rgb_data_0���ٶ����㡣Ȼ�������ɫ��Ԥ����ɫ�Ľӽ��̶ȱ��Ԥ����ɫ
           if(count==0)begin

                     rgb_hc<=rgb_data;
  
                        
                        count<=count+1;
           end
           else if(count>27'd10111110101111000010000000) 
           begin
           count<=0;
           end
           else begin
           count<=count+1;
           end
       end   

    
    //��ɫ���
    always@(posedge i_clk or negedge i_rst)begin
        if(!i_rst)begin
            rgb_data_0<=24'd0;
            rgb_data_1<=24'd0;
        end 
        else if(count2==0) begin
   
                
                rgb_data_0<=rgb_hc;rgb_data_1<=rgb_hc;//��һ�����������ͷĳ�����ص���ɫ���ڶ����ǲ���RGB�Ƿ�����
             

  
        end
      //  else if(count2>0)begin
        
      //  end
    end
    

endmodule
