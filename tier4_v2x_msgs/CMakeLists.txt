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
  "msg/parser/Rc016Updated.msg"
  "msg/parser/Rc016UpdatedCommonManagementInfo.msg"
  "msg/parser/Rc016UpdatedIndividualExpansionDataManagementInfo.msg"
  "msg/parser/Rc016UpdatedIndividualExpansionManagementInfo.msg"
  "msg/parser/Rc016UpdatedSensorAttributeInfo.msg"
  "msg/parser/Rc016UpdatedSensorRelatedInfo.msg"
  "msg/parser/Rc016UpdatedStoppedVehicleInfo.msg"
  "msg/parser/Rc016UpdatedTargetAttributes.msg"
  "msg/parser/Rc016UpdatedTargetInfo.msg"
  "msg/parser/Rc016UpdatedTrackingStatus.msg"
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
  "msg/parser/Rc019BranchInfo.msg"
  "msg/parser/Rc019BranchRouteAttributeInfo.msg"
  "msg/parser/Rc019DivergingInfo.msg"
  "msg/parser/Rc019DivergingRouteAttributeInfo.msg"
  "msg/parser/Rc019DownstreamIntersectionAttributeInfo.msg"
  "msg/parser/Rc019ExistenceTime.msg"
  "msg/parser/Rc019InflowRouteInfo.msg"
  "msg/parser/Rc019MergingInfo.msg"
  "msg/parser/Rc019Msg257.msg"
  "msg/parser/Rc019Msg258.msg"
  "msg/parser/Rc019NodeAttributeInfo.msg"
  "msg/parser/Rc019ObjectExtensionDataInfo.msg"
  "msg/parser/Rc019ObjectExtensionDataManagementInfo.msg"
  "msg/parser/Rc019ObjectInfo.msg"
  "msg/parser/Rc019ObjectInfoOptionAccuracyInfo.msg"
  "msg/parser/Rc019ObjectInfoOptionDetectionHistoryInfo.msg"
  "msg/parser/Rc019ObjectInfoOptionExtensionInfo.msg"
  "msg/parser/Rc019ObjectInfoOptionStateExtensionInfo.msg"
  "msg/parser/Rc019ObjectInfoOptionStateTransferInfo.msg"
  "msg/parser/Rc019ObjectInfoOptionUsageTypeInfo.msg"
  "msg/parser/Rc019ObjectInfoOptionV2xGnssInfo.msg"
  "msg/parser/Rc019ObjectInformation.msg"
  "msg/parser/Rc019ObjectManagementInfo.msg"
  "msg/parser/Rc019ObjectSize.msg"
  "msg/parser/Rc019ObjectState.msg"
  "msg/parser/Rc019ObjectTypeInfo.msg"
  "msg/parser/Rc019OutflowRouteInfo.msg"
  "msg/parser/Rc019Position.msg"
  "msg/parser/Rc019RoadsideHeader.msg"
  "msg/parser/Rc019RoadsideUnitAttribute.msg"
  "msg/parser/Rc019RoadsideUnitAttributeOptionExtensionInfo.msg"
  "msg/parser/Rc019RoadsideUnitAttributeOptionSensorInfo.msg"
  "msg/parser/Rc019RoadsideUnitAttributeOptionServicePointInfo.msg"
  "msg/parser/Rc019RoadsideUnitAttributeOptionServicePointUseCaseExtensionInfo.msg"
  "msg/parser/Rc019RoadsideUnitAttributeOptionUseCaseInfo.msg"
  "msg/parser/Rc019RouteIdentificationInfo.msg"
  "msg/parser/Rc019RouteUseCaseDistanceInfo.msg"
  "msg/parser/Rc019RouteUseCaseInfo.msg"
  "msg/parser/Rc019SensorAttributeInfo.msg"
  "msg/parser/Rc019SensorDetectionRangeInfo.msg"
  "msg/parser/Rc019TargetPointInfo.msg"
  "msg/parser/Rc019TargetPointNodeCoordinate.msg"
  "msg/parser/Rc019TransmissionTime.msg"
  "msg/parser/Rc019UseCaseDistanceInfo.msg"
  "msg/parser/Rc019UseCaseTypeInfo.msg"
  "msg/parser/Rc019VertexPosition.msg"
  "msg/parser/Spat.msg"
  "msg/parser/TrafficLampInfo.msg"
  "msg/parser/TrafficLightInfo.msg"
  DEPENDENCIES
    autoware_perception_msgs
    builtin_interfaces
    std_msgs
    unique_identifier_msgs
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

ament_auto_package()
