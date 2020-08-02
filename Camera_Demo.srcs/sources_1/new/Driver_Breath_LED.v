`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/18 19:00:37
// Design Name: 
// Module Name: Driver_Breath_LED
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


module Driver_Breath_LED
#(parameter LED_Bit=6'd8)
(
    input i_clk,
    input i_rst,
    input [5:0]i_period_100ms,
    input [LED_Bit-1:0]i_data,
    output [LED_Bit-1:0]o_data
    );
    
    //呼吸灯参数
    localparam Default_Duty_Max=10'd500;
    localparam Default_Delta_T=10'd10;
    
    localparam Param_SHIFT0_0=3'd5;
    localparam Param_SHIFT0_1=3'd4;
    localparam Param_SHIFT0_2=3'd1;
    
    localparam Param_SHIFT1_0=4'd9;
    localparam Param_SHIFT1_1=4'd3;
    localparam Param_SHIFT1_2=4'd2;
    
    //时钟
    wire clk_0;
    wire clk_1;
    
    //计数
    reg [9:0]us_cnt=0;
    reg [9:0]ms_cnt=0;
    reg [9:0]s_cnt=0;
    
    //数据
    reg [15:0]factor_0=0;
    reg [30:0]factor_1=0;
    
    //标志
    reg flg_dir=0;
    
    //缓存
    reg [5:0]period_100ms_i=0;
    reg [LED_Bit-1:0]data_i=0;
    reg [1:0]clk_buff0=0;
    reg [1:0]clk_buff1=0;
    
    //输出
    reg [LED_Bit-1:0]data_o=0;
    
    //输出连线
    assign o_data=data_o;
    
    //数据输出
    always@(posedge i_clk or negedge i_rst)begin
        if(!i_rst)begin
            data_o<={LED_Bit{1'b0}};
        end else if(flg_dir==1'b0&us_cnt<ms_cnt)begin
            data_o<=data_i;
        end else if(flg_dir==1'b0)begin
            data_o<={LED_Bit{1'b0}};
        end else if(us_cnt<ms_cnt)begin
            data_o<={LED_Bit{1'b0}};
        end else begin
            data_o<=data_i;
        end
    end
    
    //时间计数us
    always@(posedge i_clk or negedge i_rst)begin
        if(!i_rst)begin
            us_cnt<=10'd0;
        end else if(clk_buff0==2'b01&us_cnt<Default_Duty_Max-1)begin
            us_cnt<=us_cnt+1;
        end else if(clk_buff0==2'b01)begin
            us_cnt<=10'd0;
        end else begin
            us_cnt<=us_cnt;
        end
    end
    
    //时间计数ms
    always@(posedge i_clk or negedge i_rst)begin
        if(!i_rst)begin
            ms_cnt<=10'd0;
        end else if(clk_buff1==2'b10&ms_cnt<Default_Duty_Max-1)begin
            ms_cnt<=ms_cnt+1;
        end else if(clk_buff1==2'b10)begin
            ms_cnt<=10'd0;
        end else begin
            ms_cnt<=ms_cnt;
        end
    end
    
    //换向
    always@(posedge i_clk or negedge i_rst)begin
        if(!i_rst)begin
            s_cnt<=10'd0;
            flg_dir<=1'b0;
        end else if(clk_buff1==2'b10&s_cnt==Default_Duty_Max-1)begin
            s_cnt<=10'd0;
            flg_dir<=~flg_dir;
        end else if(clk_buff1==2'b10)begin
            s_cnt<=s_cnt+1;
            flg_dir<=flg_dir;
        end else begin
            s_cnt<=s_cnt;
            flg_dir<=flg_dir;
        end
    end
    
    //时钟分频系数计算
    always@(posedge i_clk or negedge i_rst)begin
        if(!i_rst)begin
            factor_0<=16'd0;
            factor_1<=31'd0;
        end else begin
            factor_0<=(period_100ms_i<<Param_SHIFT0_0)+(period_100ms_i<<Param_SHIFT0_1)+(period_100ms_i<<Param_SHIFT0_2);
            factor_1<=(factor_0<<Param_SHIFT1_0)-((factor_0<<Param_SHIFT1_1)+(factor_0<<Param_SHIFT1_2));
        end
    end
    
    //PWM时钟
    clk_division clock_0(.i_clk(i_clk),.i_rst(i_rst),.i_clk_mode({14'd0,factor_0,1'b0}),.o_clk_out(clk_0));
    clk_division clock_1(.i_clk(i_clk),.i_rst(i_rst),.i_clk_mode({factor_1[29:0],1'b0}),.o_clk_out(clk_1));
    
    //分频时钟缓存
    always@(posedge i_clk or negedge i_rst)begin
        if(!i_rst)begin
            clk_buff0<=2'd0;
            clk_buff1<=2'd0;
        end else begin
            clk_buff0<={clk_buff0[0],clk_0};
            clk_buff1<={clk_buff1[0],clk_1};
        end
    end
    
    //输入缓存
    always@(posedge i_clk or negedge i_rst)begin
        if(!i_rst)begin
            period_100ms_i<=6'd0;
            data_i<={LED_Bit{1'b0}};
        end else begin
            period_100ms_i<=i_period_100ms;
            data_i<=i_data;
        end
    end
endmodule
