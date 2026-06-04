cmake_minimum_required(VERSION 3.5)
project(tier4_v2x_msgs)

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
  "msg/CommDestinationStatus.msg"
  "msg/CommSourceStatus.msg"
  "msg/CommStatus.msg"
  "msg/CommStatusArray.msg"
  "msg/InfrastructureCommand.msg"
  "msg/InfrastructureCommandArray.msg"
  "msg/KeyValue.msg"
  "msg/MovementEvent.msg"
  "msg/MovementState.msg"
  "msg/ParseFailReason.msg"
  "msg/RawPayloadLog.msg"
  "msg/Rc016v1.msg"
  "msg/Rc016v1CommonHeader.msg"
  "msg/Rc016v1CommonManagementInfo.msg"
  "msg/Rc016v1SystemStatus.msg"
  "msg/Rc016v1TargetAttributes.msg"
  "msg/Rc016v1TargetInfo.msg"
  "msg/Rc016v1TargetPosition.msg"
  "msg/Rc016v1TargetState.msg"
  "msg/Rc018.msg"
  "msg/Rc018CommonHeader.msg"
  "msg/Rc018RadioManagementNumber.msg"
  "msg/Rc018TransmissionTime.msg"
  "msg/Rc018ProvisionPointManagementNumber.msg"
  "msg/Rc018IntersectionIdentificationInfo.msg"
  "msg/Rc018LaneIdentificationInfo.msg"
  "msg/Rc018ServiceRouteSignalInfo.msg"
  "msg/Rc018SignalInfo.msg"
  "msg/Rc018VehicleLightDeviceInfo.msg"
  "msg/Rc018VehicleLightInfo.msg"
  "msg/ResultCode.msg"
  "msg/Rc013Rc016Td001CommonManagementInfo.msg"
  "msg/Rc013Rc016Td001TimeInformation.msg"
  "msg/Rc013Rc016Td001PositionInformation.msg"
  "msg/Rc013Rc016Td001VehicleStatusInformation.msg"
  "msg/Rc013Rc016Td001VehicleAttributeInformation.msg"
  "msg/Rc013Rc016Td001PositionOptional.msg"
  "msg/Rc013Rc016Td001GpsStatusOptional.msg"
  "msg/Rc013Rc016Td001PositionAcquisitionOptional.msg"
  "msg/Rc013Rc016Td001VehicleStatusOptional.msg"
  "msg/Rc013Rc016Td001IntersectionOptional.msg"
  "msg/Rc013Rc016Td001ExtensionOptional.msg"
  "msg/Rc013Rc016Td001FreeFieldManagementInfo.msg"
  "msg/Rc013Rc016Td001IndividualAppDataManagementInfo.msg"
  "msg/Rc013Rc016Td001FreeField.msg"
  "msg/Rc013Rc016Td001.msg"
  "msg/Spat.msg"
  "msg/VirtualTrafficLightState.msg"
  "msg/VirtualTrafficLightStateArray.msg"
  DEPENDENCIES
    builtin_interfaces
    std_msgs
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

ament_auto_package()
