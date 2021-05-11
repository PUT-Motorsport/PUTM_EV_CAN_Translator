#include <stdlib.h>
#include "stm32f1xx_hal.h"


void CAN_set_speed_command(CAN_TxHeaderTypeDef *TxHeader, uint8_t *TxData, uint16_t apps);
void CAN_stop_speed_command(CAN_TxHeaderTypeDef* TxHeader, uint8_t* TxData);
void CAN_disable_controller_command(CAN_TxHeaderTypeDef* TxHeader, uint8_t* TxData);
void CAN_stop_speed_limit_command(CAN_TxHeaderTypeDef* TxHeader, uint8_t* TxData);
void CAN_request_speed_command(CAN_TxHeaderTypeDef*, uint8_t**);
void CAN_request_igbt_temp_command(CAN_TxHeaderTypeDef*, uint8_t**);
void CAN_request_motor_temp_command(CAN_TxHeaderTypeDef*, uint8_t**);
void CAN_request_N_max_command(CAN_TxHeaderTypeDef*, uint8_t**);
void CAN_request_N_max_command(CAN_TxHeaderTypeDef*, uint8_t**);
void CAN_request_speed_limit_command(CAN_TxHeaderTypeDef*, uint8_t**);

uint8_t calculate_IGBT_temperature(uint16_t);
uint8_t calculate_engine_temperature(uint16_t);
