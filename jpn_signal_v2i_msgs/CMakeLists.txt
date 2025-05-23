cmake_minimum_required(VERSION 3.5)
project(jpn_signal_v2i_msgs)

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
  "msg/CollisionObject.msg"
  "msg/DangerType.msg"
  "msg/DangerInfo.msg"
  "msg/ExtraTrafficSignal.msg"
  "msg/GeoGraphPoint.msg"
  "msg/GeoGraphPointStamped.msg"
  "msg/GeoLine.msg"
  "msg/LatLon.msg"
  "msg/TrafficLightInfo.msg"
  "msg/VehicleGeoGraphPoints.msg"
  DEPENDENCIES
    autoware_perception_msgs
    tier4_perception_msgs
    builtin_interfaces
    std_msgs
    unique_identifier_msgs
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()
endif()

ament_auto_package()
