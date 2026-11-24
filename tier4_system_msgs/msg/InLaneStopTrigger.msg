builtin_interfaces/Time stamp

uint8 PROFILE_UNKNOWN = 0
uint8 PROFILE_MODERATE = 1
uint8 PROFILE_EMERGENCY = 2

bool trigger    # true: request in-lane stop with `profile`. false: cancel.
uint8 profile   # deceleration profile; constraints are owned by the planner
