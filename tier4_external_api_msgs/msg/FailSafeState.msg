# constants
uint8 NORMAL = 1              # System is operating normally
uint8 OVERRIDE_REQUESTING = 2 # System is requesting driver override
uint8 MRM_OPERATING = 3       # Minimal Risk Maneuver is in progress
uint8 MRM_SUCCEEDED = 4       # Minimal Risk Maneuver completed successfully
uint8 MRM_FAILED = 5          # Minimal Risk Maneuver failed

# fields
uint8 state
