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
uint8 NOT_SELECTED = 1
uint8 CONTROL_GATE = 2
uint8 NETWORK_GATE = 3
uint8 VEHICLE_GATE = 4

# mode identifier
uint16 mode
uint16 mrm

bool complete
bool request
bool transition

bool vehicle_mode_selected
bool command_mode_selected
bool command_mode_enabled
bool command_mode_disabled
bool command_mode_transition

# main status
uint8 mode_state
uint8 gate_state
uint8 request_phase
uint8 current_phase

# conditions
bool mode_continuable
bool mode_available
bool transition_available
bool transition_completed

# detailed status
uint8 transition_state
uint8 vehicle_gate_state
uint8 network_gate_state
uint8 control_gate_state
uint8 source_state
uint8 source_group
