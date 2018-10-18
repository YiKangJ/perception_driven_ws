// Generated by gencpp from file ar_pose/ARMarkers.msg
// DO NOT EDIT!


#ifndef AR_POSE_MESSAGE_ARMARKERS_H
#define AR_POSE_MESSAGE_ARMARKERS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <ar_pose/ARMarker.h>

namespace ar_pose
{
template <class ContainerAllocator>
struct ARMarkers_
{
  typedef ARMarkers_<ContainerAllocator> Type;

  ARMarkers_()
    : header()
    , markers()  {
    }
  ARMarkers_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , markers(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::ar_pose::ARMarker_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::ar_pose::ARMarker_<ContainerAllocator> >::other >  _markers_type;
  _markers_type markers;





  typedef boost::shared_ptr< ::ar_pose::ARMarkers_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ar_pose::ARMarkers_<ContainerAllocator> const> ConstPtr;

}; // struct ARMarkers_

typedef ::ar_pose::ARMarkers_<std::allocator<void> > ARMarkers;

typedef boost::shared_ptr< ::ar_pose::ARMarkers > ARMarkersPtr;
typedef boost::shared_ptr< ::ar_pose::ARMarkers const> ARMarkersConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ar_pose::ARMarkers_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ar_pose::ARMarkers_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ar_pose

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'ar_pose': ['/home/jyk/perception_driven_ws/src/ar_tools/ar_pose/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ar_pose::ARMarkers_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ar_pose::ARMarkers_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ar_pose::ARMarkers_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ar_pose::ARMarkers_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ar_pose::ARMarkers_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ar_pose::ARMarkers_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ar_pose::ARMarkers_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b35e1e178a9cd7039dbb63cf2764131a";
  }

  static const char* value(const ::ar_pose::ARMarkers_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb35e1e178a9cd703ULL;
  static const uint64_t static_value2 = 0x9dbb63cf2764131aULL;
};

template<class ContainerAllocator>
struct DataType< ::ar_pose::ARMarkers_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ar_pose/ARMarkers";
  }

  static const char* value(const ::ar_pose::ARMarkers_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ar_pose::ARMarkers_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
ARMarker[] markers\n\
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
MSG: ar_pose/ARMarker\n\
Header header\n\
uint32 id\n\
geometry_msgs/PoseWithCovariance pose\n\
uint32 confidence\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PoseWithCovariance\n\
# This represents a pose in free space with uncertainty.\n\
\n\
Pose pose\n\
\n\
# Row-major representation of the 6x6 covariance matrix\n\
# The orientation parameters use a fixed-axis representation.\n\
# In order, the parameters are:\n\
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\n\
float64[36] covariance\n\
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

  static const char* value(const ::ar_pose::ARMarkers_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ar_pose::ARMarkers_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.markers);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ARMarkers_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ar_pose::ARMarkers_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::ar_pose::ARMarkers_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "markers[]" << std::endl;
    for (size_t i = 0; i < v.markers.size(); ++i)
    {
      s << indent << "  markers[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::ar_pose::ARMarker_<ContainerAllocator> >::stream(s, indent + "    ", v.markers[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // AR_POSE_MESSAGE_ARMARKERS_H
