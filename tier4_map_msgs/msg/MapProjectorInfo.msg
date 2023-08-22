# define map_projector_type
# UTM, MGRS, local
string type

# Used for MGRS map
string mgrs_grid

# Used for some map projection types
# altitude may not be in ellipsoid height
geographic_msgs/GeoPoint map_origin

# Height system
# WGS84, EGM96, EGM2008, etc
# If WGS84 is selected, the system will assume that the altitude is in ellipsoid height
# If anything else is selected, the system will assume that the altitude is in geoid height
string vertical_datum
