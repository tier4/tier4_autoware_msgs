# This message is now deprecated.
# Please use autoware_internal_debug_msgs/ProcessingTimeNode.msg instead.
# https://github.com/autowarefoundation/autoware_internal_msgs/tree/main/autoware_internal_debug_msgs/msg

# Unique ID of the node
int32 id
# Name of the node
string name
# Processing time of the node
float64 processing_time
# ID of the parent node, 0 if no parent
int32 parent_id
# Comment
string comment
