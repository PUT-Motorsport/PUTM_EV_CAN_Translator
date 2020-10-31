/*
 * inverter_register_codes.h
 *
 *  Created on: Oct 25, 2020
 *      Author: kwitnoncy
 */

#ifndef INC_INVERTER_REGISTER_CODES_H_
#define INC_INVERTER_REGISTER_CODES_H_

#define STATUS			0x40

#define SPEED_FILTER_ 	0x5E	// tested
#define SPEED_ACTUAL 	0x30	// tested
#define SPEED_ACTUAL_	0xA8	// tested works
#define MOTOR_RPMMAX	0x59	// tested works
#define SPEED_LIMIT		0x34	// tested works

#define SPEED_SOLL		0x31	// tested works
#define TORQUE_SETPOI	0x90	// tested works

#define I_IST_FILT		0x5F
#define T_IGBT			0x4A	// tested works
#define T_MOTOR			0x49	// tested works
#define T_AIR			0x4B	// tested works

#endif /* INC_INVERTER_REGISTER_CODES_H_ */
