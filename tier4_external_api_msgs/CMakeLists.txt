cmake_minimum_required(VERSION 3.5)
project(tier4_external_api_msgs)

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
  msg/AirConditionStatus.msg
  msg/CalibrationStatus.msg
  msg/CalibrationStatusArray.msg
  msg/CpuStatus.msg
  msg/CpuTemperature.msg
  msg/CpuUsage.msg
  msg/DecisionFactorObject.msg
  msg/DecisionFactorPointCloud.msg
  msg/DrivingStatus.msg
  msg/ElectionStatus.msg
  msg/Emergency.msg
  msg/EngageStatus.msg
  msg/FailureNotification.msg
  msg/FailureNotificationArray.msg
  msg/GpuStatus.msg
  msg/GpuUnitStatus.msg
  msg/HazardStatus.msg
  msg/HazardStatusStamped.msg
  msg/HddDeviceStatus.msg
  msg/HddPartitionStatus.msg
  msg/HddStatus.msg
  msg/LocalizationScore.msg
  msg/LocalizationScoreArray.msg
  msg/MapHash.msg
  msg/MetadataPackages.msg
  msg/MemoryStatus.msg
  msg/MonitoringHeartbeat.msg
  msg/MonitoringStatus.msg
  msg/NetworkInterfaceStatus.msg
  msg/NetworkStatus.msg
  msg/PlanningFactor.msg
  msg/PlanningFactorArray.msg
  msg/PlanningFactorControlPoint.msg
  msg/RosbagCopyStatus.msg
  msg/RosbagLoggingMode.msg
  msg/RosbagRecordStatus.msg
  msg/RosbagRollbackStatus.msg
  msg/ResponseStatus.msg
  msg/RouteDistance.msg
  msg/SwitchStatus.msg
  msg/SystemMonitor.msg
  msg/TextFile.msg
  msg/TrafficLightElement.msg
  msg/TrafficLightGroup.msg
  msg/VelocityLimit.msg
  srv/ChangeMonitoringStatus.srv
  srv/GetAccelBrakeMapCalibrationData.srv
  srv/EnableDriving.srv
  srv/Engage.srv
  srv/GetMetadataPackages.srv
  srv/GetRosbagCopyList.srv
  srv/GetTextFile.srv
  srv/InitializePose.srv
  srv/ResetRedundancySwitcher.srv
  srv/ResetMrm.srv
  srv/SetAirCondition.srv
  srv/SetEmergency.srv
  srv/SetPreferredLane.srv
  srv/SetRosbagLoggingMode.srv
  srv/SetRosbagRecord.srv
  srv/SetRosbagRollback.srv
  srv/SetSwitch.srv
  srv/SetVelocityLimit.srv
  srv/StartRosbagCopy.srv
  DEPENDENCIES
    builtin_interfaces
    autoware_common_msgs
    diagnostic_msgs
    geometry_msgs
    unique_identifier_msgs
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

ament_auto_package()
