# This message represents the hazard alert in a single sector.

# constants for risk_level
uint8 NONE = 0
uint8 LOW = 1
uint8 MID = 2
uint8 HIGH = 3

# constants for sources, a bit mask
uint8 SOURCE_PROXIMITY = 1
uint8 SOURCE_COLLISION = 2
uint8 SOURCE_BOUNDARY_DEPARTURE = 4

# Bearing range of this sector seen from origin [rad], in the base_link orientation, counterclockwise positive.
# The sector spans counterclockwise from start_angle to end_angle
float64 start_angle
float64 end_angle

# Highest urgency of the collision and the boundary departure in this sector
uint8 risk_level

# Sources of the hazard in this sector. Several bits can be set
uint8 sources
