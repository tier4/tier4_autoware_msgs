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
  "msg/RawPayloadLog.msg"
  "msg/ResultCode.msg"
  "msg/VirtualTrafficLightState.msg"
  "msg/VirtualTrafficLightStateArray.msg"
  "msg/parser/MovementEvent.msg"
  "msg/parser/MovementState.msg"
  "msg/parser/ParseFailReason.msg"
  "msg/parser/Rc013Rc016Td001.msg"
  "msg/parser/Rc013Rc016Td001CommonManagementInfo.msg"
  "msg/parser/Rc013Rc016Td001ExtensionOptional.msg"
  "msg/parser/Rc013Rc016Td001FreeField.msg"
  "msg/parser/Rc013Rc016Td001FreeFieldManagementInfo.msg"
  "msg/parser/Rc013Rc016Td001GpsStatusOptional.msg"
  "msg/parser/Rc013Rc016Td001IndividualAppDataManagementInfo.msg"
  "msg/parser/Rc013Rc016Td001IntersectionOptional.msg"
  "msg/parser/Rc013Rc016Td001PositionAcquisitionOptional.msg"
  "msg/parser/Rc013Rc016Td001PositionInformation.msg"
  "msg/parser/Rc013Rc016Td001PositionOptional.msg"
  "msg/parser/Rc013Rc016Td001TimeInformation.msg"
  "msg/parser/Rc013Rc016Td001VehicleAttributeInformation.msg"
  "msg/parser/Rc013Rc016Td001VehicleStatusInformation.msg"
  "msg/parser/Rc013Rc016Td001VehicleStatusOptional.msg"
  "msg/parser/Rc016v1.msg"
  "msg/parser/Rc016v1CommonHeader.msg"
  "msg/parser/Rc016v1CommonManagementInfo.msg"
  "msg/parser/Rc016v1SystemStatus.msg"
  "msg/parser/Rc016v1TargetAttributes.msg"
  "msg/parser/Rc016v1TargetInfo.msg"
  "msg/parser/Rc016v1TargetPosition.msg"
  "msg/parser/Rc016v1TargetState.msg"
  "msg/parser/Rc018.msg"
  "msg/parser/Rc018CommonHeader.msg"
  "msg/parser/Rc018IntersectionIdentificationInfo.msg"
  "msg/parser/Rc018LaneIdentificationInfo.msg"
  "msg/parser/Rc018ProvisionPointManagementNumber.msg"
  "msg/parser/Rc018RadioManagementNumber.msg"
  "msg/parser/Rc018ServiceRouteSignalInfo.msg"
  "msg/parser/Rc018SignalInfo.msg"
  "msg/parser/Rc018TransmissionTime.msg"
  "msg/parser/Rc018VehicleLightDeviceInfo.msg"
  "msg/parser/Rc018VehicleLightInfo.msg"
  "msg/parser/Spat.msg"
  DEPENDENCIES
    builtin_interfaces
    std_msgs
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

ament_auto_package()
