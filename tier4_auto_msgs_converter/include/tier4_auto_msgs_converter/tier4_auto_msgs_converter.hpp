// Copyright 2021 Tier IV, Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#ifndef TIER4_AUTO_MSGS_CONVERTER__TIER4_AUTO_MSGS_CONVERTER_HPP_
#define TIER4_AUTO_MSGS_CONVERTER__TIER4_AUTO_MSGS_CONVERTER_HPP_

#include "autoware_perception_msgs/msg/tracked_objects.hpp"
#include "autoware_planning_msgs/msg/trajectory.hpp"
#include "tier4_perception_msgs/msg/dynamic_object_array.hpp"
#include "tier4_planning_msgs/msg/trajectory.hpp"

namespace tier4_auto_msgs_converter
{

inline auto convert(const autoware_planning_msgs::msg::Trajectory & traj)
{
  tier4_planning_msgs::msg::Trajectory iv_traj;
  iv_traj.header = traj.header;
  iv_traj.points.reserve(traj.points.size());
  for (const auto & point : traj.points) {
    tier4_planning_msgs::msg::TrajectoryPoint iv_point;
    iv_point.pose = point.pose;
    iv_point.accel.linear.x = point.acceleration_mps2;
    iv_point.twist.linear.x = point.longitudinal_velocity_mps;
    iv_point.twist.linear.y = point.lateral_velocity_mps;
    iv_point.twist.angular.z = point.heading_rate_rps;
    iv_traj.points.push_back(iv_point);
  }
  return iv_traj;
}

inline auto convert(const autoware_perception_msgs::msg::ObjectClassification & classification)
{
  tier4_perception_msgs::msg::Semantic iv_semantic;
  iv_semantic.confidence = classification.probability;
  switch (classification.label) {
    case autoware_perception_msgs::msg::ObjectClassification::UNKNOWN:
      iv_semantic.type = tier4_perception_msgs::msg::Semantic::UNKNOWN;
      break;
    case autoware_perception_msgs::msg::ObjectClassification::CAR:
      iv_semantic.type = tier4_perception_msgs::msg::Semantic::CAR;
      break;
    case autoware_perception_msgs::msg::ObjectClassification::TRUCK:
      iv_semantic.type = tier4_perception_msgs::msg::Semantic::TRUCK;
      break;
    case autoware_perception_msgs::msg::ObjectClassification::BUS:
      iv_semantic.type = tier4_perception_msgs::msg::Semantic::BUS;
      break;
    case autoware_perception_msgs::msg::ObjectClassification::TRAILER:
      iv_semantic.type = tier4_perception_msgs::msg::Semantic::TRUCK;
      break;
    case autoware_perception_msgs::msg::ObjectClassification::MOTORCYCLE:
      iv_semantic.type = tier4_perception_msgs::msg::Semantic::MOTORBIKE;
      break;
    case autoware_perception_msgs::msg::ObjectClassification::BICYCLE:
      iv_semantic.type = tier4_perception_msgs::msg::Semantic::BICYCLE;
      break;
    case autoware_perception_msgs::msg::ObjectClassification::PEDESTRIAN:
      iv_semantic.type = tier4_perception_msgs::msg::Semantic::PEDESTRIAN;
      break;
    default:
      iv_semantic.type = tier4_perception_msgs::msg::Semantic::UNKNOWN;
      break;
  }
  return iv_semantic;
}

inline auto convert(const autoware_perception_msgs::msg::TrackedObjectKinematics & kinematics)
{
  using Kinematics = autoware_perception_msgs::msg::TrackedObjectKinematics;
  tier4_perception_msgs::msg::State iv_state;
  iv_state.pose_covariance = kinematics.pose_with_covariance;
  iv_state.orientation_reliable = (kinematics.orientation_availability == Kinematics::AVAILABLE);
  iv_state.twist_covariance = kinematics.twist_with_covariance;
  iv_state.twist_reliable = true;
  iv_state.acceleration_covariance = kinematics.acceleration_with_covariance;
  iv_state.acceleration_reliable = true;
  iv_state.predicted_paths = {};
  return iv_state;
}

inline auto convert(const autoware_perception_msgs::msg::Shape & shape)
{
  tier4_perception_msgs::msg::Shape iv_shape;
  iv_shape.dimensions = shape.dimensions;
  iv_shape.footprint = shape.footprint;
  switch (shape.type) {
    case autoware_perception_msgs::msg::Shape::BOUNDING_BOX:
      iv_shape.type = tier4_perception_msgs::msg::Shape::BOUNDING_BOX;
      break;
    case autoware_perception_msgs::msg::Shape::CYLINDER:
      iv_shape.type = tier4_perception_msgs::msg::Shape::CYLINDER;
      break;
    case autoware_perception_msgs::msg::Shape::POLYGON:
      iv_shape.type = tier4_perception_msgs::msg::Shape::POLYGON;
      break;
  }
  return iv_shape;
}

inline auto convert(const autoware_perception_msgs::msg::TrackedObject & object)
{
  tier4_perception_msgs::msg::DynamicObject iv_object;
  iv_object.id = object.object_id;
  iv_object.semantic = convert(object.classification.front());
  iv_object.state = convert(object.kinematics);
  iv_object.shape = convert(object.shape);
  return iv_object;
}

inline auto convert(const autoware_perception_msgs::msg::TrackedObjects & objects)
{
  tier4_perception_msgs::msg::DynamicObjectArray iv_objects;
  iv_objects.header = objects.header;
  iv_objects.objects.reserve(objects.objects.size());
  for (const auto & object : objects.objects) {
    iv_objects.objects.push_back(convert(object));
  }
  return iv_objects;
}

}  // namespace tier4_auto_msgs_converter

#endif  // TIER4_AUTO_MSGS_CONVERTER__TIER4_AUTO_MSGS_CONVERTER_HPP_
