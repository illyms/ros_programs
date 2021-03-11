# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "begommer_tutorials: 1 messages, 1 services")

set(MSG_I_FLAGS "-Ibegommer_tutorials:/home/illyms/workspace/ros_programs/catkin_ws/src/begommer_tutorials/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(begommer_tutorials_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/illyms/workspace/ros_programs/catkin_ws/src/begommer_tutorials/msg/Num.msg" NAME_WE)
add_custom_target(_begommer_tutorials_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "begommer_tutorials" "/home/illyms/workspace/ros_programs/catkin_ws/src/begommer_tutorials/msg/Num.msg" ""
)

get_filename_component(_filename "/home/illyms/workspace/ros_programs/catkin_ws/src/begommer_tutorials/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_begommer_tutorials_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "begommer_tutorials" "/home/illyms/workspace/ros_programs/catkin_ws/src/begommer_tutorials/srv/AddTwoInts.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(begommer_tutorials
  "/home/illyms/workspace/ros_programs/catkin_ws/src/begommer_tutorials/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/begommer_tutorials
)

### Generating Services
_generate_srv_cpp(begommer_tutorials
  "/home/illyms/workspace/ros_programs/catkin_ws/src/begommer_tutorials/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/begommer_tutorials
)

### Generating Module File
_generate_module_cpp(begommer_tutorials
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/begommer_tutorials
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(begommer_tutorials_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(begommer_tutorials_generate_messages begommer_tutorials_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/illyms/workspace/ros_programs/catkin_ws/src/begommer_tutorials/msg/Num.msg" NAME_WE)
add_dependencies(begommer_tutorials_generate_messages_cpp _begommer_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/illyms/workspace/ros_programs/catkin_ws/src/begommer_tutorials/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(begommer_tutorials_generate_messages_cpp _begommer_tutorials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(begommer_tutorials_gencpp)
add_dependencies(begommer_tutorials_gencpp begommer_tutorials_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS begommer_tutorials_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(begommer_tutorials
  "/home/illyms/workspace/ros_programs/catkin_ws/src/begommer_tutorials/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/begommer_tutorials
)

### Generating Services
_generate_srv_eus(begommer_tutorials
  "/home/illyms/workspace/ros_programs/catkin_ws/src/begommer_tutorials/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/begommer_tutorials
)

### Generating Module File
_generate_module_eus(begommer_tutorials
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/begommer_tutorials
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(begommer_tutorials_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(begommer_tutorials_generate_messages begommer_tutorials_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/illyms/workspace/ros_programs/catkin_ws/src/begommer_tutorials/msg/Num.msg" NAME_WE)
add_dependencies(begommer_tutorials_generate_messages_eus _begommer_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/illyms/workspace/ros_programs/catkin_ws/src/begommer_tutorials/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(begommer_tutorials_generate_messages_eus _begommer_tutorials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(begommer_tutorials_geneus)
add_dependencies(begommer_tutorials_geneus begommer_tutorials_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS begommer_tutorials_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(begommer_tutorials
  "/home/illyms/workspace/ros_programs/catkin_ws/src/begommer_tutorials/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/begommer_tutorials
)

### Generating Services
_generate_srv_lisp(begommer_tutorials
  "/home/illyms/workspace/ros_programs/catkin_ws/src/begommer_tutorials/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/begommer_tutorials
)

### Generating Module File
_generate_module_lisp(begommer_tutorials
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/begommer_tutorials
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(begommer_tutorials_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(begommer_tutorials_generate_messages begommer_tutorials_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/illyms/workspace/ros_programs/catkin_ws/src/begommer_tutorials/msg/Num.msg" NAME_WE)
add_dependencies(begommer_tutorials_generate_messages_lisp _begommer_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/illyms/workspace/ros_programs/catkin_ws/src/begommer_tutorials/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(begommer_tutorials_generate_messages_lisp _begommer_tutorials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(begommer_tutorials_genlisp)
add_dependencies(begommer_tutorials_genlisp begommer_tutorials_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS begommer_tutorials_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(begommer_tutorials
  "/home/illyms/workspace/ros_programs/catkin_ws/src/begommer_tutorials/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/begommer_tutorials
)

### Generating Services
_generate_srv_nodejs(begommer_tutorials
  "/home/illyms/workspace/ros_programs/catkin_ws/src/begommer_tutorials/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/begommer_tutorials
)

### Generating Module File
_generate_module_nodejs(begommer_tutorials
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/begommer_tutorials
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(begommer_tutorials_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(begommer_tutorials_generate_messages begommer_tutorials_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/illyms/workspace/ros_programs/catkin_ws/src/begommer_tutorials/msg/Num.msg" NAME_WE)
add_dependencies(begommer_tutorials_generate_messages_nodejs _begommer_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/illyms/workspace/ros_programs/catkin_ws/src/begommer_tutorials/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(begommer_tutorials_generate_messages_nodejs _begommer_tutorials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(begommer_tutorials_gennodejs)
add_dependencies(begommer_tutorials_gennodejs begommer_tutorials_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS begommer_tutorials_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(begommer_tutorials
  "/home/illyms/workspace/ros_programs/catkin_ws/src/begommer_tutorials/msg/Num.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/begommer_tutorials
)

### Generating Services
_generate_srv_py(begommer_tutorials
  "/home/illyms/workspace/ros_programs/catkin_ws/src/begommer_tutorials/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/begommer_tutorials
)

### Generating Module File
_generate_module_py(begommer_tutorials
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/begommer_tutorials
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(begommer_tutorials_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(begommer_tutorials_generate_messages begommer_tutorials_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/illyms/workspace/ros_programs/catkin_ws/src/begommer_tutorials/msg/Num.msg" NAME_WE)
add_dependencies(begommer_tutorials_generate_messages_py _begommer_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/illyms/workspace/ros_programs/catkin_ws/src/begommer_tutorials/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(begommer_tutorials_generate_messages_py _begommer_tutorials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(begommer_tutorials_genpy)
add_dependencies(begommer_tutorials_genpy begommer_tutorials_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS begommer_tutorials_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/begommer_tutorials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/begommer_tutorials
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(begommer_tutorials_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/begommer_tutorials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/begommer_tutorials
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(begommer_tutorials_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/begommer_tutorials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/begommer_tutorials
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(begommer_tutorials_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/begommer_tutorials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/begommer_tutorials
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(begommer_tutorials_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/begommer_tutorials)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/begommer_tutorials\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/begommer_tutorials
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(begommer_tutorials_generate_messages_py std_msgs_generate_messages_py)
endif()
