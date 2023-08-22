# define map_projector_type
# MGRS, LocalCartesianUTM, local, etc
# Also refer to https://github.com/autowarefoundation/autoware.universe/tree/main/map/map_projection_loader/README.md
string type

# Used for MGRS map
string mgrs_grid

# Used for UTM map
geographic_msgs/GeoPoint map_origin
