# This message represents the hazard alert around the ego vehicle, divided into sectors.

# Evaluation time, frame_id = base_link
std_msgs/Header header

# Origin of the sector bearings, the center of the ego footprint in base_link
geometry_msgs/Point origin

# Alert per sector
HazardSector[] sectors
