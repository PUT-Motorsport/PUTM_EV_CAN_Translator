//
// Created by kwitnoncy on 16.05.2021.
//

#ifndef PUTM_EV_CAN_TRANSLATOR_F105_COMMON_H
#define PUTM_EV_CAN_TRANSLATOR_F105_COMMON_H

#define MAX_TIMEOUT_TICKS   100

#define TS_MESS_ID          0x00
#define TS_MESS_BYTE        0x00
#define TS_MESS_BIT         0x00

#define APPS_MESS_ID        0x0A

#define BMS_HV_MESS_ID      0x0C
#define BMS_HV_VALUE        0x00    // Value that is correct

#define INVERTER_MESS_ID    0x0E
#define INVERTER_MESS_DLC   0x08

#define INVERTER_ERROR_ID   0x07
#define INVERTER_ERROR_DLC  0x02
#define INVERTER_ERROR_DATA 0x0A

#define TORQUE_DIVIDER      10
#define TORQUE_MULTIPLIER   10

#endif //PUTM_EV_CAN_TRANSLATOR_F105_COMMON_H
