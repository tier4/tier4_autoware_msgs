# constants for mrm state
uint8 UNDEFINED = 0
uint8 NORMAL = 1
uint8 OPERATING = 2
uint8 SUCCEEDED = 3
uint8 FAILED = 4

uint16 mode
uint16 mrm
bool transition
bool transition_completed
bool request
bool vehicle_selected
bool command_selected
bool command_exclusive
bool command_enabled
bool command_disabled
