uint8 UNDEFINED = 0

# for state
uint8 DISABLED = 1
uint8 ENABLED = 2
uint8 TRANSITION = 3

# for mrm
uint8 NORMAL = 1
uint8 OPERATING = 2
uint8 SUCCEEDED = 3
uint8 FAILED = 4

# for phase
uint8 COMMAND_MODE = 1
uint8 VEHICLE_GATE = 2
uint8 NETWORK_GATE = 3
uint8 CONTROL_GATE = 4
uint8 NO_REQUEST = 9

# main status
string mode
uint8 state
uint8 mrm
uint8 request_phase
uint8 current_phase

# conditions
bool mode_continuable
bool mode_available
bool transition_available
bool transition_completed

# detailed status
uint8 command_mode_state
uint8 vehicle_gate_state
uint8 network_gate_state
uint8 control_gate_state
uint8 source_state
uint8 source_group
