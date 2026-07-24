# Constatns for mode. This is also used in EnableDriving service.
uint8 UNKNOWN = 0
uint8 STOP = 1
uint8 LEVEL2 = 2
uint8 LEVEL4 = 3

# Message sending time. (required)
builtin_interfaces/Time stamp

# Current mode. (required)
uint8 mode

# Available flag for level 2 autonomous driving. (required)
bool is_level2_available

# Available flag for level 4 autonomous driving. (required)
bool is_level4_available
