// Generated by gencpp from file object_manipulation_msgs/GraspHandPostureExecutionActionResult.msg
// DO NOT EDIT!


#ifndef OBJECT_MANIPULATION_MSGS_MESSAGE_GRASPHANDPOSTUREEXECUTIONACTIONRESULT_H
#define OBJECT_MANIPULATION_MSGS_MESSAGE_GRASPHANDPOSTUREEXECUTIONACTIONRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalStatus.h>
#include <object_manipulation_msgs/GraspHandPostureExecutionResult.h>

namespace object_manipulation_msgs
{
template <class ContainerAllocator>
struct GraspHandPostureExecutionActionResult_
{
  typedef GraspHandPostureExecutionActionResult_<ContainerAllocator> Type;

  GraspHandPostureExecutionActionResult_()
    : header()
    , status()
    , result()  {
    }
  GraspHandPostureExecutionActionResult_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , status(_alloc)
    , result(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalStatus_<ContainerAllocator>  _status_type;
  _status_type status;

   typedef  ::object_manipulation_msgs::GraspHandPostureExecutionResult_<ContainerAllocator>  _result_type;
  _result_type result;





  typedef boost::shared_ptr< ::object_manipulation_msgs::GraspHandPostureExecutionActionResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::object_manipulation_msgs::GraspHandPostureExecutionActionResult_<ContainerAllocator> const> ConstPtr;

}; // struct GraspHandPostureExecutionActionResult_

typedef ::object_manipulation_msgs::GraspHandPostureExecutionActionResult_<std::allocator<void> > GraspHandPostureExecutionActionResult;

typedef boost::shared_ptr< ::object_manipulation_msgs::GraspHandPostureExecutionActionResult > GraspHandPostureExecutionActionResultPtr;
typedef boost::shared_ptr< ::object_manipulation_msgs::GraspHandPostureExecutionActionResult const> GraspHandPostureExecutionActionResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::object_manipulation_msgs::GraspHandPostureExecutionActionResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::object_manipulation_msgs::GraspHandPostureExecutionActionResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace object_manipulation_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'household_objects_database_msgs': ['/opt/ros/kinetic/share/household_objects_database_msgs/cmake/../msg'], 'shape_msgs': ['/opt/ros/kinetic/share/shape_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'trajectory_msgs': ['/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg', '/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'object_recognition_msgs': ['/opt/ros/kinetic/share/object_recognition_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'object_manipulation_msgs': ['/home/jyk/perception_driven_ws/src/object_manipulation_msgs/msg', '/home/jyk/perception_driven_ws/devel/.private/object_manipulation_msgs/share/object_manipulation_msgs/msg'], 'manipulation_msgs': ['/opt/ros/kinetic/share/manipulation_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::object_manipulation_msgs::GraspHandPostureExecutionActionResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::object_manipulation_msgs::GraspHandPostureExecutionActionResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::object_manipulation_msgs::GraspHandPostureExecutionActionResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::object_manipulation_msgs::GraspHandPostureExecutionActionResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::object_manipulation_msgs::GraspHandPostureExecutionActionResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::object_manipulation_msgs::GraspHandPostureExecutionActionResult_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::object_manipulation_msgs::GraspHandPostureExecutionActionResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6434d1842053adb9e907efbf917fa72b";
  }

  static const char* value(const ::object_manipulation_msgs::GraspHandPostureExecutionActionResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6434d1842053adb9ULL;
  static const uint64_t static_value2 = 0xe907efbf917fa72bULL;
};

template<class ContainerAllocator>
struct DataType< ::object_manipulation_msgs::GraspHandPostureExecutionActionResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "object_manipulation_msgs/GraspHandPostureExecutionActionResult";
  }

  static const char* value(const ::object_manipulation_msgs::GraspHandPostureExecutionActionResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::object_manipulation_msgs::GraspHandPostureExecutionActionResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalStatus status\n\
GraspHandPostureExecutionResult result\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: actionlib_msgs/GoalStatus\n\
GoalID goal_id\n\
uint8 status\n\
uint8 PENDING         = 0   # The goal has yet to be processed by the action server\n\
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server\n\
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing\n\
                            #   and has since completed its execution (Terminal State)\n\
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)\n\
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due\n\
                            #    to some failure (Terminal State)\n\
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,\n\
                            #    because the goal was unattainable or invalid (Terminal State)\n\
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing\n\
                            #    and has not yet completed execution\n\
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,\n\
                            #    but the action server has not yet confirmed that the goal is canceled\n\
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing\n\
                            #    and was successfully cancelled (Terminal State)\n\
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be\n\
                            #    sent over the wire by an action server\n\
\n\
#Allow for the user to associate a string with GoalStatus for debugging\n\
string text\n\
\n\
\n\
================================================================================\n\
MSG: actionlib_msgs/GoalID\n\
# The stamp should store the time at which this goal was requested.\n\
# It is used by an action server when it tries to preempt all\n\
# goals that were requested before a certain time\n\
time stamp\n\
\n\
# The id provides a way to associate feedback and\n\
# result message with specific goal requests. The id\n\
# specified must be unique.\n\
string id\n\
\n\
\n\
================================================================================\n\
MSG: object_manipulation_msgs/GraspHandPostureExecutionResult\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# the result of the action\n\
ManipulationResult result\n\
\n\
\n\
================================================================================\n\
MSG: object_manipulation_msgs/ManipulationResult\n\
# Result codes for manipulation tasks\n\
\n\
# task completed as expected\n\
# generally means you can proceed as planned\n\
int32 SUCCESS = 1\n\
\n\
# task not possible (e.g. out of reach or obstacles in the way)\n\
# generally means that the world was not disturbed, so you can try another task\n\
int32 UNFEASIBLE = -1\n\
\n\
# task was thought possible, but failed due to unexpected events during execution\n\
# it is likely that the world was disturbed, so you are encouraged to refresh\n\
# your sensed world model before proceeding to another task\n\
int32 FAILED = -2\n\
\n\
# a lower level error prevented task completion (e.g. joint controller not responding)\n\
# generally requires human attention\n\
int32 ERROR = -3\n\
\n\
# means that at some point during execution we ended up in a state that the collision-aware\n\
# arm navigation module will not move out of. The world was likely not disturbed, but you \n\
# probably need a new collision map to move the arm out of the stuck position\n\
int32 ARM_MOVEMENT_PREVENTED = -4\n\
\n\
# specific to grasp actions\n\
# the object was grasped successfully, but the lift attempt could not achieve the minimum lift distance requested\n\
# it is likely that the collision environment will see collisions between the hand/object and the support surface\n\
int32 LIFT_FAILED = -5\n\
\n\
# specific to place actions\n\
# the object was placed successfully, but the retreat attempt could not achieve the minimum retreat distance requested\n\
# it is likely that the collision environment will see collisions between the hand and the object\n\
int32 RETREAT_FAILED = -6\n\
\n\
# indicates that somewhere along the line a human said \"wait, stop, this is bad, go back and do something else\"\n\
int32 CANCELLED = -7\n\
\n\
# the actual value of this error code\n\
int32 value\n\
";
  }

  static const char* value(const ::object_manipulation_msgs::GraspHandPostureExecutionActionResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::object_manipulation_msgs::GraspHandPostureExecutionActionResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.status);
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GraspHandPostureExecutionActionResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::object_manipulation_msgs::GraspHandPostureExecutionActionResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::object_manipulation_msgs::GraspHandPostureExecutionActionResult_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "status: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalStatus_<ContainerAllocator> >::stream(s, indent + "  ", v.status);
    s << indent << "result: ";
    s << std::endl;
    Printer< ::object_manipulation_msgs::GraspHandPostureExecutionResult_<ContainerAllocator> >::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OBJECT_MANIPULATION_MSGS_MESSAGE_GRASPHANDPOSTUREEXECUTIONACTIONRESULT_H