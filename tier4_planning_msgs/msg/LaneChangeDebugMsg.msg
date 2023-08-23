string object_uuid

# Reason, if any, for the lane change process being unsafe.
string unsafe_reason

# if true, the current situation or condition is deemed safe.
bool is_safe

# if true, lane change is approved.
bool is_lane_change_approved

# if true, object is approaching from behind the ego vehicle.
bool is_object_coming_from_rear

# if true, object ends up in front of the ego vehicle.
bool object_final_position

# RSS distance
float64 stop_distance_from_front_obj

# gap between ego vehicle and the object
float64 vehicle_gap

# extended polygon lateral offset
float64 lateral_offset

# extended polygon longitudinal offset
float64 longitudinal_offset
