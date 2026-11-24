# constants for code
uint32 SUCCESS=1  # Operation completed successfully
uint32 IGNORED=2  # Request was ignored (e.g., already in requested state)
uint32 WARN=3     # Operation completed with warnings
uint32 ERROR=4    # Operation failed

# fields
# Response status code (use constants above)
uint32 code
# Human-readable status message
string message
