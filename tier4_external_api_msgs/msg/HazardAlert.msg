# This message represents the hazard alert around the ego vehicle, divided into sectors.

# Evaluation time, frame_id = base_link
std_msgs/Header header

# Origin of the sector angles, the center of the ego footprint expressed in base_link
geometry_msgs/Point origin

# Alert per sector
# A direction not covered by any sector, or an empty array, means that the direction is not evaluated, not that it is safe
HazardSector[] sectors
