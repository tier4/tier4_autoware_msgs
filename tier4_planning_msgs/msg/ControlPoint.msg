# Pose of the control point
geometry_msgs/Pose pose

# Velocity at this control point [m/s]
float32 velocity

# Lateral shift length from the reference path [m]
# Positive value represents left shift, negative value represents right shift
float32 shift_length

# Distance from the ego vehicle to this control point [m]
float32 distance
