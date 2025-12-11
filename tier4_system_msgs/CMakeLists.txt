cmake_minimum_required(VERSION 3.5)
project(tier4_system_msgs)

if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
  set(CMAKE_CXX_STANDARD_REQUIRED ON)
  set(CMAKE_CXX_EXTENSIONS OFF)
endif()

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake_auto REQUIRED)
ament_auto_find_build_dependencies()

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/AutowareState.msg"
  "msg/DiagGraphStruct.msg"
  "msg/DiagGraphStatus.msg"
  "msg/DiagNodeStruct.msg"
  "msg/DiagNodeStatus.msg"
  "msg/DiagLeafStruct.msg"
  "msg/DiagLeafStatus.msg"
  "msg/DiagLinkStruct.msg"
  "msg/DiagLinkStatus.msg"
  "msg/OperationModeAvailability.msg"
  "msg/EmergencyGoalsClearCommand.msg"
  "msg/EmergencyGoalsStamped.msg"
  "msg/EmergencyHoldingState.msg"
  "msg/EmergencyState.msg"
  "msg/EmergencyStateStamped.msg"
  "msg/HazardStatus.msg"
  "msg/HazardStatusStamped.msg"
  "msg/ServiceLog.msg"
  "msg/ModeChangeAvailable.msg"
  "msg/MrmBehaviorStatus.msg"
  "msg/CommandSourceStatus.msg"
  "msg/CommandModeAvailability.msg"
  "msg/CommandModeAvailabilityItem.msg"
  "msg/CommandModeRequest.msg"
  "msg/CommandModeRequestItem.msg"
  "msg/CommandModeStatus.msg"
  "msg/CommandModeStatusItem.msg"
  "srv/OperateMrm.srv"
  "srv/ChangeOperationMode.srv"
  "srv/ChangeAutowareControl.srv"
  "srv/ChangeTopicRelayControl.srv"
  "srv/ResetDiagGraph.srv"
  "srv/SelectCommandSource.srv"
  DEPENDENCIES
    autoware_common_msgs
    builtin_interfaces
    diagnostic_msgs
    geometry_msgs
    std_msgs
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

ament_auto_package()
