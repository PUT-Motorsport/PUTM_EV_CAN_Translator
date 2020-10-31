#include "can_messeges_func.h"
#include "inverter_register_codes.h"

uint16_t MAX_SPEED = 32767;

extern uint16_t engine_mode;
extern uint16_t inverter_igbt_temp_table[];
extern uint16_t inverter_engine_temp_table[];


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
		 * apps 4 => 0.8% speed
		 * apps 5 => 1.0% speed
		 * apps 10 => 2.0% speed
		 * apps 50 => 10.0% speed
		 */

	TxHeader->StdId = 0x201;
//	TxHeader->ExtId = 0x00;
	TxHeader->RTR = CAN_RTR_DATA;
	TxHeader->IDE = CAN_ID_STD;
	TxHeader->DLC = 3;
	TxHeader->TransmitGlobalTime = DISABLE;

	(*TxData) = malloc(3 * sizeof(uint8_t));

	//(*TxData)[0] = 0x31; //REGID for the speed command value (SPEED_SOLL)
	(*TxData)[0] = 0x90; //REGID for the torque command value (TORQUE_SETPOI)

	int16_t val = (MAX_SPEED / 500) * apps;
	(*TxData)[1] = (int8_t)(val & 0x00FF);
	(*TxData)[2] = (int8_t)(val >> 8);

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

	(*TxData)[0] = 0x3D; 			//REGID for reading data from the servo and transmission to the CAN (READ)
	(*TxData)[1] = SPEED_ACTUAL_; 	//(SPEED_ACTUAL_) Filter speed actual value
	(*TxData)[2] = 0x0A; 			//For the repeating time 10ms the input in byte 2 is
}

void CAN_request_power_command(CAN_TxHeaderTypeDef* TxHeader, uint8_t** TxData){
	TxHeader->StdId = 0x201;
	TxHeader->RTR = CAN_RTR_DATA;
	TxHeader->IDE = CAN_ID_STD;
	TxHeader->DLC = 3;
	TxHeader->TransmitGlobalTime = DISABLE;

	(*TxData) = malloc(3 * sizeof(uint8_t));

	(*TxData)[0] = 0x3D; 			//REGID for reading data from the servo and transmission to the CAN (READ)
	(*TxData)[1] = I_IST_FILT; 		//(I_IST_FILT) Filtered actual current
	(*TxData)[2] = 0x0A; 			//For the repeating time 10ms the input in byte 2 is
}

void CAN_request_igbt_temp_command(CAN_TxHeaderTypeDef* TxHeader, uint8_t** TxData){
	TxHeader->StdId = 0x201;
	TxHeader->RTR = CAN_RTR_DATA;
	TxHeader->IDE = CAN_ID_STD;
	TxHeader->DLC = 3;
	TxHeader->TransmitGlobalTime = DISABLE;

	(*TxData) = malloc(3 * sizeof(uint8_t));

	(*TxData)[0] = 0x3D; 			//REGID for reading data from the servo and transmission to the CAN (READ)
	(*TxData)[1] = T_IGBT; 			//(T_IGBT) power stage temperature
	(*TxData)[2] = 0x0A; 			//For the repeating time 10ms the input in byte 2 is
}

void CAN_request_motor_temp_command(CAN_TxHeaderTypeDef* TxHeader, uint8_t** TxData){
	TxHeader->StdId = 0x201;
	TxHeader->RTR = CAN_RTR_DATA;
	TxHeader->IDE = CAN_ID_STD;
	TxHeader->DLC = 3;
	TxHeader->TransmitGlobalTime = DISABLE;

	(*TxData) = malloc(3 * sizeof(uint8_t));

	(*TxData)[0] = 0x3D; 			//REGID for reading data from the servo and transmission to the CAN (READ)
	(*TxData)[1] = T_MOTOR; 		//(T_MOTOR) motor temperature
	(*TxData)[2] = 0x0A; 			//For the repeating time 10ms the input in byte 2 is
}

void CAN_request_air_temp_command(CAN_TxHeaderTypeDef* TxHeader, uint8_t** TxData){
	TxHeader->StdId = 0x201;
	TxHeader->RTR = CAN_RTR_DATA;
	TxHeader->IDE = CAN_ID_STD;
	TxHeader->DLC = 3;
	TxHeader->TransmitGlobalTime = DISABLE;

	(*TxData) = malloc(3 * sizeof(uint8_t));

	(*TxData)[0] = 0x3D; 			//REGID for reading data from the servo and transmission to the CAN (READ)
	(*TxData)[1] = T_AIR; 			//(T_AIR) air temperature
	(*TxData)[2] = 0x0A; 			//For the repeating time 10ms the input in byte 2 is
}

void CAN_request_status_command(CAN_TxHeaderTypeDef* TxHeader, uint8_t** TxData){
	TxHeader->StdId = 0x201;
	TxHeader->RTR = CAN_RTR_DATA;
	TxHeader->IDE = CAN_ID_STD;
	TxHeader->DLC = 3;
	TxHeader->TransmitGlobalTime = DISABLE;

	(*TxData) = malloc(3 * sizeof(uint8_t));

	(*TxData)[0] = 0x3D; 			//REGID for reading data from the servo and transmission to the CAN (READ)
	(*TxData)[1] = STATUS; 			//(STATUS) Status
	(*TxData)[2] = 0x0A; 			//For the repeating time 10ms the input in byte 2 is
}

void CAN_request_N_max_command(CAN_TxHeaderTypeDef* TxHeader, uint8_t** TxData){
	TxHeader->StdId = 0x201;
	TxHeader->RTR = CAN_RTR_DATA;
	TxHeader->IDE = CAN_ID_STD;
	TxHeader->DLC = 3;
	TxHeader->TransmitGlobalTime = DISABLE;

	(*TxData) = malloc(3 * sizeof(uint8_t));

	(*TxData)[0] = 0x3D; 			//REGID for reading data from the servo and transmission to the CAN (READ)
	(*TxData)[1] = MOTOR_RPMMAX; 	//(MOTOR_RPMMAX) Rated motor speed
	(*TxData)[2] = 0x0A; 			//For the repeating time 10ms the input in byte 2 is
}

void CAN_request_speed_limit_command(CAN_TxHeaderTypeDef* TxHeader, uint8_t** TxData){
	TxHeader->StdId = 0x201;
	TxHeader->RTR = CAN_RTR_DATA;
	TxHeader->IDE = CAN_ID_STD;
	TxHeader->DLC = 3;
	TxHeader->TransmitGlobalTime = DISABLE;

	(*TxData) = malloc(3 * sizeof(uint8_t));

	(*TxData)[0] = 0x3D; 			//REGID for reading data from the servo and transmission to the CAN (READ)
	(*TxData)[1] = SPEED_LIMIT; 	//(SPEED_LIMIT) Speed limit
	(*TxData)[2] = 0x0A; 			//For the repeating time 10ms the input in byte 2 is
}

void CAN_stop_speed_limit_command(CAN_TxHeaderTypeDef* TxHeader, uint8_t** TxData){
	TxHeader->StdId = 0x201;
	TxHeader->RTR = CAN_RTR_DATA;
	TxHeader->IDE = CAN_ID_STD;
	TxHeader->DLC = 3;
	TxHeader->TransmitGlobalTime = DISABLE;

	(*TxData) = malloc(3 * sizeof(uint8_t));

	(*TxData)[0] = 0x3D; //REGID for reading data from the servo and transmission to the CAN (READ)
	(*TxData)[1] = 0x34; //(MOTOR_RPMMAX) air temperature
	(*TxData)[2] = 0xFF; //For the repeating time 10ms the input in byte 2 is
}

void CAN_stop_N_max_command(CAN_TxHeaderTypeDef* TxHeader, uint8_t** TxData){
	TxHeader->StdId = 0x201;
	TxHeader->RTR = CAN_RTR_DATA;
	TxHeader->IDE = CAN_ID_STD;
	TxHeader->DLC = 3;
	TxHeader->TransmitGlobalTime = DISABLE;

	(*TxData) = malloc(3 * sizeof(uint8_t));

	(*TxData)[0] = 0x3D; //REGID for reading data from the servo and transmission to the CAN (READ)
	(*TxData)[1] = 0x59; //(MOTOR_RPMMAX) air temperature
	(*TxData)[2] = 0xFF; //For the repeating time 10ms the input in byte 2 is
}

uint8_t calculate_IGBT_temperature(uint16_t val){
	uint8_t res = 0xFF;
	uint8_t i = 0;

	while(val >= inverter_igbt_temp_table[i] && i < 20){
		i++;
	}

	if(i == 20){
		return 0xFF;
	}

	float x = (float)(inverter_igbt_temp_table[i] - inverter_igbt_temp_table[i - 1]);
	float y = (float)(val - inverter_igbt_temp_table[i - 1]);

	res = (uint8_t)(((i - 1) * 5.0) + (y * 5.0 / x));
	return res;
}

uint8_t calculate_engine_temperature(uint16_t val){		//TODO always returns 0
	uint8_t res = 0xFF;
	uint8_t i = 0;

	while( val >= inverter_engine_temp_table[i] && i < 14){
		i++;
	}

	if (i == 14){
		return 0xFF;
	}

	float x = (float)(inverter_engine_temp_table[i] - inverter_engine_temp_table[i - 1]);
	float y = (float)(val - inverter_engine_temp_table[i - 1]);
	res = (uint8_t)(((i - 1) * 10.0) + (y * 10.0 / x));

	return res;
}

















