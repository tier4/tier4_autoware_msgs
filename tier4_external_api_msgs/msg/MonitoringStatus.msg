# Constatns for status. This is also used in ChangeMonitoringStatus service.
uint8 UNKNOWN = 0
uint8 TIMEOUT = 1
uint8 UNAVAILABLE = 2
uint8 AVAILABLE = 3
uint8 OPERATING = 4

# Message sending time. (required)
builtin_interfaces/Time stamp

# Current status. (required)
uint8 status

# Whether this operator is responsible for the OPERATING status. (required)
bool responsible
