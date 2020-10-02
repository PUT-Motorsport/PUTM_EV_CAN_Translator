#include "can_messeges_func.h"


uint16_t MAX_SPEED = 32767;

extern uint16_t engine_mode;


void CAN_dummy_command(CAN_TxHeaderTypeDef* TxHeader, uint8_t** TxData){
	TxHeader->StdId = 0x321;
//	TxHeader->ExtId = 0x00;
	TxHeader->RTR = CAN_RTR_DATA;
	TxHeader->IDE = CAN_ID_STD;
	TxHeader->DLC = 8;
	TxHeader->TransmitGlobalTime = DISABLE;

	(*TxData) = malloc(8 * sizeof(uint8_t));

	(*TxData)[0] = 1;
	(*TxData)[1] = 2;
	(*TxData)[2] = 3;
	(*TxData)[3] = 4;
	(*TxData)[4] = 5;
	(*TxData)[5] = 6;
	(*TxData)[6] = 7;
	(*TxData)[7] = 8;
}

void CAN_set_speed_command(CAN_TxHeaderTypeDef* TxHeader, uint8_t** TxData, uint16_t apps){
	/*
		 * apps 1 => 0.5% speed
		 * apps 2 => 1.0% speed
		 * apps 3 => 1.5% speed
		 *
		 */

	TxHeader->StdId = 0x201;
//	TxHeader->ExtId = 0x00;
	TxHeader->RTR = CAN_RTR_DATA;
	TxHeader->IDE = CAN_ID_STD;
	TxHeader->DLC = 3;
	TxHeader->TransmitGlobalTime = DISABLE;

	(*TxData) = malloc(3 * sizeof(uint8_t));

	//REGID for the speed command value (SPEED_SOLL)
	(*TxData)[0] = 0x31;

	uint16_t val = (MAX_SPEED / 200) * apps;
//	uint16_t val =

	//Value Range for 10% speed num.
	//Head 3277 == 0x0CCD
	(*TxData)[1] = (uint8_t)(val & 0x00FF);
	(*TxData)[2] = (uint8_t)(val >> 8);

}

void CAN_stop_speed_command(CAN_TxHeaderTypeDef* TxHeader, uint8_t** TxData){
	TxHeader->StdId = 0x201;
//	TxHeader->ExtId = 0x00;
	TxHeader->RTR = CAN_RTR_DATA;
	TxHeader->IDE = CAN_ID_STD;
	TxHeader->DLC = 3;
	TxHeader->TransmitGlobalTime = DISABLE;

	(*TxData) = malloc(3 * sizeof(uint8_t));

	//REGID for the speed command value (SPEED_SOLL)
	(*TxData)[0] = 0x31;

	//Value Range for 10% speed num.
	//Head 3277 == 0x0CCD
	(*TxData)[1] = 0x00;
	(*TxData)[2] = 0x00;

}

void CAN_ask_speed_command(CAN_TxHeaderTypeDef* TxHeader, uint8_t** TxData){
	TxHeader->StdId = 0x201;
//	TxHeader->ExtId = 0x00;
	TxHeader->RTR = CAN_RTR_DATA;
	TxHeader->IDE = CAN_ID_STD;
	TxHeader->DLC = 3;
	TxHeader->TransmitGlobalTime = DISABLE;

	(*TxData) = malloc(3 * sizeof(uint8_t));

	//REGID for reading data from the servo and transmission to the CAN (READ)
	(*TxData)[0] = 0x3D;

	//REGID for actual speed value (SPEED_IST)
	(*TxData)[1] = 0x30;

	//For the repeating time 100ms the input in byte 2 is
	(*TxData)[2] = 0x64;
}
