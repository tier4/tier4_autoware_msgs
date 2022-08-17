cmake_minimum_required(VERSION 3.14)
project(autoware_ad_api_msgs)

find_package(autoware_cmake REQUIRED)
autoware_package()

rosidl_generate_interfaces(${PROJECT_NAME}
  common/msg/ResponseStatus.msg
  interface/srv/InterfaceVersion.srv
  fail_safe/msg/MrmState.msg
  localization/msg/LocalizationInitializationState.msg
  localization/srv/InitializeLocalization.srv
  operation_mode/srv/ChangeOperationMode.srv
  operation_mode/msg/OperationMode.msg
  operation_mode/msg/OperationModeState.msg
  routing/msg/RouteState.msg
  routing/msg/Route.msg
  routing/msg/RouteBody.msg
  routing/msg/RoutePrimitive.msg
  routing/msg/RouteSegment.msg
  routing/srv/ClearRoute.srv
  routing/srv/SetRoute.srv
  routing/srv/SetRoutePoints.srv
  motion/msg/MotionState.msg
  motion/srv/AcceptStart.srv
  planning/msg/VelocityFactor.msg
  planning/msg/VelocityFactorArray.msg
  planning/msg/SteeringFactor.msg
  planning/msg/SteeringFactorArray.msg
  DEPENDENCIES
    builtin_interfaces
    std_msgs
    geometry_msgs
)

ament_auto_package()
