/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file    stm32f1xx_it.c
  * @brief   Interrupt Service Routines.
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
#include "stm32f1xx_it.h"
/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "can_messeges_func.h"

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN TD */

/* USER CODE END TD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */
#define MAX_TIMEOUT_TICKS 50
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
/* USER CODE BEGIN PFP */
void emegrancy_stop(CAN_HandleTypeDef*);
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/* External variables --------------------------------------------------------*/
extern CAN_HandleTypeDef hcan1;
extern CAN_HandleTypeDef hcan2;
extern TIM_HandleTypeDef htim2;
extern TIM_HandleTypeDef htim3;
/* USER CODE BEGIN EV */
extern CAN_RxHeaderTypeDef RxHeader_CAN1;
extern CAN_RxHeaderTypeDef RxHeader_CAN2;

extern uint8_t RxData_CAN1[8];
extern uint8_t RxData_CAN2[8];

extern uint32_t TxMailbox1;
extern uint32_t TxMailbox2;

extern uint16_t engine_mode;

extern uint16_t inverter_RPM;
extern uint16_t inverter_RMS;
extern uint16_t inverter_status;
extern uint16_t inverter_temp_IGBT_raw;
extern uint16_t inverter_temp_engine_raw;
extern uint16_t inverter_temp_air_raw;
extern uint32_t tim2_counter;
extern uint32_t apps_timeout_counter;
extern uint32_t engine_timeout_counter;

extern uint8_t inverter_stopped;

extern uint16_t inverter_RPM_N_MAX;
extern uint16_t inverter_RPM_LIMIT;

extern uint8_t send_inverter_data;
extern uint8_t send_stop_limit;
extern uint8_t send_stop_N_nom;

/* USER CODE END EV */

/******************************************************************************/
/*           Cortex-M3 Processor Interruption and Exception Handlers          */
/******************************************************************************/
/**
  * @brief This function handles Non maskable interrupt.
  */
void NMI_Handler(void)
{
  /* USER CODE BEGIN NonMaskableInt_IRQn 0 */

  /* USER CODE END NonMaskableInt_IRQn 0 */
  /* USER CODE BEGIN NonMaskableInt_IRQn 1 */

  /* USER CODE END NonMaskableInt_IRQn 1 */
}

/**
  * @brief This function handles Hard fault interrupt.
  */
void HardFault_Handler(void)
{
  /* USER CODE BEGIN HardFault_IRQn 0 */

  /* USER CODE END HardFault_IRQn 0 */
  while (1)
  {
    /* USER CODE BEGIN W1_HardFault_IRQn 0 */
    /* USER CODE END W1_HardFault_IRQn 0 */
  }
}

/**
  * @brief This function handles Memory management fault.
  */
void MemManage_Handler(void)
{
  /* USER CODE BEGIN MemoryManagement_IRQn 0 */

  /* USER CODE END MemoryManagement_IRQn 0 */
  while (1)
  {
    /* USER CODE BEGIN W1_MemoryManagement_IRQn 0 */
    /* USER CODE END W1_MemoryManagement_IRQn 0 */
  }
}

/**
  * @brief This function handles Prefetch fault, memory access fault.
  */
void BusFault_Handler(void)
{
  /* USER CODE BEGIN BusFault_IRQn 0 */

  /* USER CODE END BusFault_IRQn 0 */
  while (1)
  {
    /* USER CODE BEGIN W1_BusFault_IRQn 0 */
    /* USER CODE END W1_BusFault_IRQn 0 */
  }
}

/**
  * @brief This function handles Undefined instruction or illegal state.
  */
void UsageFault_Handler(void)
{
  /* USER CODE BEGIN UsageFault_IRQn 0 */

  /* USER CODE END UsageFault_IRQn 0 */
  while (1)
  {
    /* USER CODE BEGIN W1_UsageFault_IRQn 0 */
    /* USER CODE END W1_UsageFault_IRQn 0 */
  }
}

/**
  * @brief This function handles System service call via SWI instruction.
  */
void SVC_Handler(void)
{
  /* USER CODE BEGIN SVCall_IRQn 0 */

  /* USER CODE END SVCall_IRQn 0 */
  /* USER CODE BEGIN SVCall_IRQn 1 */

  /* USER CODE END SVCall_IRQn 1 */
}

/**
  * @brief This function handles Debug monitor.
  */
void DebugMon_Handler(void)
{
  /* USER CODE BEGIN DebugMonitor_IRQn 0 */

  /* USER CODE END DebugMonitor_IRQn 0 */
  /* USER CODE BEGIN DebugMonitor_IRQn 1 */

  /* USER CODE END DebugMonitor_IRQn 1 */
}

/**
  * @brief This function handles Pendable request for system service.
  */
void PendSV_Handler(void)
{
  /* USER CODE BEGIN PendSV_IRQn 0 */

  /* USER CODE END PendSV_IRQn 0 */
  /* USER CODE BEGIN PendSV_IRQn 1 */

  /* USER CODE END PendSV_IRQn 1 */
}

/**
  * @brief This function handles System tick timer.
  */
void SysTick_Handler(void)
{
  /* USER CODE BEGIN SysTick_IRQn 0 */

  /* USER CODE END SysTick_IRQn 0 */
  HAL_IncTick();
  /* USER CODE BEGIN SysTick_IRQn 1 */

  /* USER CODE END SysTick_IRQn 1 */
}

/******************************************************************************/
/* STM32F1xx Peripheral Interrupt Handlers                                    */
/* Add here the Interrupt Handlers for the used peripherals.                  */
/* For the available peripheral interrupt handler names,                      */
/* please refer to the startup file (startup_stm32f1xx.s).                    */
/******************************************************************************/

/**
  * @brief This function handles CAN1 RX0 interrupt.
  */
void CAN1_RX0_IRQHandler(void)
{
  /* USER CODE BEGIN CAN1_RX0_IRQn 0 */

  /* USER CODE END CAN1_RX0_IRQn 0 */
  HAL_CAN_IRQHandler(&hcan1);
  /* USER CODE BEGIN CAN1_RX0_IRQn 1 */
  if (HAL_CAN_GetRxMessage(&hcan1, CAN_RX_FIFO0, &RxHeader_CAN1, RxData_CAN1) == HAL_OK){
	  if(RxHeader_CAN1.StdId == 0x0A){
		  apps_timeout_counter = tim2_counter;

		  CAN_TxHeaderTypeDef TxHeader;
		  uint8_t* TxData = NULL;

		  int16_t apps = ((int16_t)RxData_CAN1[1]) << 8;
		  apps = apps | ((int16_t)RxData_CAN1[0]);

		  if (apps > 0){
			  apps = ((apps * 5 ) / 10); // tEsTy FiUt MoToRsPoRt TOMASZ TUTAJ
		  }
		  else{
			  //apps = -10;				// -2.5%
			  //apps = -50;				// -5%
			  apps = 0;				// 0% to tak zeby szybko cofnąć
		  }

		  CAN_set_speed_command(&TxHeader, &TxData, apps);

		  if (HAL_CAN_AddTxMessage(&hcan2, &TxHeader, TxData, &TxMailbox2) != HAL_OK)
		  {
		    Error_Handler();
		  }
		  free(TxData);
	  }
	  else if(RxHeader_CAN1.StdId == 0x0C){
		  if(RxData_CAN1[3] != 0x00){
			  emegrancy_stop(&hcan2);
		  }
	  }
  }else{
	Error_Handler();
  }
  /* USER CODE END CAN1_RX0_IRQn 1 */
}

/**
  * @brief This function handles TIM2 global interrupt.
  */
void TIM2_IRQHandler(void)
{
  /* USER CODE BEGIN TIM2_IRQn 0 */
	  ++tim2_counter;

	  if(apps_timeout_counter + MAX_TIMEOUT_TICKS <= tim2_counter){
		  emegrancy_stop(&hcan2); //message to engine that apps is not responding
		  HAL_GPIO_WritePin(GPIO_LED_1_GPIO_Port, GPIO_LED_1_Pin, GPIO_PIN_RESET);
	  }

	  if(engine_timeout_counter + MAX_TIMEOUT_TICKS <= tim2_counter){
	  	  //message to apps that engine is not responding
		  HAL_GPIO_WritePin(GPIO_LED_2_GPIO_Port, GPIO_LED_2_Pin, GPIO_PIN_RESET);
	  }
  /* USER CODE END TIM2_IRQn 0 */
  HAL_TIM_IRQHandler(&htim2);
  /* USER CODE BEGIN TIM2_IRQn 1 */

  /* USER CODE END TIM2_IRQn 1 */
}

/**
  * @brief This function handles TIM3 global interrupt.
  */
void TIM3_IRQHandler(void)
{
  /* USER CODE BEGIN TIM3_IRQn 0 */
	send_inverter_data = 1;
  /* USER CODE END TIM3_IRQn 0 */
  HAL_TIM_IRQHandler(&htim3);
  /* USER CODE BEGIN TIM3_IRQn 1 */

  /* USER CODE END TIM3_IRQn 1 */
}

/**
  * @brief This function handles CAN2 RX0 interrupt.
  */
void CAN2_RX0_IRQHandler(void)
{
  /* USER CODE BEGIN CAN2_RX0_IRQn 0 */

  /* USER CODE END CAN2_RX0_IRQn 0 */
  HAL_CAN_IRQHandler(&hcan2);
  /* USER CODE BEGIN CAN2_RX0_IRQn 1 */
  if (HAL_CAN_GetRxMessage(&hcan2, CAN_RX_FIFO0, &RxHeader_CAN2, RxData_CAN2) == HAL_OK){
	  if(RxHeader_CAN2.StdId == 0x181){
  		  uint8_t regid = RxData_CAN2[0];

  		  engine_timeout_counter = tim2_counter;
  		  //if(regid == 0x5e){ //CAN_request_speed_command		// TODO
  		  //if(regid == 0x30){ //CAN_request_speed_command		// TODO
  	  	  if(regid == 0xA8){ //CAN_request_speed_command		// TODO
  			  inverter_RPM = 0x0000;
  			  inverter_RPM = (uint16_t)(RxData_CAN2[2] << 8);
  			  inverter_RPM |= (uint16_t)RxData_CAN2[1];
  			  inverter_RPM = inverter_RPM;
  		  }
  		  else if(regid == 0x5f){ //CAN_request_power_command
  			  inverter_RMS = 0x0000;
  			  inverter_RMS = (uint16_t)(RxData_CAN2[2] << 8);
  			  inverter_RMS |= (uint16_t)RxData_CAN2[1];
  			  ;//HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_13);
  		  }
  		  else if(regid == 0x4A){ //CAN_request_igbt_temp_command
  			  inverter_temp_IGBT_raw = 0x0000;
  			  inverter_temp_IGBT_raw = (uint16_t)(RxData_CAN2[2] << 8);
  			  inverter_temp_IGBT_raw |= (uint16_t)(RxData_CAN2[1]);
  			  ;//HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_14);
  		  }
  		  else if(regid == 0x49){ //CAN_request_motor_temp_command
  			  inverter_temp_engine_raw = 0x0000;
  			  inverter_temp_engine_raw = (uint16_t)(RxData_CAN2[2] << 8);
  			  inverter_temp_engine_raw |= (uint16_t)(RxData_CAN2[1]);
  			  ;//HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_15);
  		  }
  		  else if (regid == 0x4B){
  			  inverter_temp_air_raw = 0x0000;
  			  inverter_temp_air_raw = (uint16_t)(RxData_CAN2[2] << 8);
  			  inverter_temp_air_raw |= (uint16_t)(RxData_CAN2[2] & 0xff);

  		  }
  		  else if (regid == 0x59){
  			  inverter_RPM_N_MAX = 0x0000;
  			  inverter_RPM_N_MAX = (uint16_t)(RxData_CAN2[2] << 8);
  			  inverter_RPM_N_MAX |= (uint16_t)(RxData_CAN2[2] & 0xff);
  			  send_stop_N_nom = 1;
  		  }
  		  else if (regid == 0x34){
  			  inverter_RPM_LIMIT = 0x0000;
  			  inverter_RPM_LIMIT = (uint16_t)(RxData_CAN2[2] << 8);
  			  inverter_RPM_LIMIT |= (uint16_t)(RxData_CAN2[2] & 0xff);
  			  send_stop_limit = 1;
  		  }
  		  /*
  		  else if(regid == 0x4B){ //CAN_request_air_temp_command //change. we need inverter's status not air temp
  			  inverter_status = 0x0000;
  			  inverter_status = (uint16_t)(RxData_CAN2[2] << 8);
  			  inverter_status |= (uint16_t)RxData_CAN2[1];
  			  ;//HAL_GPIO_TogglePin(GPIOD, GPIO_PIN_15);
  		  }
  		  */
  	  }
    }else{
    	Error_Handler();
    }
  /* USER CODE END CAN2_RX0_IRQn 1 */
}

/* USER CODE BEGIN 1 */
void emegrancy_stop(CAN_HandleTypeDef *hcan){
	{
		  CAN_TxHeaderTypeDef TxHeader;
		  uint8_t* TxData = NULL;

		  CAN_stop_speed_command(&TxHeader, &TxData);

		  if (HAL_CAN_AddTxMessage(&hcan2, &TxHeader, TxData, &TxMailbox2) != HAL_OK)
		  {
			Error_Handler();
		  }
		  free(TxData);
	  }

	  {
		  CAN_TxHeaderTypeDef TxHeader;
		  uint8_t* TxData = NULL;

		  CAN_disable_controller_command(&TxHeader, &TxData);

		  if (HAL_CAN_AddTxMessage(&hcan2, &TxHeader, TxData, &TxMailbox2) != HAL_OK)
		  {
			Error_Handler();
		  }
		  free(TxData);
	  }
	  HAL_CAN_Stop(&hcan2);

	  inverter_stopped = 1;
}
/* USER CODE END 1 */
/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
