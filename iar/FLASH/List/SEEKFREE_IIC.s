///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       06/Jul/2017  20:47:56
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\SEEKFREE_IIC.c
//    Command line =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\SEEKFREE_IIC.c
//        -D LPLD_K60 -D USE_K60F12 -lCN
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\FLASH\List\
//        -lB
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\FLASH\List\
//        -o
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\FLASH\Obj\
//        --no_cse --no_unroll --no_inline --no_code_motion --no_tbaa
//        --no_clustering --no_scheduling --debug --endian=little
//        --cpu=Cortex-M4F -e --fpu=None --dlib_config
//        D:\IAR\arm\INC\c\DLib_Config_Normal.h -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\app\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\CPU\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\common\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\LPLD\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\LPLD\HW\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\LPLD\DEV\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\LPLD\FUNC\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\uCOS-II\Ports\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\uCOS-II\Source\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\FatFs\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\FatFs\option\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\USB\common\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\USB\driver\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\USB\descriptor\
//        -I
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\..\..\..\lib\USB\class\
//        -Ol -I D:\IAR\arm\CMSIS\Include\ -D ARM_MATH_CM4
//    List file    =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\FLASH\List\SEEKFREE_IIC.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN LPLD_GPIO_Init
        EXTERN LPLD_GPIO_Input_8b
        EXTERN __aeabi_memcpy4

        PUBLIC I2C_SendACK
        PUBLIC IIC_ad_main
        PUBLIC IIC_ad_sub
        PUBLIC IIC_buf
        PUBLIC IIC_init
        PUBLIC IIC_num
        PUBLIC IIC_start
        PUBLIC IIC_stop
        PUBLIC SCL_gpio_reset
        PUBLIC SCL_gpio_set
        PUBLIC SDA_gpio_SetIn
        PUBLIC SDA_gpio_SetOut
        PUBLIC SDA_gpio_get
        PUBLIC SDA_gpio_reset
        PUBLIC SDA_gpio_set
        PUBLIC bus_clk_mhz
        PUBLIC core_clk_mhz
        PUBLIC get_clk
        PUBLIC mcgout_clk_mhz
        PUBLIC read_ch
        PUBLIC send_ch
        PUBLIC simiic_delay
        PUBLIC simiic_read_reg
        PUBLIC simiic_write_reg

// C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\SEEKFREE_IIC.c
//    1 /*********************************************************************************************************************
//    2  * COPYRIGHT NOTICE
//    3  * Copyright (c) 2016,閫愰绉戞妧
//    4  * All rights reserved.
//    5  * 鎶�鏈璁篞Q缇わ細179029047
//    6  *
//    7  * 浠ヤ笅鎵�鏈夊唴瀹圭増鏉冨潎灞為�愰绉戞妧鎵�鏈夛紝鏈粡鍏佽涓嶅緱鐢ㄤ簬鍟嗕笟鐢ㄩ�旓紝
//    8  * 娆㈣繋鍚勪綅浣跨敤骞朵紶鎾湰绋嬪簭锛屼慨鏀瑰唴瀹规椂蹇呴』淇濈暀閫愰绉戞妧鐨勭増鏉冨０鏄庛��
//    9  *
//   10  * @file       		SEEKFREE_IIC.c
//   11  * @brief      		妯℃嫙IIC鍑芥暟搴�
//   12  * @company	   		鎴愰兘閫愰绉戞妧鏈夐檺鍏徃
//   13  * @author     		Go For It(1325536866)
//   14  * @version    		v1.0
//   15  * @Software 		IAR 7.2 or MDK 5.17
//   16  * @Target core		MK60DN512VLL10
//   17  * @Taobao   		https://seekfree.taobao.com/
//   18  * @date       		2016-02-25
//   19  * @note	
//   20 					妯℃嫙IIC鎺ョ嚎瀹氫箟
//   21 					------------------------------------ 
//   22 						SDA                 C17
//   23 						SCL                 C16
//   24 					------------------------------------ 
//   25  ********************************************************************************************************************/
//   26 
//   27 
//   28 #include "Includes.h"
//   29 
//   30 
//   31 #define SDA             SDA_gpio_get()
//   32 #define SDA0()          SDA_gpio_reset()	                //IO鍙ｈ緭鍑轰綆鐢靛钩
//   33 #define SDA1()          SDA_gpio_set()            		//IO鍙ｈ緭鍑洪珮鐢靛钩  
//   34 #define SCL0()          SCL_gpio_reset()         		//IO鍙ｈ緭鍑轰綆鐢靛钩
//   35 #define SCL1()          SCL_gpio_set()	                 	//IO鍙ｈ緭鍑洪珮鐢靛钩
//   36 #define DIR_OUT()       SDA_gpio_SetOut()                       //杈撳嚭鏂瑰悜
//   37 #define DIR_IN()        SDA_gpio_SetIn()                        //杈撳叆鏂瑰悜
//   38    
//   39                                           
//   40 //鍐呴儴鏁版嵁瀹氫箟

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   41 uint8 IIC_ad_main; //鍣ㄤ欢浠庡湴鍧�	    
IIC_ad_main:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   42 uint8 IIC_ad_sub;  //鍣ㄤ欢瀛愬湴鍧�	   
IIC_ad_sub:
        DS8 1

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   43 uint8 *IIC_buf;    //鍙戦�亅鎺ユ敹鏁版嵁缂撳啿鍖�	    
IIC_buf:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   44 uint8 IIC_num;     //鍙戦�亅鎺ユ敹鏁版嵁涓暟	     
IIC_num:
        DS8 1
//   45 
//   46 #define ack 1      //涓诲簲绛�
//   47 #define no_ack 0   //浠庡簲绛�	 
//   48 
//   49 
//   50 
//   51 //-------------------------------------------------------------------------------------------------------------------
//   52 //  @brief      妯℃嫙IIC寤舵椂
//   53 //  @return     void						
//   54 //  @since      v1.0
//   55 //  Sample usage:				濡傛灉IIC閫氳澶辫触鍙互灏濊瘯澧炲姞j鐨勫��
//   56 //-------------------------------------------------------------------------------------------------------------------

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   57 void simiic_delay(void)
//   58 {
//   59 	//64涓�100K鐨勯�熺巼(bus棰戠巼涓�100M)
//   60 	//鐗瑰埆鎻愮ずOV7725鐨勯�氫俊閫熺巼涓嶈兘澶珮锛屾渶濂�50K宸﹀彸锛宩璁剧疆涓�120閫氫俊閫熺巼涓�60K锛�60K鐨勬椂鍊欏彲浠ユ甯搁�氫俊
//   61 	//鍏朵粬IIC鍣ㄤ欢涓�鑸彲浠�400K鐨勯�氫俊閫熺巼
//   62 	uint16 j=30;   
simiic_delay:
        MOVS     R0,#+30
//   63 	while(j--);
??simiic_delay_0:
        MOVS     R1,R0
        SUBS     R0,R1,#+1
        UXTH     R1,R1            ;; ZeroExt  R1,R1,#+16,#+16
        CMP      R1,#+0
        BNE.N    ??simiic_delay_0
//   64 }
        BX       LR               ;; return
//   65 
//   66 
//   67 //鍐呴儴浣跨敤锛岀敤鎴锋棤闇�璋冪敤

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   68 void IIC_start(void)
//   69 {
IIC_start:
        PUSH     {R7,LR}
//   70 	SDA1();
        BL       SDA_gpio_set
//   71 	SCL1();
        BL       SCL_gpio_set
//   72 	simiic_delay();
        BL       simiic_delay
//   73 	SDA0();
        BL       SDA_gpio_reset
//   74 	simiic_delay();
        BL       simiic_delay
//   75 	SCL0();
        BL       SCL_gpio_reset
//   76 }
        POP      {R0,PC}          ;; return
//   77 
//   78 //鍐呴儴浣跨敤锛岀敤鎴锋棤闇�璋冪敤

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   79 void IIC_stop(void)
//   80 {
IIC_stop:
        PUSH     {R7,LR}
//   81 	SDA0();
        BL       SDA_gpio_reset
//   82 	SCL0();
        BL       SCL_gpio_reset
//   83 	simiic_delay();
        BL       simiic_delay
//   84 	SCL1();
        BL       SCL_gpio_set
//   85 	simiic_delay();
        BL       simiic_delay
//   86 	SDA1();
        BL       SDA_gpio_set
//   87 	simiic_delay();
        BL       simiic_delay
//   88 }
        POP      {R0,PC}          ;; return
//   89 
//   90 //涓诲簲绛�(鍖呭惈ack:SDA=0鍜宯o_ack:SDA=0)
//   91 //鍐呴儴浣跨敤锛岀敤鎴锋棤闇�璋冪敤

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   92 void I2C_SendACK(unsigned char ack_dat)
//   93 {
I2C_SendACK:
        PUSH     {R4,LR}
        MOVS     R4,R0
//   94     SCL0();
        BL       SCL_gpio_reset
//   95 	simiic_delay();
        BL       simiic_delay
//   96 	if(ack_dat) SDA0();
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+0
        BEQ.N    ??I2C_SendACK_0
        BL       SDA_gpio_reset
        B.N      ??I2C_SendACK_1
//   97     else    	SDA1();
??I2C_SendACK_0:
        BL       SDA_gpio_set
//   98 
//   99     SCL1();
??I2C_SendACK_1:
        BL       SCL_gpio_set
//  100     simiic_delay();
        BL       simiic_delay
//  101     SCL0();
        BL       SCL_gpio_reset
//  102     simiic_delay();
        BL       simiic_delay
//  103 }
        POP      {R4,PC}          ;; return
//  104 
//  105 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  106 static int SCCB_WaitAck(void)
//  107 {
SCCB_WaitAck:
        PUSH     {R7,LR}
//  108     SCL0();
        BL       SCL_gpio_reset
//  109 	DIR_IN();
        BL       SDA_gpio_SetIn
//  110 	simiic_delay();
        BL       simiic_delay
//  111 	
//  112 	SCL1();
        BL       SCL_gpio_set
//  113     simiic_delay();
        BL       simiic_delay
//  114 	
//  115     if(SDA)           //搴旂瓟涓洪珮鐢靛钩锛屽紓甯革紝閫氫俊澶辫触
        BL       SDA_gpio_get
        CMP      R0,#+0
        BEQ.N    ??SCCB_WaitAck_0
//  116     {
//  117         DIR_OUT();
        BL       SDA_gpio_SetOut
//  118         SCL0();
        BL       SCL_gpio_reset
//  119         return 0;
        MOVS     R0,#+0
        B.N      ??SCCB_WaitAck_1
//  120     }
//  121     DIR_OUT();
??SCCB_WaitAck_0:
        BL       SDA_gpio_SetOut
//  122     SCL0();
        BL       SCL_gpio_reset
//  123 	simiic_delay();
        BL       simiic_delay
//  124     return 1;
        MOVS     R0,#+1
??SCCB_WaitAck_1:
        POP      {R1,PC}          ;; return
//  125 }
//  126 
//  127 //瀛楄妭鍙戦�佺▼搴�
//  128 //鍙戦�乧(鍙互鏄暟鎹篃鍙槸鍦板潃)锛岄�佸畬鍚庢帴鏀朵粠搴旂瓟
//  129 //涓嶈�冭檻浠庡簲绛斾綅
//  130 //鍐呴儴浣跨敤锛岀敤鎴锋棤闇�璋冪敤

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  131 void send_ch(uint8 c)
//  132 {
send_ch:
        PUSH     {R3-R5,LR}
        MOVS     R4,R0
//  133 	uint8 i = 8;
        MOVS     R5,#+8
        B.N      ??send_ch_0
//  134     while(i--)
//  135     {
//  136         if(c & 0x80)	SDA1();//SDA 杈撳嚭鏁版嵁
//  137         else			SDA0();
??send_ch_1:
        BL       SDA_gpio_reset
//  138         c <<= 1;
??send_ch_2:
        LSLS     R4,R4,#+1
//  139         simiic_delay();
        BL       simiic_delay
//  140         SCL1();                //SCL 鎷夐珮锛岄噰闆嗕俊鍙�
        BL       SCL_gpio_set
//  141         simiic_delay();
        BL       simiic_delay
//  142         SCL0();                //SCL 鏃堕挓绾挎媺浣�
        BL       SCL_gpio_reset
??send_ch_0:
        MOVS     R0,R5
        SUBS     R5,R0,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        CMP      R0,#+0
        BEQ.N    ??send_ch_3
        LSLS     R0,R4,#+24
        BPL.N    ??send_ch_1
        BL       SDA_gpio_set
        B.N      ??send_ch_2
//  143     }
//  144 	SCCB_WaitAck();
??send_ch_3:
        BL       SCCB_WaitAck
//  145 }
        POP      {R0,R4,R5,PC}    ;; return
//  146 
//  147 //瀛楄妭鎺ユ敹绋嬪簭
//  148 //鎺ユ敹鍣ㄤ欢浼犳潵鐨勬暟鎹紝姝ょ▼搴忓簲閰嶅悎|涓诲簲绛斿嚱鏁皘IIC_ack_main()浣跨敤
//  149 //鍐呴儴浣跨敤锛岀敤鎴锋棤闇�璋冪敤

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  150 uint8 read_ch(void)
//  151 {
read_ch:
        PUSH     {R3-R5,LR}
//  152     uint8 i;
//  153     uint8 c;
//  154     c=0;
        MOVS     R5,#+0
//  155     SCL0();
        BL       SCL_gpio_reset
//  156     simiic_delay();
        BL       simiic_delay
//  157     SDA1();             //缃暟鎹嚎涓鸿緭鍏ユ柟寮�
        BL       SDA_gpio_set
//  158     DIR_IN();
        BL       SDA_gpio_SetIn
//  159     for(i=0;i<8;i++)
        MOVS     R4,#+0
        B.N      ??read_ch_0
//  160     {
//  161         simiic_delay();
??read_ch_1:
        BL       simiic_delay
//  162         SCL0();         //缃椂閽熺嚎涓轰綆锛屽噯澶囨帴鏀舵暟鎹綅
        BL       SCL_gpio_reset
//  163         simiic_delay();
        BL       simiic_delay
//  164         SCL1();         //缃椂閽熺嚎涓洪珮锛屼娇鏁版嵁绾夸笂鏁版嵁鏈夋晥
        BL       SCL_gpio_set
//  165         simiic_delay();
        BL       simiic_delay
//  166         c<<=1;
        LSLS     R5,R5,#+1
//  167         if(SDA) c+=1;   //璇绘暟鎹綅锛屽皢鎺ユ敹鐨勬暟鎹瓨c
        BL       SDA_gpio_get
        CMP      R0,#+0
        BEQ.N    ??read_ch_2
        ADDS     R5,R5,#+1
//  168     }
??read_ch_2:
        ADDS     R4,R4,#+1
??read_ch_0:
        UXTB     R4,R4            ;; ZeroExt  R4,R4,#+24,#+24
        CMP      R4,#+8
        BLT.N    ??read_ch_1
//  169     DIR_OUT();
        BL       SDA_gpio_SetOut
//  170 	SCL0();
        BL       SCL_gpio_reset
//  171 	simiic_delay();
        BL       simiic_delay
//  172 	I2C_SendACK(no_ack);
        MOVS     R0,#+0
        BL       I2C_SendACK
//  173 	
//  174     return c;
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R1,R4,R5,PC}    ;; return
//  175 }
//  176 
//  177 //-------------------------------------------------------------------------------------------------------------------
//  178 //  @brief      妯℃嫙IIC鍐欐暟鎹埌璁惧瀵勫瓨鍣ㄥ嚱鏁�
//  179 //  @param      dev_add			璁惧鍦板潃(浣庝竷浣嶅湴鍧�)
//  180 //  @param      reg				瀵勫瓨鍣ㄥ湴鍧�
//  181 //  @param      dat				鍐欏叆鐨勬暟鎹�
//  182 //  @return     void						
//  183 //  @since      v1.0
//  184 //  Sample usage:				
//  185 //-------------------------------------------------------------------------------------------------------------------

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  186 void simiic_write_reg(uint8 dev_add, uint8 reg, uint8 dat)
//  187 {
simiic_write_reg:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  188 	IIC_start();
        BL       IIC_start
//  189     send_ch( (dev_add<<1) | 0x00);   //鍙戦�佸櫒浠跺湴鍧�鍔犲啓浣�
        LSLS     R0,R4,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       send_ch
//  190 	send_ch( reg );   				 //鍙戦�佷粠鏈哄瘎瀛樺櫒鍦板潃
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       send_ch
//  191 	send_ch( dat );   				 //鍙戦�侀渶瑕佸啓鍏ョ殑鏁版嵁
        MOVS     R0,R6
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       send_ch
//  192 	IIC_stop();
        BL       IIC_stop
//  193 }
        POP      {R4-R6,PC}       ;; return
//  194 
//  195 
//  196 //-------------------------------------------------------------------------------------------------------------------
//  197 //  @brief      妯℃嫙IIC浠庤澶囧瘎瀛樺櫒璇诲彇鏁版嵁
//  198 //  @param      dev_add			璁惧鍦板潃(浣庝竷浣嶅湴鍧�)
//  199 //  @param      reg				瀵勫瓨鍣ㄥ湴鍧�
//  200 //  @param      type			閫夋嫨閫氫俊鏂瑰紡鏄疘IC  杩樻槸 SCCB
//  201 //  @return     uint8			杩斿洖瀵勫瓨鍣ㄧ殑鏁版嵁			
//  202 //  @since      v1.0
//  203 //  Sample usage:				
//  204 //-------------------------------------------------------------------------------------------------------------------

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  205 uint8 simiic_read_reg(uint8 dev_add, uint8 reg, IIC_type type)
//  206 {
simiic_read_reg:
        PUSH     {R4-R6,LR}
        MOVS     R4,R0
        MOVS     R5,R1
        MOVS     R6,R2
//  207 	uint8 dat;
//  208 	IIC_start();
        BL       IIC_start
//  209     send_ch( (dev_add<<1) | 0x00);  //鍙戦�佸櫒浠跺湴鍧�鍔犲啓浣�
        LSLS     R0,R4,#+1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       send_ch
//  210 	send_ch( reg );   				//鍙戦�佷粠鏈哄瘎瀛樺櫒鍦板潃
        MOVS     R0,R5
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       send_ch
//  211 	if(type == SCCB)IIC_stop();
        UXTB     R6,R6            ;; ZeroExt  R6,R6,#+24,#+24
        CMP      R6,#+1
        BNE.N    ??simiic_read_reg_0
        BL       IIC_stop
//  212 	
//  213 	IIC_start();
??simiic_read_reg_0:
        BL       IIC_start
//  214 	send_ch( (dev_add<<1) | 0x01);  //鍙戦�佸櫒浠跺湴鍧�鍔犺浣�
        LSLS     R0,R4,#+1
        ORRS     R0,R0,#0x1
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        BL       send_ch
//  215 	dat = read_ch();   				//鍙戦�侀渶瑕佸啓鍏ョ殑鏁版嵁
        BL       read_ch
        MOVS     R4,R0
//  216 	IIC_stop();
        BL       IIC_stop
//  217 	
//  218 	return dat;
        MOVS     R0,R4
        UXTB     R0,R0            ;; ZeroExt  R0,R0,#+24,#+24
        POP      {R4-R6,PC}       ;; return
//  219 }
//  220 
//  221 //-------------------------------------------------------------------------------------------------------------------
//  222 //  @brief      妯℃嫙IIC绔彛鍒濆鍖�
//  223 //  @param      NULL
//  224 //  @return     void	
//  225 //  @since      v1.0
//  226 //  Sample usage:				
//  227 //-------------------------------------------------------------------------------------------------------------------

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  228 void IIC_init(void)
//  229 {
IIC_init:
        PUSH     {R7,LR}
//  230         SDA1();
        BL       SDA_gpio_set
//  231         SCL1();
        BL       SCL_gpio_set
//  232 }
        POP      {R0,PC}          ;; return
//  233 
//  234 
//  235 //-------------------------------------------------------------------------------------------------------------------
//  236 //  @brief      寮�鏈鸿鍙栧崟鐗囨満棰戠巼
//  237 //  @param      NULL
//  238 //  @return     void	
//  239 //  @since      v1.0
//  240 //  Sample usage:				
//  241 //-------------------------------------------------------------------------------------------------------------------
//  242 #define EX_REF_CLK  50 //(瀹氫箟澶栭儴鍙傝�冩椂閽熶负50MHZ)

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  243 uint32 mcgout_clk_mhz = 100;
mcgout_clk_mhz:
        DATA
        DC32 100

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  244 uint32 core_clk_mhz = 100;
core_clk_mhz:
        DATA
        DC32 100

        SECTION `.data`:DATA:REORDER:NOROOT(2)
//  245 uint32 bus_clk_mhz = 100;
bus_clk_mhz:
        DATA
        DC32 100
//  246 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  247 void get_clk(void)
//  248 {  
//  249     mcgout_clk_mhz = 100;
get_clk:
        MOVS     R0,#+100
        LDR.N    R1,??DataTable7
        STR      R0,[R1, #+0]
//  250     core_clk_mhz = 100;
        MOVS     R0,#+100
        LDR.N    R1,??DataTable7_1
        STR      R0,[R1, #+0]
//  251     bus_clk_mhz = 100;
        MOVS     R0,#+100
        LDR.N    R1,??DataTable7_2
        STR      R0,[R1, #+0]
//  252 }
        BX       LR               ;; return
//  253 
//  254 
//  255 //-------------------------------------------------------------------------------------------------------------------
//  256 //  @brief      IO鍙ｇ數骞崇姸鎬佽鍙�
//  257 //  @param      NULL
//  258 //  @return     void	
//  259 //  @since      v1.0
//  260 //  Sample usage:				
//  261 //-------------------------------------------------------------------------------------------------------------------

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  262 uint8  SDA_gpio_get(void)
//  263 {
SDA_gpio_get:
        PUSH     {LR}
        SUB      SP,SP,#+28
//  264     GPIO_InitTypeDef  SDA_init_struct;
//  265     SDA_init_struct.GPIO_PTx = SDA_PTX;
        LDR.N    R0,??DataTable7_3  ;; 0x400ff000
        STR      R0,[SP, #+4]
//  266     SDA_init_struct.GPIO_Pins = SDA_PinX;
        MOVS     R0,#+128
        STR      R0,[SP, #+8]
//  267     SDA_init_struct.GPIO_PinControl = INPUT_PULL_UP;
        MOVS     R0,#+3
        STR      R0,[SP, #+12]
//  268     SDA_init_struct.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//  269     SDA_init_struct.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  270     LPLD_GPIO_Init(SDA_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  271     
//  272     return LPLD_GPIO_Input_8b(SDA_PTX, SDA_PinNumX);
        MOVS     R1,#+7
        LDR.N    R0,??DataTable7_3  ;; 0x400ff000
        BL       LPLD_GPIO_Input_8b
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//  273 }
//  274 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  275 void SDA_gpio_set(void)
//  276 {
SDA_gpio_set:
        PUSH     {LR}
        SUB      SP,SP,#+28
//  277     GPIO_InitTypeDef  SDA_init_struct;
//  278     SDA_init_struct.GPIO_PTx = SDA_PTX;
        LDR.N    R0,??DataTable7_3  ;; 0x400ff000
        STR      R0,[SP, #+4]
//  279     SDA_init_struct.GPIO_Pins = SDA_PinX;
        MOVS     R0,#+128
        STR      R0,[SP, #+8]
//  280     SDA_init_struct.GPIO_PinControl = OUTPUT_DSH;
        MOVS     R0,#+64
        STR      R0,[SP, #+12]
//  281     SDA_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//  282     SDA_init_struct.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//  283     SDA_init_struct.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  284     LPLD_GPIO_Init(SDA_init_struct);   
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  285 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//  286 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  287 void SDA_gpio_reset(void)
//  288 {
SDA_gpio_reset:
        PUSH     {LR}
        SUB      SP,SP,#+28
//  289     GPIO_InitTypeDef  SDA_init_struct;
//  290     SDA_init_struct.GPIO_PTx = SDA_PTX;
        LDR.N    R0,??DataTable7_3  ;; 0x400ff000
        STR      R0,[SP, #+4]
//  291     SDA_init_struct.GPIO_Pins = SDA_PinX;
        MOVS     R0,#+128
        STR      R0,[SP, #+8]
//  292     SDA_init_struct.GPIO_PinControl = OUTPUT_DSH;
        MOVS     R0,#+64
        STR      R0,[SP, #+12]
//  293     SDA_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//  294     SDA_init_struct.GPIO_Output = OUTPUT_L;
        MOVS     R0,#+0
        STRB     R0,[SP, #+17]
//  295     SDA_init_struct.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  296     LPLD_GPIO_Init(SDA_init_struct);   
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  297 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//  298 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  299 void SCL_gpio_set(void)
//  300 {
SCL_gpio_set:
        PUSH     {LR}
        SUB      SP,SP,#+28
//  301     GPIO_InitTypeDef  SCL_init_struct;
//  302     SCL_init_struct.GPIO_PTx = SCL_PTX;
        LDR.N    R0,??DataTable7_3  ;; 0x400ff000
        STR      R0,[SP, #+4]
//  303     SCL_init_struct.GPIO_Pins = SCL_PinX;
        MOVS     R0,#+64
        STR      R0,[SP, #+8]
//  304     SCL_init_struct.GPIO_PinControl = OUTPUT_DSH;
        MOVS     R0,#+64
        STR      R0,[SP, #+12]
//  305     SCL_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//  306     SCL_init_struct.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//  307     SCL_init_struct.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  308     LPLD_GPIO_Init(SCL_init_struct);   
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  309 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//  310 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  311 void SCL_gpio_reset(void)
//  312 {
SCL_gpio_reset:
        PUSH     {LR}
        SUB      SP,SP,#+28
//  313     GPIO_InitTypeDef  SCL_init_struct;
//  314     SCL_init_struct.GPIO_PTx = SCL_PTX;
        LDR.N    R0,??DataTable7_3  ;; 0x400ff000
        STR      R0,[SP, #+4]
//  315     SCL_init_struct.GPIO_Pins = SCL_PinX;
        MOVS     R0,#+64
        STR      R0,[SP, #+8]
//  316     SCL_init_struct.GPIO_PinControl = OUTPUT_DSH;
        MOVS     R0,#+64
        STR      R0,[SP, #+12]
//  317     SCL_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//  318     SCL_init_struct.GPIO_Output = OUTPUT_L;
        MOVS     R0,#+0
        STRB     R0,[SP, #+17]
//  319     SCL_init_struct.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  320     LPLD_GPIO_Init(SCL_init_struct);   
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  321 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//  322 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  323 void  SDA_gpio_SetOut(void)
//  324 {
SDA_gpio_SetOut:
        PUSH     {LR}
        SUB      SP,SP,#+28
//  325     GPIO_InitTypeDef  SDA_init_struct;
//  326     SDA_init_struct.GPIO_PTx = SDA_PTX;
        LDR.N    R0,??DataTable7_3  ;; 0x400ff000
        STR      R0,[SP, #+4]
//  327     SDA_init_struct.GPIO_Pins = SDA_PinX;
        MOVS     R0,#+128
        STR      R0,[SP, #+8]
//  328     SDA_init_struct.GPIO_PinControl = OUTPUT_DSH;
        MOVS     R0,#+64
        STR      R0,[SP, #+12]
//  329     SDA_init_struct.GPIO_Dir = DIR_OUTPUT;
        MOVS     R0,#+1
        STRB     R0,[SP, #+16]
//  330     SDA_init_struct.GPIO_Output = OUTPUT_H;
        MOVS     R0,#+1
        STRB     R0,[SP, #+17]
//  331     SDA_init_struct.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  332     LPLD_GPIO_Init(SDA_init_struct);   
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  333 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return
//  334 
//  335 

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//  336 void  SDA_gpio_SetIn(void)
//  337 {
SDA_gpio_SetIn:
        PUSH     {LR}
        SUB      SP,SP,#+28
//  338     GPIO_InitTypeDef  SDA_init_struct;
//  339     SDA_init_struct.GPIO_PTx = SDA_PTX;
        LDR.N    R0,??DataTable7_3  ;; 0x400ff000
        STR      R0,[SP, #+4]
//  340     SDA_init_struct.GPIO_Pins = SDA_PinX;
        MOVS     R0,#+128
        STR      R0,[SP, #+8]
//  341     SDA_init_struct.GPIO_PinControl = INPUT_PULL_UP;
        MOVS     R0,#+3
        STR      R0,[SP, #+12]
//  342     SDA_init_struct.GPIO_Dir = DIR_INPUT;
        MOVS     R0,#+0
        STRB     R0,[SP, #+16]
//  343     SDA_init_struct.GPIO_Isr = NULL;
        MOVS     R0,#+0
        STR      R0,[SP, #+20]
//  344     LPLD_GPIO_Init(SDA_init_struct);
        ADD      R1,SP,#+4
        SUB      SP,SP,#+16
        MOV      R0,SP
        MOVS     R2,#+20
        BL       __aeabi_memcpy4
        POP      {R0-R3}
        BL       LPLD_GPIO_Init
//  345 }
        ADD      SP,SP,#+28
        POP      {PC}             ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7:
        DC32     mcgout_clk_mhz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_1:
        DC32     core_clk_mhz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_2:
        DC32     bus_clk_mhz

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable7_3:
        DC32     0x400ff000

        SECTION `.iar_vfe_header`:DATA:NOALLOC:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
        DC32 0

        SECTION __DLIB_PERTHREAD:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        SECTION __DLIB_PERTHREAD_init:DATA:REORDER:NOROOT(0)
        SECTION_TYPE SHT_PROGBITS, 0

        END
// 
//   7 bytes in section .bss
//  12 bytes in section .data
// 856 bytes in section .text
// 
// 856 bytes of CODE memory
//  19 bytes of DATA memory
//
//Errors: none
//Warnings: none
