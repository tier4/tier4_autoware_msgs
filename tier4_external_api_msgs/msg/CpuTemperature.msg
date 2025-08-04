# constants
uint8 THERMAL_THROTTLING_OFF=0
uint8 THERMAL_THROTTLING_ON=1

#fields
builtin_interfaces/Time stamp
string hostname
float32 temperature        # [degC]
uint8  thermal_throttling  # 0(OFF) or 1(ON)
