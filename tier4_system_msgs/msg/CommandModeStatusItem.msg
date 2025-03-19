uint8 UNDEFINED = 0

# for main state
uint8 DISABLED = 1   # Also used for target.
uint8 STANDBY = 2    # Also used for target.
uint8 ENABLED = 3    # Also used for target.
uint8 HANDOVER = 4   # Also used for target.
uint8 CLEANUP = 5
uint8 ABORTED = 6
uint8 WAIT_COMMAND_MODE_READY = 101
uint8 WAIT_SOURCE_READY = 102
uint8 WAIT_SOURCE_EXCLUSIVE = 103
uint8 WAIT_SOURCE_SELECTED = 104
uint8 WAIT_CONTROL_READY = 105
uint8 WAIT_CONTROL_SELECTED = 106
uint8 WAIT_COMMAND_MODE_STABLE = 107

# for mrm state
uint8 NONE = 1
uint8 OPERATING = 2
uint8 SUCCEEDED = 3
uint8 FAILED = 4

# variables
string mode
uint8 state
uint8 target
uint8 mrm
bool available
bool continuable
bool acceptable
bool controllable
