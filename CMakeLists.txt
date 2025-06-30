cmake_minimum_required(VERSION 3.8)
project(robot_controller_msgs)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(moveit_msgs REQUIRED)

set(action_files

)

set(msg_files
  "msg/CollisionObjectMap.msg"
)

set(srv_files
  "srv/AddCollisionObjects.srv"
  "srv/ApplyAttachedCollisionObjects.srv"
  "srv/ExecuteJoints.srv"
  "srv/ExecuteJointWaypoints.srv"
  "srv/ExecutePose.srv"
  "srv/ExecuteWaypoints.srv"
  "srv/GetCollisionObjectsFromScene.srv"
  "srv/GetCurrentJointStates.srv"
  "srv/GetCurrentPose.srv"
  "srv/MoveCollisionObjects.srv"
  "srv/PushPoseArray.srv"
  "srv/RemoveCollisionObjects.srv"
)

rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
  ${srv_files}
  ${action_files}
  DEPENDENCIES
    builtin_interfaces
    std_msgs
    sensor_msgs
    geometry_msgs
    moveit_msgs
)

ament_export_dependencies(rosidl_default_runtime)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  # the following line skips the linter which checks for copyrights
  # comment the line when a copyright and license is added to all source files
  set(ament_cmake_copyright_FOUND TRUE)
  # the following line skips cpplint (only works in a git repo)
  # comment the line when this package is in a git repo and when
  # a copyright and license is added to all source files
  set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()
