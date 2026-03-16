# Linear speed per wheel derived from wheel_rotational_speed * wheel_circumference.
# This value is not ground-truth vehicle speed and may differ from actual vehicle motion during slip.
builtin_interfaces/Time stamp

# Unit: [m/s], Value: Always Positive
float32 front_left_wheel_speed

# Unit: [m/s], Value: Always Positive
float32 front_right_wheel_speed

# Unit: [m/s], Value: Always Positive
float32 rear_left_wheel_speed

# Unit: [m/s], Value: Always Positive
float32 rear_right_wheel_speed
