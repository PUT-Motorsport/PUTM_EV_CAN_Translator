/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "can_messeges_func.h"
#include "inverter_register_codes.h"
#include "common.h"

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
CAN_HandleTypeDef hcan1;
CAN_HandleTypeDef hcan2;

TIM_HandleTypeDef htim2;
TIM_HandleTypeDef htim3;

/* USER CODE BEGIN PV */
CAN_FilterTypeDef sFilterConfig;

CAN_RxHeaderTypeDef RxHeader_CAN1;
CAN_RxHeaderTypeDef RxHeader_CAN2;

uint8_t RxData_CAN1[8];
uint8_t RxData_CAN2[8];

uint32_t TxMailbox1;
uint32_t TxMailbox2;

uint16_t inverter_RPM;
uint16_t inverter_RPM_to_send;
uint16_t inverter_RMS;
uint16_t inverter_status;
uint8_t inverter_temp_IGBT;
uint8_t inverter_temp_engine;
uint16_t inverter_temp_IGBT_raw;
uint16_t inverter_temp_engine_raw;
uint16_t inverter_temp_air_raw;

uint16_t inverter_RPM_N_MAX;
uint16_t inverter_RPM_LIMIT;

const uint16_t inverter_igbt_temp_table[21] = {17151, 17400, 17688, 18017, 18387, 18979,
                                         19247, 19733, 20250, 20793, 21357, 21933, 22515, 23097,
                                         23671, 24232, 24775, 25296, 25792, 26261, 26702};

const uint16_t inverter_engine_temp_table[15] = {8438, 8971, 9510, 10052, 10592, 11128,
                                           11662, 12192, 12714, 13228, 13735, 14228, 14685, 15082, 15397};

typedef void (*request_list_type)(CAN_TxHeaderTypeDef *, uint8_t **);

uint32_t tim2_counter;
uint32_t last_apps_timestamp;
uint32_t apps_timeout_counter;
uint32_t engine_timeout_counter;

uint8_t send_inverter_data;
uint8_t send_apps_data;
uint8_t inverter_stopped;
uint8_t send_stop_limit;
uint8_t send_stop_N_max;

uint16_t apps_to_send = 0;
uint8_t TS_state = 0;
uint8_t RTDS_enable = 0;
uint16_t RTDS_counter = 0;
uint32_t RTDS_timestamp = 0;

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);

static void MX_GPIO_Init(void);

static void MX_CAN1_Init(void);

static void MX_CAN2_Init(void);

static void MX_TIM2_Init(void);

static void MX_TIM3_Init(void);

/* USER CODE BEGIN PFP */
static void my_init(void);

static void CAN_requests_Init(void);

static void my_init_CAN(void);

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void) {
    /* USER CODE BEGIN 1 */

    /* USER CODE END 1 */

    /* MCU Configuration--------------------------------------------------------*/

    /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
    HAL_Init();

    /* USER CODE BEGIN Init */

    /* USER CODE END Init */

    /* Configure the system clock */
    SystemClock_Config();

    /* USER CODE BEGIN SysInit */

    /* USER CODE END SysInit */

    /* Initialize all configured peripherals */
    MX_GPIO_Init();
    MX_CAN1_Init();
    MX_CAN2_Init();
    MX_TIM2_Init();
    MX_TIM3_Init();
    /* USER CODE BEGIN 2 */

    HAL_Delay(500);

    my_init();

    HAL_TIM_Base_Start_IT(&htim2);
    HAL_TIM_Base_Start_IT(&htim3);

    CAN_TxHeaderTypeDef tx_header_inverter_data;
    uint8_t inverter_data[8] = {0, 0, 0, 0, 0, 0, 0, 0};
    tx_header_inverter_data.StdId = INVERTER_MESS_ID;
    tx_header_inverter_data.RTR = CAN_RTR_DATA;
    tx_header_inverter_data.IDE = CAN_ID_STD;
    tx_header_inverter_data.DLC = INVERTER_MESS_DLC;
    tx_header_inverter_data.TransmitGlobalTime = DISABLE;
    uint32_t mail_data_inverter = 0;

    /* USER CODE END 2 */

    /* Infinite loop */
    /* USER CODE BEGIN WHILE */
    while (1) {
        /* USER CODE END WHILE */

        /* USER CODE BEGIN 3 */
        if (send_apps_data >= SEND_APPS_INTERVAL && TS_state && !inverter_stopped) {
            send_apps_data = 0;

            if (apps_to_send > 0) {
                apps_to_send = ((apps_to_send * TORQUE_MULTIPLIER) / TORQUE_DIVIDER);
            }
            else if (apps_to_send == 0 && inverter_RPM_to_send > 0) {
                apps_to_send = 0;
                //apps = -10;		// -2.5%
                //apps = -50;		// -5%
                //apps = -1 * (inverter_RPM_to_send * 10 / 0x7fff);

				//TODO
				//add function to calculate reverse torque to slow car down
				//test:
				//	- use constant torque
				//	- use function (linear or not)
            }

            CAN_TxHeaderTypeDef TxHeader;
            uint8_t TxData[3];
            CAN_set_speed_command(&TxHeader, TxData, apps_to_send);

            HAL_CAN_AbortTxRequest(&hcan2, TxMailbox2);
            if (HAL_CAN_AddTxMessage(&hcan2, &TxHeader, TxData, &TxMailbox2) != HAL_OK) {
                Error_Handler();
            }
        }

        if (send_inverter_data && !inverter_stopped) {
            inverter_temp_IGBT = calculate_IGBT_temperature(inverter_temp_IGBT_raw);
            inverter_temp_engine = calculate_engine_temperature(inverter_temp_engine_raw);
            uint16_t inverter_status_to_send = inverter_status;
            uint16_t inverter_RMS_to_sent = inverter_RMS;

            if (inverter_RPM_LIMIT == 0 && inverter_RPM_N_MAX == 0) {
                inverter_RPM_to_send = 0x7FFF;
            }
            else {
                inverter_RPM_to_send = (uint16_t) ((float) inverter_RPM / 32767.0f * (float) inverter_RPM_N_MAX);
            }

            inverter_data[0] = (uint8_t) (inverter_RPM_to_send & 0x00FF);
            inverter_data[1] = (uint8_t) (inverter_RPM_to_send >> 8);
            inverter_data[2] = (uint8_t) (inverter_RMS_to_sent & 0xFF);
            inverter_data[3] = (uint8_t) (inverter_RMS_to_sent >> 8);
            inverter_data[4] = (uint8_t) (inverter_status_to_send & 0xFF);
            inverter_data[5] = (uint8_t) (inverter_status_to_send >> 8);
            inverter_data[6] = inverter_temp_engine;
            inverter_data[7] = inverter_temp_IGBT;

            if (HAL_CAN_AddTxMessage(&hcan1, &tx_header_inverter_data, inverter_data, &mail_data_inverter) != HAL_OK) {
                Error_Handler();
            }
            send_inverter_data = 0;
        }

        if (send_stop_N_max && !inverter_stopped) {
            CAN_TxHeaderTypeDef tx_header_inverter_stop_N_max;
            uint8_t inverter_data_stop_max[3];
            uint32_t mail_data_inverter_stop_max = 0;

            CAN_stop_speed_limit_command(&tx_header_inverter_stop_N_max, inverter_data_stop_max);

            HAL_CAN_AddTxMessage(&hcan2, &tx_header_inverter_stop_N_max, inverter_data_stop_max,
                                 &mail_data_inverter_stop_max);
            while (HAL_CAN_IsTxMessagePending(&hcan2, mail_data_inverter_stop_max));
        }

        if (send_stop_limit && !inverter_stopped) {
            CAN_TxHeaderTypeDef tx_header_inverter_stop_limit;
            uint8_t inverter_data_stop_limit[3];
            uint32_t mail_data_inverter_stop_limit = 0;

            CAN_stop_speed_limit_command(&tx_header_inverter_stop_limit, inverter_data_stop_limit);

            HAL_CAN_AddTxMessage(&hcan2, &tx_header_inverter_stop_limit, inverter_data_stop_limit,
                                 &mail_data_inverter_stop_limit);
            while (HAL_CAN_IsTxMessagePending(&hcan2, mail_data_inverter_stop_limit));
        }

        if (inverter_stopped == 1) {
            CAN_TxHeaderTypeDef TxHeader_inverter_stopped;
            uint8_t TxData[2] = {INVERTER_ERROR_DATA, INVERTER_ERROR_DATA};
            TxHeader_inverter_stopped.StdId = INVERTER_ERROR_ID;
            TxHeader_inverter_stopped.IDE = CAN_ID_STD;
            TxHeader_inverter_stopped.RTR = CAN_RTR_DATA;
            TxHeader_inverter_stopped.TransmitGlobalTime = DISABLE;
            TxHeader_inverter_stopped.DLC = INVERTER_ERROR_DLC;

            HAL_CAN_AddTxMessage(&hcan1, &TxHeader_inverter_stopped, TxData, &TxMailbox1);
            HAL_Delay(10);
        }

        if (RTDS_enable) {
            HAL_GPIO_WritePin(RTDS_GPIO_Port, RTDS_Pin, GPIO_PIN_SET);
            HAL_GPIO_WritePin(GPIO_LED_1_GPIO_Port, GPIO_LED_1_Pin, GPIO_PIN_RESET);
        }

        if (!RTDS_enable) {
            HAL_GPIO_WritePin(RTDS_GPIO_Port, RTDS_Pin, GPIO_PIN_RESET);
            HAL_GPIO_WritePin(GPIO_LED_1_GPIO_Port, GPIO_LED_1_Pin, GPIO_PIN_SET);
        }
    }
    /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void) {
    RCC_OscInitTypeDef RCC_OscInitStruct = {0};
    RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

    /** Initializes the RCC Oscillators according to the specified parameters
    * in the RCC_OscInitTypeDef structure.
    */
    RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSE;
    RCC_OscInitStruct.HSEState = RCC_HSE_ON;
    RCC_OscInitStruct.HSEPredivValue = RCC_HSE_PREDIV_DIV5;
    RCC_OscInitStruct.HSIState = RCC_HSI_ON;
    RCC_OscInitStruct.Prediv1Source = RCC_PREDIV1_SOURCE_PLL2;
    RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
    RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSE;
    RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL8;
    RCC_OscInitStruct.PLL2.PLL2State = RCC_PLL2_ON;
    RCC_OscInitStruct.PLL2.PLL2MUL = RCC_PLL2_MUL10;
    RCC_OscInitStruct.PLL2.HSEPrediv2Value = RCC_HSE_PREDIV2_DIV2;
    if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK) {
        Error_Handler();
    }
    /** Initializes the CPU, AHB and APB buses clocks
    */
    RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_SYSCLK
                                  | RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2;
    RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
    RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
    RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
    RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV2;

    if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK) {
        Error_Handler();
    }
    /** Configure the Systick interrupt time
    */
    __HAL_RCC_PLLI2S_ENABLE();
}

/**
  * @brief CAN1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_CAN1_Init(void) {

    /* USER CODE BEGIN CAN1_Init 0 */

    /* USER CODE END CAN1_Init 0 */

    /* USER CODE BEGIN CAN1_Init 1 */

    /* USER CODE END CAN1_Init 1 */
    hcan1.Instance = CAN1;
    hcan1.Init.Prescaler = 4;
    hcan1.Init.Mode = CAN_MODE_NORMAL;
    hcan1.Init.SyncJumpWidth = CAN_SJW_1TQ;
    hcan1.Init.TimeSeg1 = CAN_BS1_13TQ;
    hcan1.Init.TimeSeg2 = CAN_BS2_2TQ;
    hcan1.Init.TimeTriggeredMode = DISABLE;
    hcan1.Init.AutoBusOff = DISABLE;
    hcan1.Init.AutoWakeUp = DISABLE;
    hcan1.Init.AutoRetransmission = DISABLE;
    hcan1.Init.ReceiveFifoLocked = DISABLE;
    hcan1.Init.TransmitFifoPriority = DISABLE;
    if (HAL_CAN_Init(&hcan1) != HAL_OK) {
        Error_Handler();
    }
    /* USER CODE BEGIN CAN1_Init 2 */

    /* USER CODE END CAN1_Init 2 */

}

/**
  * @brief CAN2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_CAN2_Init(void) {

    /* USER CODE BEGIN CAN2_Init 0 */

    /* USER CODE END CAN2_Init 0 */

    /* USER CODE BEGIN CAN2_Init 1 */

    /* USER CODE END CAN2_Init 1 */
    hcan2.Instance = CAN2;
    hcan2.Init.Prescaler = 4;
    hcan2.Init.Mode = CAN_MODE_NORMAL;
    hcan2.Init.SyncJumpWidth = CAN_SJW_1TQ;
    hcan2.Init.TimeSeg1 = CAN_BS1_13TQ;
    hcan2.Init.TimeSeg2 = CAN_BS2_2TQ;
    hcan2.Init.TimeTriggeredMode = DISABLE;
    hcan2.Init.AutoBusOff = DISABLE;
    hcan2.Init.AutoWakeUp = DISABLE;
    hcan2.Init.AutoRetransmission = DISABLE;
    hcan2.Init.ReceiveFifoLocked = DISABLE;
    hcan2.Init.TransmitFifoPriority = DISABLE;
    if (HAL_CAN_Init(&hcan2) != HAL_OK) {
        Error_Handler();
    }
    /* USER CODE BEGIN CAN2_Init 2 */

    /* USER CODE END CAN2_Init 2 */

}

/**
  * @brief TIM2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM2_Init(void) {

    /* USER CODE BEGIN TIM2_Init 0 */

    /* USER CODE END TIM2_Init 0 */

    TIM_ClockConfigTypeDef sClockSourceConfig = {0};
    TIM_MasterConfigTypeDef sMasterConfig = {0};

    /* USER CODE BEGIN TIM2_Init 1 */

    /* USER CODE END TIM2_Init 1 */
    htim2.Instance = TIM2;
    htim2.Init.Prescaler = 999;
    htim2.Init.CounterMode = TIM_COUNTERMODE_UP;
    htim2.Init.Period = 63;
    htim2.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
    htim2.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_ENABLE;
    if (HAL_TIM_Base_Init(&htim2) != HAL_OK) {
        Error_Handler();
    }
    sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
    if (HAL_TIM_ConfigClockSource(&htim2, &sClockSourceConfig) != HAL_OK) {
        Error_Handler();
    }
    sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
    sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
    if (HAL_TIMEx_MasterConfigSynchronization(&htim2, &sMasterConfig) != HAL_OK) {
        Error_Handler();
    }
    /* USER CODE BEGIN TIM2_Init 2 */

    /* USER CODE END TIM2_Init 2 */

}

/**
  * @brief TIM3 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM3_Init(void) {

    /* USER CODE BEGIN TIM3_Init 0 */

    /* USER CODE END TIM3_Init 0 */

    TIM_ClockConfigTypeDef sClockSourceConfig = {0};
    TIM_MasterConfigTypeDef sMasterConfig = {0};

    /* USER CODE BEGIN TIM3_Init 1 */

    /* USER CODE END TIM3_Init 1 */
    htim3.Instance = TIM3;
    htim3.Init.Prescaler = 19999;
    htim3.Init.CounterMode = TIM_COUNTERMODE_UP;
    htim3.Init.Period = 63;
    htim3.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
    htim3.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_ENABLE;
    if (HAL_TIM_Base_Init(&htim3) != HAL_OK) {
        Error_Handler();
    }
    sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
    if (HAL_TIM_ConfigClockSource(&htim3, &sClockSourceConfig) != HAL_OK) {
        Error_Handler();
    }
    sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
    sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
    if (HAL_TIMEx_MasterConfigSynchronization(&htim3, &sMasterConfig) != HAL_OK) {
        Error_Handler();
    }
    /* USER CODE BEGIN TIM3_Init 2 */

    /* USER CODE END TIM3_Init 2 */

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void) {
    GPIO_InitTypeDef GPIO_InitStruct = {0};

    /* GPIO Ports Clock Enable */
    __HAL_RCC_GPIOD_CLK_ENABLE();
    __HAL_RCC_GPIOC_CLK_ENABLE();
    __HAL_RCC_GPIOA_CLK_ENABLE();
    __HAL_RCC_GPIOB_CLK_ENABLE();

    /*Configure GPIO pin Output Level */
    HAL_GPIO_WritePin(RTDS_GPIO_Port, RTDS_Pin, GPIO_PIN_RESET);

    /*Configure GPIO pin Output Level */
    HAL_GPIO_WritePin(GPIOA, GPIO_LED_1_Pin | GPIO_LED_2_Pin | GPIO_LED_3_Pin, GPIO_PIN_SET);

    /*Configure GPIO pin Output Level */
    HAL_GPIO_WritePin(GPIOC, GPIO_LED_4_Pin | GPIO_LED_5_Pin | GPIO_LED_6_Pin, GPIO_PIN_SET);

    /*Configure GPIO pin : RTDS_Pin */
    GPIO_InitStruct.Pin = RTDS_Pin;
    GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
    HAL_GPIO_Init(RTDS_GPIO_Port, &GPIO_InitStruct);

    /*Configure GPIO pins : GPIO_LED_1_Pin GPIO_LED_2_Pin GPIO_LED_3_Pin */
    GPIO_InitStruct.Pin = GPIO_LED_1_Pin | GPIO_LED_2_Pin | GPIO_LED_3_Pin;
    GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
    GPIO_InitStruct.Pull = GPIO_PULLDOWN;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
    HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

    /*Configure GPIO pins : GPIO_LED_4_Pin GPIO_LED_5_Pin GPIO_LED_6_Pin */
    GPIO_InitStruct.Pin = GPIO_LED_4_Pin | GPIO_LED_5_Pin | GPIO_LED_6_Pin;
    GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
    GPIO_InitStruct.Pull = GPIO_PULLDOWN;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
    HAL_GPIO_Init(GPIOC, &GPIO_InitStruct);

    /*Configure GPIO pin : PB6 */
    GPIO_InitStruct.Pin = GPIO_PIN_6;
    GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
    GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_HIGH;
    HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

    /*Configure GPIO pin : PB7 */
    GPIO_InitStruct.Pin = GPIO_PIN_7;
    GPIO_InitStruct.Mode = GPIO_MODE_INPUT;
    GPIO_InitStruct.Pull = GPIO_NOPULL;
    HAL_GPIO_Init(GPIOB, &GPIO_InitStruct);

    /*Configure peripheral I/O remapping */
    __HAL_AFIO_REMAP_USART1_ENABLE();

}

/* USER CODE BEGIN 4 */
static void my_init(void) {
    inverter_RPM_to_send = 0;
    inverter_RPM_N_MAX = 0;
    inverter_RPM_LIMIT = 0;

    tim2_counter = 0;
    apps_timeout_counter = 0;
    engine_timeout_counter = 0;

    send_inverter_data = 0;

    my_init_CAN();

    CAN_requests_Init();

    HAL_GPIO_WritePin(GPIO_LED_1_GPIO_Port, GPIO_LED_1_Pin, 1);
    HAL_GPIO_WritePin(GPIO_LED_2_GPIO_Port, GPIO_LED_2_Pin, 1);
    HAL_GPIO_WritePin(GPIO_LED_3_GPIO_Port, GPIO_LED_3_Pin, 1);
    HAL_GPIO_WritePin(GPIO_LED_4_GPIO_Port, GPIO_LED_4_Pin, 1);
    HAL_GPIO_WritePin(GPIO_LED_5_GPIO_Port, GPIO_LED_5_Pin, 1);
    HAL_GPIO_WritePin(GPIO_LED_6_GPIO_Port, GPIO_LED_6_Pin, 1);
}

static void CAN_requests_Init(void) {
    request_list_type requests[5] = {
            &CAN_request_speed_command,
            &CAN_request_igbt_temp_command,
            &CAN_request_motor_temp_command,
            &CAN_request_N_max_command,
            &CAN_request_speed_limit_command
    };

    for (int i = 0; i < 5; ++i) {
        CAN_TxHeaderTypeDef TxHeader;
        uint8_t *TxData = NULL;

        requests[i](&TxHeader, &TxData);

        if (HAL_CAN_AddTxMessage(&hcan2, &TxHeader, TxData, &TxMailbox2) != HAL_OK) {
            Error_Handler();
        }

        while (HAL_CAN_IsTxMessagePending(&hcan2, TxMailbox2));

        HAL_Delay(3);
        free(TxData);
    }

    HAL_Delay(10);
}

static void my_init_CAN(void) {
    sFilterConfig.FilterBank = 15;
    sFilterConfig.FilterMode = CAN_FILTERMODE_IDMASK;
    sFilterConfig.FilterScale = CAN_FILTERSCALE_32BIT;
    sFilterConfig.FilterIdHigh = 0x0000;
    sFilterConfig.FilterIdLow = 0x0000;
    sFilterConfig.FilterMaskIdHigh = 0x0;
    sFilterConfig.FilterMaskIdLow = 0x0;
    sFilterConfig.FilterFIFOAssignment = CAN_RX_FIFO0;
    sFilterConfig.FilterActivation = ENABLE;
    sFilterConfig.SlaveStartFilterBank = 14;



    if (HAL_CAN_ConfigFilter(&hcan1, &sFilterConfig) != HAL_OK) {
        Error_Handler();
    }

    if (HAL_CAN_ConfigFilter(&hcan2, &sFilterConfig) != HAL_OK) {
        Error_Handler();
    }

    if (HAL_CAN_Start(&hcan1) != HAL_OK) {
        Error_Handler();
    }

    if (HAL_CAN_Start(&hcan2) != HAL_OK) {
        Error_Handler();
    }

    if (HAL_CAN_ActivateNotification(&hcan1, CAN_IT_RX_FIFO0_MSG_PENDING | CAN_IT_TX_MAILBOX_EMPTY) != HAL_OK) {
        Error_Handler();
    }

    if (HAL_CAN_ActivateNotification(&hcan2, CAN_IT_RX_FIFO0_MSG_PENDING | CAN_IT_TX_MAILBOX_EMPTY) != HAL_OK) {
        Error_Handler();
    }
}
/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void) {
    /* USER CODE BEGIN Error_Handler_Debug */
    /* User can add his own implementation to report the HAL error return state */
    HAL_GPIO_WritePin(GPIO_LED_3_GPIO_Port, GPIO_LED_3_Pin, 0);
    /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
