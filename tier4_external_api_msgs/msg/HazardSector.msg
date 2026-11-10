# This message represents the hazard alert in a single sector

# constants for risk_level
uint8 NONE = 0  # no imminent risk
uint8 LOW = 1  # draw the driver's attention to a potential hazard in this sector
uint8 MID = 2  # warn the driver of the hazard
uint8 HIGH = 3  # prompt the driver to override to avoid the hazard

# constants for sources, a bit mask
# Bits set with risk_level = NONE mean that the condition of the source is detected but not judged to be an imminent risk
uint8 SOURCE_PROXIMITY = 1
uint8 SOURCE_COLLISION = 2
uint8 SOURCE_BOUNDARY_DEPARTURE = 4

# Angular range of this sector seen from origin [rad], in the base_link orientation, counterclockwise positive
# The sector spans counterclockwise from start_angle to end_angle
# The range of the angles is [-pi, pi)
float64 start_angle
float64 end_angle

# Highest urgency of the hazards in this sector
uint8 risk_level

# Sources of the hazard in this sector. Several bits can be set
uint8 sources
