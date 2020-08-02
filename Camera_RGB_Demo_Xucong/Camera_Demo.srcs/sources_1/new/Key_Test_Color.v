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


module Key_Test_Color(
    input rgb_data,
    input i_clk,
    input i_rst,
    input i_key,

    output [23:0]o_rgb_data_0,
    output [23:0]o_rgb_data_1
    );
    //颜色参数
  //  reg COLOR_RED=[23:0]rgb_data;
  //  reg COLOR_RED_DEEP=[23:0]rgb_data;

    
    //颜色计数
   // reg [2:0]color_cnt=0;
    
    //缓存
    reg [1:0]key_i=0;
    
    //输出
    reg [5:0]period_100ms_o=6'd10;
    reg [23:0]rgb_data_0=0;
    reg [23:0]rgb_data_1=0;
    
    //输出连线

    assign o_rgb_data_0=rgb_data_0;
    assign o_rgb_data_1=rgb_data_1;
    

    
    //颜色输出
    always@(posedge i_clk or negedge i_rst)begin
        if(!i_rst)begin
            rgb_data_0<=24'd0;
            rgb_data_1<=24'd0;
        end else begin
   
                begin 
                rgb_data_0<=rgb_data;rgb_data_1<=rgb_data;
                end

  
        end
    end
    
    //颜色计数
   // always@(posedge i_clk or negedge i_rst)begin
   //     if(!i_rst)begin
  //          color_cnt<=3'd0;
 //       end else if(key_i==2'b10)begin
 //           color_cnt<=color_cnt+1;
 //       end else begin
//            color_cnt<=color_cnt;
//        end
//    end
    
    //输入缓存
 //   always@(posedge i_clk or negedge i_rst)begin
 //       if(!i_rst)begin
 //           key_i<=2'd0;
//        end else begin
//            key_i<={key_i[0],i_key};
//        end
//    end
endmodule
