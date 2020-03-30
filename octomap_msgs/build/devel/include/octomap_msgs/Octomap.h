// Generated by gencpp from file octomap_msgs/Octomap.msg
// DO NOT EDIT!


#ifndef OCTOMAP_MSGS_MESSAGE_OCTOMAP_H
#define OCTOMAP_MSGS_MESSAGE_OCTOMAP_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace octomap_msgs
{
template <class ContainerAllocator>
struct Octomap_
{
  typedef Octomap_<ContainerAllocator> Type;

  Octomap_()
    : header()
    , binary(false)
    , id()
    , resolution(0.0)
    , data()  {
    }
  Octomap_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , binary(false)
    , id(_alloc)
    , resolution(0.0)
    , data(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _binary_type;
  _binary_type binary;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _id_type;
  _id_type id;

   typedef double _resolution_type;
  _resolution_type resolution;

   typedef std::vector<int8_t, typename ContainerAllocator::template rebind<int8_t>::other >  _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::octomap_msgs::Octomap_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::octomap_msgs::Octomap_<ContainerAllocator> const> ConstPtr;

}; // struct Octomap_

typedef ::octomap_msgs::Octomap_<std::allocator<void> > Octomap;

typedef boost::shared_ptr< ::octomap_msgs::Octomap > OctomapPtr;
typedef boost::shared_ptr< ::octomap_msgs::Octomap const> OctomapConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::octomap_msgs::Octomap_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::octomap_msgs::Octomap_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace octomap_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'octomap_msgs': ['/home/huan/git/octomap_cuda/octomap_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::octomap_msgs::Octomap_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::octomap_msgs::Octomap_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::octomap_msgs::Octomap_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::octomap_msgs::Octomap_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::octomap_msgs::Octomap_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::octomap_msgs::Octomap_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::octomap_msgs::Octomap_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9a45536b45c5e409cd49f04bb2d9999f";
  }

  static const char* value(const ::octomap_msgs::Octomap_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9a45536b45c5e409ULL;
  static const uint64_t static_value2 = 0xcd49f04bb2d9999fULL;
};

template<class ContainerAllocator>
struct DataType< ::octomap_msgs::Octomap_<ContainerAllocator> >
{
  static const char* value()
  {
    return "octomap_msgs/Octomap";
  }

  static const char* value(const ::octomap_msgs::Octomap_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::octomap_msgs::Octomap_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# A 3D map in binary format, as Octree\n\
Header header\n\
\n\
# Flag to denote a binary (only free/occupied) or full occupancy octree (.bt/.ot file)\n\
bool binary\n\
\n\
# Class id of the contained octree \n\
string id\n\
\n\
# Resolution (in m) of the smallest octree nodes\n\
float64 resolution\n\
\n\
# binary serialization of octree, use conversions.h to read and write octrees\n\
int8[] data\n\
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
";
  }

  static const char* value(const ::octomap_msgs::Octomap_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::octomap_msgs::Octomap_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.binary);
      stream.next(m.id);
      stream.next(m.resolution);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Octomap_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::octomap_msgs::Octomap_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::octomap_msgs::Octomap_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "binary: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.binary);
    s << indent << "id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.id);
    s << indent << "resolution: ";
    Printer<double>::stream(s, indent + "  ", v.resolution);
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      Printer<int8_t>::stream(s, indent + "  ", v.data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // OCTOMAP_MSGS_MESSAGE_OCTOMAP_H