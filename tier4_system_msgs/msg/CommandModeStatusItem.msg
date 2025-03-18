uint8 UNDEFINED = 0

# for main state
uint8 DISABLED = 1
uint8 DISABLING = 2
uint8 ENABLED = 3
uint8 STANDBY = 4
uint8 INTERRUPTED = 5
uint8 ABORTED = 6
uint8 WAIT_COMMAND_MODE_READY = 101
uint8 WAIT_SOURCE_READY = 102
uint8 WAIT_SOURCE_EXCLUSIVE = 102
uint8 WAIT_SOURCE_SELECTED = 103
uint8 WAIT_VEHICLE_READY = 104
uint8 WAIT_VEHICLE_CONTROL = 105
uint8 WAIT_COMMAND_MODE_STABLE = 106

# for mrm state
uint8 NONE = 1
uint8 OPERATING = 2
uint8 SUCCEEDED = 3
uint8 FAILED = 4

# variables
string mode
uint8 state
uint8 mrm

# TODO: remove
bool activation
bool transition
