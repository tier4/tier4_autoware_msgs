# constants
uint8 THERMAL_THROTTLING_OFF=0
uint8 THERMAL_THROTTLING_ON=1

#fields
string name
float32 usage              # [%]
uint32 clock               # [MHz]
uint32 temperature         # [degC]
uint8  thermal_throttling  # 0(OFF) or 1(ON)
