///////////////////////////////////////////////////////////////////////////////
//
// IAR ANSI C/C++ Compiler V7.20.2.7424/W32 for ARM       06/Jul/2017  20:47:56
// Copyright 1999-2014 IAR Systems AB.
//
//    Cpu mode     =  thumb
//    Endian       =  little
//    Source file  =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\SEEKFREE_L3G4200D.c
//    Command line =  
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\SEEKFREE_L3G4200D.c
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
//        C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\iar\FLASH\List\SEEKFREE_L3G4200D.s
//
///////////////////////////////////////////////////////////////////////////////

        #define SHT_PROGBITS 0x1

        EXTERN Count
        EXTERN simiic_read_reg
        EXTERN simiic_write_reg

        PUBLIC InitL3G4200D
        PUBLIC Temperature
        PUBLIC angle_pitch
        PUBLIC angle_roll
        PUBLIC angle_yaw
        PUBLIC get_l3g4200d
        PUBLIC gyro_x
        PUBLIC gyro_y
        PUBLIC gyro_z

// C:\Users\lenovo\Desktop\17智能车省赛\LPLD_OSKinetis_V3\project\chase_after（完整程序）\app\SEEKFREE_L3G4200D.c
//    1 /*********************************************************************************************************************
//    2  *-+ COPYRIGHT NOTICE
//    3  * Copyright (c) 2016,閫愰绉戞妧
//    4  * All rights reserved.
//    5  * 鎶�鏈璁篞Q缇わ細179029047
//    6  *
//    7  * 浠ヤ笅鎵�鏈夊唴瀹圭増鏉冨潎灞為�愰绉戞妧鎵�鏈夛紝鏈粡鍏佽涓嶅緱鐢ㄤ簬鍟嗕笟鐢ㄩ�旓紝
//    8  * 娆㈣繋鍚勪綅浣跨敤骞朵紶鎾湰绋嬪簭锛屼慨鏀瑰唴瀹规椂蹇呴』淇濈暀閫愰绉戞妧鐨勭増鏉冨０鏄庛��
//    9  *
//   10  * @file       		SEEKFREE_L3G4200D.c
//   11  * @brief      		L3G4200D鍑芥暟搴�
//   12  * @company	   		鎴愰兘閫愰绉戞妧鏈夐檺鍏徃
//   13  * @author     		Go For It(1325536866)
//   14  * @version    		v1.0
//   15  * @Software 		IAR 7.2 or MDK 5.17
//   16  * @Target core		MK60DN512VLL10
//   17  * @Taobao   		https://seekfree.taobao.com/
//   18  * @date       		2016-02-25
//   19  * @note	
//   20 					L3G4200D鎺ョ嚎瀹氫箟
//   21 					------------------------------------ 
//   22 						SDA                 C17
//   23 						SCL                 C16
//   24 					------------------------------------ 
//   25  ********************************************************************************************************************/
//   26                                                   
//   27 #include "Includes.h"
//   28 
//   29 

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
//   30 int16 gyro_x = 0, gyro_y = 0, gyro_z = 0;
gyro_x:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
gyro_y:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(1)
gyro_z:
        DS8 2

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
//   31 int angle_pitch, angle_yaw, angle_roll;
angle_pitch:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
angle_yaw:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(2)
angle_roll:
        DS8 4

        SECTION `.bss`:DATA:REORDER:NOROOT(0)
//   32 uint8 Temperature = 0;
Temperature:
        DS8 1
//   33 
//   34 extern int Count;
//   35 
//   36 
//   37 
//   38 //-------------------------------------------------------------------------------------------------------------------
//   39 //  @brief      鍒濆鍖朙3G4200D闄�铻轰华
//   40 //  @param      NULL
//   41 //  @return     void						
//   42 //  @since      v1.0
//   43 //  Sample usage:				璋冪敤璇ュ嚱鏁板墠锛岃鍏堣皟鐢ㄦā鎷烮IC鐨勫垵濮嬪寲
//   44 //-------------------------------------------------------------------------------------------------------------------

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   45 void InitL3G4200D(void)
//   46 {
InitL3G4200D:
        PUSH     {R7,LR}
//   47     simiic_write_reg(L3G4200_DEV_ADD, CTRL_REG1_4200, 0x8f);   //
        MOVS     R2,#+143
        MOVS     R1,#+32
        MOVS     R0,#+105
        BL       simiic_write_reg
//   48     simiic_write_reg(L3G4200_DEV_ADD, CTRL_REG2_4200, 0x00);   //00
        MOVS     R2,#+0
        MOVS     R1,#+33
        MOVS     R0,#+105
        BL       simiic_write_reg
//   49     simiic_write_reg(L3G4200_DEV_ADD, CTRL_REG3_4200, 0x08);   //
        MOVS     R2,#+8
        MOVS     R1,#+34
        MOVS     R0,#+105
        BL       simiic_write_reg
//   50     simiic_write_reg(L3G4200_DEV_ADD, CTRL_REG4_4200, 0x30);   //+-2000dps
        MOVS     R2,#+48
        MOVS     R1,#+35
        MOVS     R0,#+105
        BL       simiic_write_reg
//   51     simiic_write_reg(L3G4200_DEV_ADD, CTRL_REG5_4200, 0x00);
        MOVS     R2,#+0
        MOVS     R1,#+36
        MOVS     R0,#+105
        BL       simiic_write_reg
//   52     Temperature = simiic_read_reg(L3G4200_DEV_ADD, OUT_TEMP_4200, IIC);
        MOVS     R2,#+0
        MOVS     R1,#+38
        MOVS     R0,#+105
        BL       simiic_read_reg
        LDR.N    R1,??DataTable1
        STRB     R0,[R1, #+0]
//   53 }
        POP      {R0,PC}          ;; return
//   54 
//   55 //-------------------------------------------------------------------------------------------------------------------
//   56 //  @brief      鑾峰彇L3G4200D闄�铻轰华鏁版嵁
//   57 //  @param      NULL
//   58 //  @return     void						
//   59 //  @since      v1.0
//   60 //  Sample usage:				鎵ц璇ュ嚱鏁板悗锛岀洿鎺ユ煡鐪嬪搴旂殑鍙橀噺鍗冲彲
//   61 //-------------------------------------------------------------------------------------------------------------------

        SECTION `.text`:CODE:NOROOT(1)
        THUMB
//   62 void get_l3g4200d(void)
//   63 {
get_l3g4200d:
        PUSH     {R3-R9,LR}
//   64     uint8 gx=0, gy=0, gz=0;
        MOVS     R4,#+0
        MOVS     R5,#+0
        MOVS     R6,#+0
//   65     uint16 wgx=0, wgy=0, wgz=0;
        MOVS     R7,#+0
        MOVS     R8,#+0
        MOVS     R9,#+0
//   66 
//   67     if( simiic_read_reg(L3G4200_DEV_ADD, STATUS_REG_4200, IIC)&0x80 )//鏌ョ湅鏁版嵁鏄惁鍑嗗濂戒簡銆傚鏋滄病鏈夊噯澶囧ソ锛岃鍙栧垯鍙兘璇诲彇鍒伴敊璇暟鎹�傝鍙栭鐜囨渶濂芥槸楂樹簬鏁版嵁杈撳嚭棰戠巼
        MOVS     R2,#+0
        MOVS     R1,#+39
        MOVS     R0,#+105
        BL       simiic_read_reg
        LSLS     R0,R0,#+24
        BPL.N    ??get_l3g4200d_0
//   68     {
//   69 //        wgx = simiic_read_reg(L3G4200_DEV_ADD, OUT_X_H_4200, IIC);
//   70 //		gx = simiic_read_reg(L3G4200_DEV_ADD, OUT_X_L_4200, IIC);
//   71 //        gyro_x = (wgx<<8) + gx;
//   72 //        gyro_x >>= 3;
//   73 
//   74 //        wgz = simiic_read_reg(L3G4200_DEV_ADD, OUT_Y_H_4200, IIC);
//   75 //		gz = simiic_read_reg(L3G4200_DEV_ADD, OUT_Y_L_4200, IIC);
//   76 //        gyro_z = (wgz<<8) + gz;
//   77 //        gyro_z >>= 3;
//   78 //
//   79         wgy = simiic_read_reg(L3G4200_DEV_ADD, OUT_Z_H_4200, IIC);
        MOVS     R2,#+0
        MOVS     R1,#+45
        MOVS     R0,#+105
        BL       simiic_read_reg
        MOV      R8,R0
//   80 		gy = simiic_read_reg(L3G4200_DEV_ADD, OUT_Z_L_4200, IIC);
        MOVS     R2,#+0
        MOVS     R1,#+44
        MOVS     R0,#+105
        BL       simiic_read_reg
        MOVS     R5,R0
//   81         gyro_y = (wgy<<8) + gy;
        UXTH     R8,R8            ;; ZeroExt  R8,R8,#+16,#+16
        LSLS     R0,R8,#+8
        UXTAB    R0,R0,R5
        LDR.N    R1,??DataTable1_1
        STRH     R0,[R1, #+0]
//   82         gyro_y >>= 3;
        LDR.N    R0,??DataTable1_1
        LDRSH    R0,[R0, #+0]
        SXTH     R0,R0            ;; SignExt  R0,R0,#+16,#+16
        ASRS     R0,R0,#+3
        LDR.N    R1,??DataTable1_1
        STRH     R0,[R1, #+0]
//   83                 
//   84         angle_pitch += gyro_y;
        LDR.N    R0,??DataTable1_2
        LDR      R0,[R0, #+0]
        LDR.N    R1,??DataTable1_1
        LDRSH    R1,[R1, #+0]
        ADDS     R0,R0,R1
        LDR.N    R1,??DataTable1_2
        STR      R0,[R1, #+0]
//   85         if(Count%100 == 0)
        MOVS     R0,#+100
        LDR.N    R1,??DataTable1_3
        LDR      R1,[R1, #+0]
        LDR.N    R2,??DataTable1_3
        LDR      R2,[R2, #+0]
        SDIV     R2,R2,R0
        MLS      R0,R0,R2,R1
        CMP      R0,#+0
        BNE.N    ??get_l3g4200d_0
//   86            angle_pitch = 0;
        MOVS     R0,#+0
        LDR.N    R1,??DataTable1_2
        STR      R0,[R1, #+0]
//   87         
//   88     }
//   89 }
??get_l3g4200d_0:
        POP      {R0,R4-R9,PC}    ;; return

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1:
        DC32     Temperature

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_1:
        DC32     gyro_y

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_2:
        DC32     angle_pitch

        SECTION `.text`:CODE:NOROOT(2)
        SECTION_TYPE SHT_PROGBITS, 0
        DATA
??DataTable1_3:
        DC32     Count

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
//  19 bytes in section .bss
// 220 bytes in section .text
// 
// 220 bytes of CODE memory
//  19 bytes of DATA memory
//
//Errors: none
//Warnings: 4
