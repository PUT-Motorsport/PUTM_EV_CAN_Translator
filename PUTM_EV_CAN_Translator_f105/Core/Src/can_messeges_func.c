#include "can_messeges_func.h"


uint16_t MAX_SPEED = 32767;

extern uint16_t engine_mode;


void CAN_disable_controller_command(CAN_TxHeaderTypeDef* TxHeader, uint8_t** TxData){
	TxHeader->StdId = 0x201;
	TxHeader->RTR = CAN_RTR_DATA;
	TxHeader->IDE = CAN_ID_STD;
	TxHeader->DLC = 3;
	TxHeader->TransmitGlobalTime = DISABLE;

	(*TxData) = malloc(3 * sizeof(uint8_t));

	(*TxData)[0] = 0x51;
	(*TxData)[1] = 0x04;
	(*TxData)[2] = 0x00;
}

void CAN_set_speed_command(CAN_TxHeaderTypeDef* TxHeader, uint8_t** TxData, uint16_t apps){
	/*
		 * apps 1 => 0.2% speed
		 * apps 2 => 0.4% speed
		 * apps 3 => 0.6% speed
		 *
		 */

	TxHeader->StdId = 0x201;
//	TxHeader->ExtId = 0x00;
	TxHeader->RTR = CAN_RTR_DATA;
	TxHeader->IDE = CAN_ID_STD;
	TxHeader->DLC = 3;
	TxHeader->TransmitGlobalTime = DISABLE;

	(*TxData) = malloc(3 * sizeof(uint8_t));

	(*TxData)[0] = 0x31; //REGID for the speed command value (SPEED_SOLL)

	uint16_t val = (MAX_SPEED / 500) * apps;
	(*TxData)[1] = (uint8_t)(val & 0x00FF);
	(*TxData)[2] = (uint8_t)(val >> 8);

}

void CAN_stop_speed_command(CAN_TxHeaderTypeDef* TxHeader, uint8_t** TxData){
	TxHeader->StdId = 0x201;
	TxHeader->RTR = CAN_RTR_DATA;
	TxHeader->IDE = CAN_ID_STD;
	TxHeader->DLC = 3;
	TxHeader->TransmitGlobalTime = DISABLE;

	(*TxData) = malloc(3 * sizeof(uint8_t));

	(*TxData)[0] = 0x31; //REGID for the speed command value (SPEED_SOLL)
	(*TxData)[1] = 0x00;
	(*TxData)[2] = 0x00;

}

void CAN_request_speed_command(CAN_TxHeaderTypeDef* TxHeader, uint8_t** TxData){
	TxHeader->StdId = 0x201;
	TxHeader->RTR = CAN_RTR_DATA;
	TxHeader->IDE = CAN_ID_STD;
	TxHeader->DLC = 3;
	TxHeader->TransmitGlobalTime = DISABLE;

	(*TxData) = malloc(3 * sizeof(uint8_t));

	(*TxData)[0] = 0x3D; //REGID for reading data from the servo and transmission to the CAN (READ)
	(*TxData)[1] = 0x5e; //(SPEED_FILTER_) Filter speed actual value
	(*TxData)[2] = 0x0A; //For the repeating time 10ms the input in byte 2 is
}

void CAN_request_power_command(CAN_TxHeaderTypeDef* TxHeader, uint8_t** TxData){
	TxHeader->StdId = 0x201;
	TxHeader->RTR = CAN_RTR_DATA;
	TxHeader->IDE = CAN_ID_STD;
	TxHeader->DLC = 3;
	TxHeader->TransmitGlobalTime = DISABLE;

	(*TxData) = malloc(3 * sizeof(uint8_t));

	(*TxData)[0] = 0x3D; //REGID for reading data from the servo and transmission to the CAN (READ)
	(*TxData)[1] = 0x5f; //(I_IST_FILT) Filtered actual current
	(*TxData)[2] = 0x0A; //For the repeating time 10ms the input in byte 2 is
}

void CAN_request_igbt_temp_command(CAN_TxHeaderTypeDef* TxHeader, uint8_t** TxData){
	TxHeader->StdId = 0x201;
	TxHeader->RTR = CAN_RTR_DATA;
	TxHeader->IDE = CAN_ID_STD;
	TxHeader->DLC = 3;
	TxHeader->TransmitGlobalTime = DISABLE;

	(*TxData) = malloc(3 * sizeof(uint8_t));

	(*TxData)[0] = 0x3D; //REGID for reading data from the servo and transmission to the CAN (READ)
	(*TxData)[1] = 0x4A; //(T_IGBT) power stage temperature
	(*TxData)[2] = 0x0A; //For the repeating time 10ms the input in byte 2 is
}

void CAN_request_motor_temp_command(CAN_TxHeaderTypeDef* TxHeader, uint8_t** TxData){
	TxHeader->StdId = 0x201;
	TxHeader->RTR = CAN_RTR_DATA;
	TxHeader->IDE = CAN_ID_STD;
	TxHeader->DLC = 3;
	TxHeader->TransmitGlobalTime = DISABLE;

	(*TxData) = malloc(3 * sizeof(uint8_t));

	(*TxData)[0] = 0x3D; //REGID for reading data from the servo and transmission to the CAN (READ)
	(*TxData)[1] = 0x49; //(T_MOTOR) motor temperature
	(*TxData)[2] = 0x0A; //For the repeating time 10ms the input in byte 2 is
}

void CAN_request_air_temp_command(CAN_TxHeaderTypeDef* TxHeader, uint8_t** TxData){
	TxHeader->StdId = 0x201;
	TxHeader->RTR = CAN_RTR_DATA;
	TxHeader->IDE = CAN_ID_STD;
	TxHeader->DLC = 3;
	TxHeader->TransmitGlobalTime = DISABLE;

	(*TxData) = malloc(3 * sizeof(uint8_t));

	(*TxData)[0] = 0x3D; //REGID for reading data from the servo and transmission to the CAN (READ)
	(*TxData)[1] = 0x4B; //(T_AIR) air temperature
	(*TxData)[2] = 0x0A; //For the repeating time 10ms the input in byte 2 is
}
