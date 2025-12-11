# constants for common use
uint16 UNKNOWN = 0

# constants for behavior_type
uint16 NONE = 1
uint16 SLOW_DOWN = 2
uint16 STOP = 3
uint16 SHIFT_LEFT = 4
uint16 SHIFT_RIGHT = 5
uint16 TURN_LEFT = 6
uint16 TURN_RIGHT = 7

# constants for behavior_name
string ADAPTIVE_CRUISE = "adaptive_cruise"
string AVOIDANCE = "avoidance"
string CROSSWALK = "crosswalk"
string GOAL_PLANNER = "goal_planner"
string INTERSECTION = "intersection"
string LANE_CHANGE = "lane_change"
string MERGE = "merge"
string NO_DRIVABLE_LANE = "no_drivable_lane"
string NO_STOPPING_AREA = "no_stopping_area"
string REAR_CHECK = "rear_check"
string ROUTE_OBSTACLE = "route_obstacle"
string RUN_OUT = "run_out"
string SIDEWALK = "sidewalk"
string START_PLANNER = "start_planner"
string STOP_SIGN = "stop_sign"
string SURROUNDING_OBSTACLE = "surrounding_obstacle"
string TRAFFIC_SIGNAL = "traffic_signal"
string USER_DEFINED_DETECTION_AREA = "user_defined_detection_area"
string VIRTUAL_TRAFFIC_LIGHT = "virtual_traffic_light"

# behavior variables
std_msgs/Header header  # for transform control_points
uint16 behavior_type
string behavior_name
string behavior_detail
tier4_external_api_msgs/PlanningFactorControlPoint[] control_points

# decision variables
bool is_safe
string decision_detail
tier4_external_api_msgs/DecisionFactorObject[] object_factors
tier4_external_api_msgs/DecisionFactorPointCloud[] point_cloud_factors
