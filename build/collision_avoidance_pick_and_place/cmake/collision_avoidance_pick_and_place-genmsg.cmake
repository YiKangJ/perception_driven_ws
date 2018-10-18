# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "collision_avoidance_pick_and_place: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Ishape_msgs:/opt/ros/kinetic/share/shape_msgs/cmake/../msg;-Ipcl_msgs:/opt/ros/kinetic/share/pcl_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(collision_avoidance_pick_and_place_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jyk/perception_driven_ws/src/collision_avoidance_pick_and_place/srv/GetTargetPose.srv" NAME_WE)
add_custom_target(_collision_avoidance_pick_and_place_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "collision_avoidance_pick_and_place" "/home/jyk/perception_driven_ws/src/collision_avoidance_pick_and_place/srv/GetTargetPose.srv" "geometry_msgs/Quaternion:shape_msgs/SolidPrimitive:geometry_msgs/Pose:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(collision_avoidance_pick_and_place
  "/home/jyk/perception_driven_ws/src/collision_avoidance_pick_and_place/srv/GetTargetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/collision_avoidance_pick_and_place
)

### Generating Module File
_generate_module_cpp(collision_avoidance_pick_and_place
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/collision_avoidance_pick_and_place
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(collision_avoidance_pick_and_place_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(collision_avoidance_pick_and_place_generate_messages collision_avoidance_pick_and_place_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jyk/perception_driven_ws/src/collision_avoidance_pick_and_place/srv/GetTargetPose.srv" NAME_WE)
add_dependencies(collision_avoidance_pick_and_place_generate_messages_cpp _collision_avoidance_pick_and_place_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(collision_avoidance_pick_and_place_gencpp)
add_dependencies(collision_avoidance_pick_and_place_gencpp collision_avoidance_pick_and_place_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS collision_avoidance_pick_and_place_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(collision_avoidance_pick_and_place
  "/home/jyk/perception_driven_ws/src/collision_avoidance_pick_and_place/srv/GetTargetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/collision_avoidance_pick_and_place
)

### Generating Module File
_generate_module_eus(collision_avoidance_pick_and_place
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/collision_avoidance_pick_and_place
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(collision_avoidance_pick_and_place_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(collision_avoidance_pick_and_place_generate_messages collision_avoidance_pick_and_place_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jyk/perception_driven_ws/src/collision_avoidance_pick_and_place/srv/GetTargetPose.srv" NAME_WE)
add_dependencies(collision_avoidance_pick_and_place_generate_messages_eus _collision_avoidance_pick_and_place_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(collision_avoidance_pick_and_place_geneus)
add_dependencies(collision_avoidance_pick_and_place_geneus collision_avoidance_pick_and_place_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS collision_avoidance_pick_and_place_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(collision_avoidance_pick_and_place
  "/home/jyk/perception_driven_ws/src/collision_avoidance_pick_and_place/srv/GetTargetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/collision_avoidance_pick_and_place
)

### Generating Module File
_generate_module_lisp(collision_avoidance_pick_and_place
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/collision_avoidance_pick_and_place
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(collision_avoidance_pick_and_place_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(collision_avoidance_pick_and_place_generate_messages collision_avoidance_pick_and_place_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jyk/perception_driven_ws/src/collision_avoidance_pick_and_place/srv/GetTargetPose.srv" NAME_WE)
add_dependencies(collision_avoidance_pick_and_place_generate_messages_lisp _collision_avoidance_pick_and_place_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(collision_avoidance_pick_and_place_genlisp)
add_dependencies(collision_avoidance_pick_and_place_genlisp collision_avoidance_pick_and_place_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS collision_avoidance_pick_and_place_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(collision_avoidance_pick_and_place
  "/home/jyk/perception_driven_ws/src/collision_avoidance_pick_and_place/srv/GetTargetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/collision_avoidance_pick_and_place
)

### Generating Module File
_generate_module_nodejs(collision_avoidance_pick_and_place
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/collision_avoidance_pick_and_place
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(collision_avoidance_pick_and_place_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(collision_avoidance_pick_and_place_generate_messages collision_avoidance_pick_and_place_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jyk/perception_driven_ws/src/collision_avoidance_pick_and_place/srv/GetTargetPose.srv" NAME_WE)
add_dependencies(collision_avoidance_pick_and_place_generate_messages_nodejs _collision_avoidance_pick_and_place_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(collision_avoidance_pick_and_place_gennodejs)
add_dependencies(collision_avoidance_pick_and_place_gennodejs collision_avoidance_pick_and_place_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS collision_avoidance_pick_and_place_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(collision_avoidance_pick_and_place
  "/home/jyk/perception_driven_ws/src/collision_avoidance_pick_and_place/srv/GetTargetPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/collision_avoidance_pick_and_place
)

### Generating Module File
_generate_module_py(collision_avoidance_pick_and_place
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/collision_avoidance_pick_and_place
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(collision_avoidance_pick_and_place_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(collision_avoidance_pick_and_place_generate_messages collision_avoidance_pick_and_place_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jyk/perception_driven_ws/src/collision_avoidance_pick_and_place/srv/GetTargetPose.srv" NAME_WE)
add_dependencies(collision_avoidance_pick_and_place_generate_messages_py _collision_avoidance_pick_and_place_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(collision_avoidance_pick_and_place_genpy)
add_dependencies(collision_avoidance_pick_and_place_genpy collision_avoidance_pick_and_place_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS collision_avoidance_pick_and_place_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/collision_avoidance_pick_and_place)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/collision_avoidance_pick_and_place
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(collision_avoidance_pick_and_place_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET shape_msgs_generate_messages_cpp)
  add_dependencies(collision_avoidance_pick_and_place_generate_messages_cpp shape_msgs_generate_messages_cpp)
endif()
if(TARGET pcl_msgs_generate_messages_cpp)
  add_dependencies(collision_avoidance_pick_and_place_generate_messages_cpp pcl_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/collision_avoidance_pick_and_place)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/collision_avoidance_pick_and_place
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(collision_avoidance_pick_and_place_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET shape_msgs_generate_messages_eus)
  add_dependencies(collision_avoidance_pick_and_place_generate_messages_eus shape_msgs_generate_messages_eus)
endif()
if(TARGET pcl_msgs_generate_messages_eus)
  add_dependencies(collision_avoidance_pick_and_place_generate_messages_eus pcl_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/collision_avoidance_pick_and_place)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/collision_avoidance_pick_and_place
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(collision_avoidance_pick_and_place_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET shape_msgs_generate_messages_lisp)
  add_dependencies(collision_avoidance_pick_and_place_generate_messages_lisp shape_msgs_generate_messages_lisp)
endif()
if(TARGET pcl_msgs_generate_messages_lisp)
  add_dependencies(collision_avoidance_pick_and_place_generate_messages_lisp pcl_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/collision_avoidance_pick_and_place)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/collision_avoidance_pick_and_place
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(collision_avoidance_pick_and_place_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET shape_msgs_generate_messages_nodejs)
  add_dependencies(collision_avoidance_pick_and_place_generate_messages_nodejs shape_msgs_generate_messages_nodejs)
endif()
if(TARGET pcl_msgs_generate_messages_nodejs)
  add_dependencies(collision_avoidance_pick_and_place_generate_messages_nodejs pcl_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/collision_avoidance_pick_and_place)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/collision_avoidance_pick_and_place\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/collision_avoidance_pick_and_place
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(collision_avoidance_pick_and_place_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET shape_msgs_generate_messages_py)
  add_dependencies(collision_avoidance_pick_and_place_generate_messages_py shape_msgs_generate_messages_py)
endif()
if(TARGET pcl_msgs_generate_messages_py)
  add_dependencies(collision_avoidance_pick_and_place_generate_messages_py pcl_msgs_generate_messages_py)
endif()
