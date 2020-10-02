#include <stdlib.h>
#include "stm32f4xx_hal.h"

void CAN_disable_controller_command(CAN_TxHeaderTypeDef* TxHeader, uint8_t** TxData);
void CAN_dummy_command(CAN_TxHeaderTypeDef*, uint8_t**);
void CAN_set_speed_command(CAN_TxHeaderTypeDef*, uint8_t**, uint16_t);
void CAN_stop_speed_command(CAN_TxHeaderTypeDef*, uint8_t**);

void CAN_request_speed_command(CAN_TxHeaderTypeDef*, uint8_t**);
void CAN_request_power_command(CAN_TxHeaderTypeDef*, uint8_t**);
void CAN_request_igbt_temp_command(CAN_TxHeaderTypeDef*, uint8_t**);
void CAN_request_motor_temp_command(CAN_TxHeaderTypeDef*, uint8_t**);
void CAN_request_air_temp_command(CAN_TxHeaderTypeDef*, uint8_t**);
