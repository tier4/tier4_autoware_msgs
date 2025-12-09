builtin_interfaces/Time stamp

# Request unique id
unique_identifier_msgs/UUID uuid

# Indicate module type which makes this cooperate request.
tier4_rtc_msgs/Module module

# Indicate whether the system judges it's safe condition to execute or not.
bool safe

#Indicate whether there is request to cooperate from the system
bool requested false

# Indicate RTC approval status
tier4_rtc_msgs/Command command_status

# Current execution state
tier4_rtc_msgs/State state

# RTC execution mode
# TRUE: Auto mode (it can execute without human operator's approval.)
# FALSE: Manual mode (it needs human operator's approval to execute.)
bool auto_mode

# Indicate whether the creep is supported
bool creep_supported

# Indicate whether the creep is triggered
bool creep_triggered

# Section which will be modified when this cooperate request is approved.
float32 start_distance
float32 finish_distance
