# Object pose with covariance
geometry_msgs/PoseWithCovariance pose_covariance

# true: orientation estimation is reliable, false: orientation may be uncertain
bool orientation_reliable

# Object velocity with covariance
geometry_msgs/TwistWithCovariance twist_covariance

# true: velocity estimation is reliable, false: velocity may be uncertain
bool twist_reliable

# Object acceleration with covariance
geometry_msgs/AccelWithCovariance acceleration_covariance

# true: acceleration estimation is reliable, false: acceleration may be uncertain
bool acceleration_reliable

# Predicted future paths of the object
PredictedPath[] predicted_paths
