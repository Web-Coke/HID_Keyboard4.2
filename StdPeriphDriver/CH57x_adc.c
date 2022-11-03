/********************************** (C) COPYRIGHT *******************************
 * File Name          : CH57x_adc.c
 * Author             : WCH
 * Version            : V1.2
 * Date               : 2021/11/17
 * Description
 * Copyright (c) 2021 Nanjing Qinheng Microelectronics Co., Ltd.
 * SPDX-License-Identifier: Apache-2.0
 *******************************************************************************/

#include "CH57x_common.h"

uint16_t abcBuff[40];
volatile uint8_t adclen;
volatile uint8_t DMA_end = 0;

/*********************************************************************
 * @fn      Vbat_Init
 *
 * @brief   电池电压检测
 *
 * @param   none
 *
 * @return  当前电池电压
 */
float Vbat_Init(void) {
    uint16_t i, a;
    float Vbat;
    ADC_InterBATSampInit();
    for (i = 0; i < 20; i++) {
        abcBuff[i] = ADC_ExcutSingleConver();
        if (i == 19) {
            a = abcBuff[i];
            Vbat = ((float) a / 512 - 3) * 1050;
            PRINT("%f\n", Vbat);
        }
    }
    return (Vbat);
}

/*********************************************************************
 * @fn      ADC_InterBATSampInit
 *
 * @brief   内置电池电压采样初始化
 *
 * @param   none
 *
 * @return  none
 */
void ADC_InterBATSampInit(void) {
    R8_TKEY_CFG &= ~RB_TKEY_PWR_ON;
    R8_ADC_CHANNEL = CH_INTE_VBAT;
    R8_ADC_CFG = RB_ADC_POWER_ON | RB_ADC_BUF_EN | (0 << 4); // 使用-12dB模式，
}

/*********************************************************************
 * @fn      ADC_ExcutSingleConver
 *
 * @brief   ADC执行单次转换
 *
 * @param   none
 *
 * @return  ADC转换后的数据
 */
uint16_t ADC_ExcutSingleConver(void) {
    R8_ADC_CONVERT = RB_ADC_START;
    while(R8_ADC_CONVERT & RB_ADC_START);

    return (R16_ADC_DATA & RB_ADC_DATA);
}

/*******************************************************************************
 * Function Name  : ADC_InterTSSampInit
 * Description    : 内置温度传感器采样初始化
 * Input          : None
 * Return         : None
 *******************************************************************************/
void ADC_InterTSSampInit(void) {
    R8_TKEY_CFG &= ~RB_TKEY_PWR_ON;
    R8_TEM_SENSOR = RB_TEM_SEN_PWR_ON;
    R8_ADC_CHANNEL = CH_INTE_VTEMP;
    R8_ADC_CFG = RB_ADC_POWER_ON | RB_ADC_DIFF_EN | (3 << 4);
}
