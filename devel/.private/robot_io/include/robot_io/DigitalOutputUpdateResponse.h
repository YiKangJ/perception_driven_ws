// Generated by gencpp from file robot_io/DigitalOutputUpdateResponse.msg
// DO NOT EDIT!


#ifndef ROBOT_IO_MESSAGE_DIGITALOUTPUTUPDATERESPONSE_H
#define ROBOT_IO_MESSAGE_DIGITALOUTPUTUPDATERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace robot_io
{
template <class ContainerAllocator>
struct DigitalOutputUpdateResponse_
{
  typedef DigitalOutputUpdateResponse_<ContainerAllocator> Type;

  DigitalOutputUpdateResponse_()
    : output_bit_array()  {
    }
  DigitalOutputUpdateResponse_(const ContainerAllocator& _alloc)
    : output_bit_array(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _output_bit_array_type;
  _output_bit_array_type output_bit_array;





  typedef boost::shared_ptr< ::robot_io::DigitalOutputUpdateResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::robot_io::DigitalOutputUpdateResponse_<ContainerAllocator> const> ConstPtr;

}; // struct DigitalOutputUpdateResponse_

typedef ::robot_io::DigitalOutputUpdateResponse_<std::allocator<void> > DigitalOutputUpdateResponse;

typedef boost::shared_ptr< ::robot_io::DigitalOutputUpdateResponse > DigitalOutputUpdateResponsePtr;
typedef boost::shared_ptr< ::robot_io::DigitalOutputUpdateResponse const> DigitalOutputUpdateResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::robot_io::DigitalOutputUpdateResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::robot_io::DigitalOutputUpdateResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace robot_io

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::robot_io::DigitalOutputUpdateResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::robot_io::DigitalOutputUpdateResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_io::DigitalOutputUpdateResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::robot_io::DigitalOutputUpdateResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_io::DigitalOutputUpdateResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::robot_io::DigitalOutputUpdateResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::robot_io::DigitalOutputUpdateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a9f745eeeda072c6eb0e94fb9441b345";
  }

  static const char* value(const ::robot_io::DigitalOutputUpdateResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa9f745eeeda072c6ULL;
  static const uint64_t static_value2 = 0xeb0e94fb9441b345ULL;
};

template<class ContainerAllocator>
struct DataType< ::robot_io::DigitalOutputUpdateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "robot_io/DigitalOutputUpdateResponse";
  }

  static const char* value(const ::robot_io::DigitalOutputUpdateResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::robot_io::DigitalOutputUpdateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool[] output_bit_array\n\
\n\
";
  }

  static const char* value(const ::robot_io::DigitalOutputUpdateResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::robot_io::DigitalOutputUpdateResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.output_bit_array);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DigitalOutputUpdateResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::robot_io::DigitalOutputUpdateResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::robot_io::DigitalOutputUpdateResponse_<ContainerAllocator>& v)
  {
    s << indent << "output_bit_array[]" << std::endl;
    for (size_t i = 0; i < v.output_bit_array.size(); ++i)
    {
      s << indent << "  output_bit_array[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.output_bit_array[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROBOT_IO_MESSAGE_DIGITALOUTPUTUPDATERESPONSE_H
