# node state
uint8 INITIALIZING = 0
uint8 ELECTABLE = 1
uint8 WAIT_FOR_AUTOWARE = 2
uint8 IN_ELECTION = 3
uint8 ELECTION_COMPLETED = 4
uint8 ELECTION_UNCLOSED = 5
uint8 PATH_NOT_FOUND = 6
uint8 SELF_INTERRUPTION = 7

# node id
uint8 MAIN_ECU = 0
uint8 SUB_ECU = 1
uint8 MAIN_VCU = 2
uint8 SUB_VCU = 3

# path_info
uint8 UNKNOWN = 0
uint8 MAIN_ECU_TO_MAIN_VCU = 5
uint8 MAIN_ECU_TO_SUB_VCU = 9
uint8 SUB_ECU_TO_MAIN_VCU = 6
uint8 SUB_ECU_TO_SUB_VCU = 10

builtin_interfaces/Time stamp
uint8 node_state
uint8 node_id
uint8 leader_id
uint8 path_info
bool main_ecu_to_main_ecu_connected
bool main_ecu_to_sub_ecu_connected
bool main_ecu_to_main_vcu_connected
bool main_ecu_to_sub_vcu_connected
bool sub_ecu_to_main_ecu_connected
bool sub_ecu_to_sub_ecu_connected
bool sub_ecu_to_main_vcu_connected
bool sub_ecu_to_sub_vcu_connected
bool main_vcu_to_main_ecu_connected
bool main_vcu_to_sub_ecu_connected
bool main_vcu_to_main_vcu_connected
bool main_vcu_to_sub_vcu_connected
bool sub_vcu_to_main_ecu_connected
bool sub_vcu_to_sub_ecu_connected
bool sub_vcu_to_main_vcu_connected
bool sub_vcu_to_sub_vcu_connected
