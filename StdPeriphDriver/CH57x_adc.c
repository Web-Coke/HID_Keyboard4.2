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
 * @brief   ��ص�ѹ���
 *
 * @param   none
 *
 * @return  ��ǰ��ص�ѹ
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
 * @brief   ���õ�ص�ѹ������ʼ��
 *
 * @param   none
 *
 * @return  none
 */
void ADC_InterBATSampInit(void) {
    R8_TKEY_CFG &= ~RB_TKEY_PWR_ON;
    R8_ADC_CHANNEL = CH_INTE_VBAT;
    R8_ADC_CFG = RB_ADC_POWER_ON | RB_ADC_BUF_EN | (0 << 4); // ʹ��-12dBģʽ��
}

/*********************************************************************
 * @fn      ADC_ExcutSingleConver
 *
 * @brief   ADCִ�е���ת��
 *
 * @param   none
 *
 * @return  ADCת���������
 */
uint16_t ADC_ExcutSingleConver(void) {
    R8_ADC_CONVERT = RB_ADC_START;
    while(R8_ADC_CONVERT & RB_ADC_START);

    return (R16_ADC_DATA & RB_ADC_DATA);
}

/*******************************************************************************
 * Function Name  : ADC_InterTSSampInit
 * Description    : �����¶ȴ�����������ʼ��
 * Input          : None
 * Return         : None
 *******************************************************************************/
void ADC_InterTSSampInit(void) {
    R8_TKEY_CFG &= ~RB_TKEY_PWR_ON;
    R8_TEM_SENSOR = RB_TEM_SEN_PWR_ON;
    R8_ADC_CHANNEL = CH_INTE_VTEMP;
    R8_ADC_CFG = RB_ADC_POWER_ON | RB_ADC_DIFF_EN | (3 << 4);
}
