// Generated by gencpp from file collision_avoidance_pick_and_place/GetTargetPoseResponse.msg
// DO NOT EDIT!


#ifndef COLLISION_AVOIDANCE_PICK_AND_PLACE_MESSAGE_GETTARGETPOSERESPONSE_H
#define COLLISION_AVOIDANCE_PICK_AND_PLACE_MESSAGE_GETTARGETPOSERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>

namespace collision_avoidance_pick_and_place
{
template <class ContainerAllocator>
struct GetTargetPoseResponse_
{
  typedef GetTargetPoseResponse_<ContainerAllocator> Type;

  GetTargetPoseResponse_()
    : succeeded(false)
    , target_pose()  {
    }
  GetTargetPoseResponse_(const ContainerAllocator& _alloc)
    : succeeded(false)
    , target_pose(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _succeeded_type;
  _succeeded_type succeeded;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _target_pose_type;
  _target_pose_type target_pose;





  typedef boost::shared_ptr< ::collision_avoidance_pick_and_place::GetTargetPoseResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::collision_avoidance_pick_and_place::GetTargetPoseResponse_<ContainerAllocator> const> ConstPtr;

}; // struct GetTargetPoseResponse_

typedef ::collision_avoidance_pick_and_place::GetTargetPoseResponse_<std::allocator<void> > GetTargetPoseResponse;

typedef boost::shared_ptr< ::collision_avoidance_pick_and_place::GetTargetPoseResponse > GetTargetPoseResponsePtr;
typedef boost::shared_ptr< ::collision_avoidance_pick_and_place::GetTargetPoseResponse const> GetTargetPoseResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::collision_avoidance_pick_and_place::GetTargetPoseResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::collision_avoidance_pick_and_place::GetTargetPoseResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace collision_avoidance_pick_and_place

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'shape_msgs': ['/opt/ros/kinetic/share/shape_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'pcl_msgs': ['/opt/ros/kinetic/share/pcl_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::collision_avoidance_pick_and_place::GetTargetPoseResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::collision_avoidance_pick_and_place::GetTargetPoseResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::collision_avoidance_pick_and_place::GetTargetPoseResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::collision_avoidance_pick_and_place::GetTargetPoseResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::collision_avoidance_pick_and_place::GetTargetPoseResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::collision_avoidance_pick_and_place::GetTargetPoseResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::collision_avoidance_pick_and_place::GetTargetPoseResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8dbc7fc93a942ee18835621213923b11";
  }

  static const char* value(const ::collision_avoidance_pick_and_place::GetTargetPoseResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8dbc7fc93a942ee1ULL;
  static const uint64_t static_value2 = 0x8835621213923b11ULL;
};

template<class ContainerAllocator>
struct DataType< ::collision_avoidance_pick_and_place::GetTargetPoseResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "collision_avoidance_pick_and_place/GetTargetPoseResponse";
  }

  static const char* value(const ::collision_avoidance_pick_and_place::GetTargetPoseResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::collision_avoidance_pick_and_place::GetTargetPoseResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
bool succeeded\n\
geometry_msgs/Pose target_pose\n\
\n\
\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::collision_avoidance_pick_and_place::GetTargetPoseResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::collision_avoidance_pick_and_place::GetTargetPoseResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.succeeded);
      stream.next(m.target_pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetTargetPoseResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::collision_avoidance_pick_and_place::GetTargetPoseResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::collision_avoidance_pick_and_place::GetTargetPoseResponse_<ContainerAllocator>& v)
  {
    s << indent << "succeeded: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.succeeded);
    s << indent << "target_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.target_pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // COLLISION_AVOIDANCE_PICK_AND_PLACE_MESSAGE_GETTARGETPOSERESPONSE_H