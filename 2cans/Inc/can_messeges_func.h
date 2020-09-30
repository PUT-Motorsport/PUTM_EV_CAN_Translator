#include <stdlib.h>
#include "stm32f4xx_hal.h"

void CAN_dummy_command(CAN_TxHeaderTypeDef*, uint8_t**);
void CAN_set_speed_command(CAN_TxHeaderTypeDef*, uint8_t**, uint16_t);
void CAN_stop_speed_command(CAN_TxHeaderTypeDef*, uint8_t**);

void CAN_ask_speed_command(CAN_TxHeaderTypeDef*, uint8_t**);

