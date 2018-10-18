# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robot_io: 0 messages, 1 services")

set(MSG_I_FLAGS "")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robot_io_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jyk/perception_driven_ws/src/robot_io/srv/DigitalOutputUpdate.srv" NAME_WE)
add_custom_target(_robot_io_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robot_io" "/home/jyk/perception_driven_ws/src/robot_io/srv/DigitalOutputUpdate.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(robot_io
  "/home/jyk/perception_driven_ws/src/robot_io/srv/DigitalOutputUpdate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_io
)

### Generating Module File
_generate_module_cpp(robot_io
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_io
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robot_io_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robot_io_generate_messages robot_io_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jyk/perception_driven_ws/src/robot_io/srv/DigitalOutputUpdate.srv" NAME_WE)
add_dependencies(robot_io_generate_messages_cpp _robot_io_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_io_gencpp)
add_dependencies(robot_io_gencpp robot_io_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_io_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(robot_io
  "/home/jyk/perception_driven_ws/src/robot_io/srv/DigitalOutputUpdate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_io
)

### Generating Module File
_generate_module_eus(robot_io
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_io
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(robot_io_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(robot_io_generate_messages robot_io_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jyk/perception_driven_ws/src/robot_io/srv/DigitalOutputUpdate.srv" NAME_WE)
add_dependencies(robot_io_generate_messages_eus _robot_io_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_io_geneus)
add_dependencies(robot_io_geneus robot_io_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_io_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(robot_io
  "/home/jyk/perception_driven_ws/src/robot_io/srv/DigitalOutputUpdate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_io
)

### Generating Module File
_generate_module_lisp(robot_io
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_io
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robot_io_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robot_io_generate_messages robot_io_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jyk/perception_driven_ws/src/robot_io/srv/DigitalOutputUpdate.srv" NAME_WE)
add_dependencies(robot_io_generate_messages_lisp _robot_io_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_io_genlisp)
add_dependencies(robot_io_genlisp robot_io_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_io_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(robot_io
  "/home/jyk/perception_driven_ws/src/robot_io/srv/DigitalOutputUpdate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_io
)

### Generating Module File
_generate_module_nodejs(robot_io
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_io
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(robot_io_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(robot_io_generate_messages robot_io_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jyk/perception_driven_ws/src/robot_io/srv/DigitalOutputUpdate.srv" NAME_WE)
add_dependencies(robot_io_generate_messages_nodejs _robot_io_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_io_gennodejs)
add_dependencies(robot_io_gennodejs robot_io_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_io_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(robot_io
  "/home/jyk/perception_driven_ws/src/robot_io/srv/DigitalOutputUpdate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_io
)

### Generating Module File
_generate_module_py(robot_io
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_io
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robot_io_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robot_io_generate_messages robot_io_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jyk/perception_driven_ws/src/robot_io/srv/DigitalOutputUpdate.srv" NAME_WE)
add_dependencies(robot_io_generate_messages_py _robot_io_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robot_io_genpy)
add_dependencies(robot_io_genpy robot_io_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robot_io_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_io)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robot_io
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_io)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/robot_io
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_io)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robot_io
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_io)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/robot_io
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_io)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_io\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robot_io
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
