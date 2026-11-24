# constants for status
uint8 OK=0              # CPU load is normal
uint8 HIGH_LOAD=1       # CPU load is high
uint8 VERY_HIGH_LOAD=2  # CPU load is very high
uint8 STALE=3           # CPU status data is stale/outdated

# fields
# CPU load status (use constants above)
uint8 status
# Total CPU usage [%]. Range: 0.0 to 100.0
float32 total
# User space CPU usage [%]. Range: 0.0 to 100.0
float32 usr
# Nice priority CPU usage [%]. Range: 0.0 to 100.0
float32 nice
# Kernel space CPU usage [%]. Range: 0.0 to 100.0
float32 sys
# Idle CPU [%]. Range: 0.0 to 100.0
float32 idle
