;; Auto-generated. Do not edit!


(when (boundp 'octomap_msgs::OctomapWithPose)
  (if (not (find-package "OCTOMAP_MSGS"))
    (make-package "OCTOMAP_MSGS"))
  (shadow 'OctomapWithPose (find-package "OCTOMAP_MSGS")))
(unless (find-package "OCTOMAP_MSGS::OCTOMAPWITHPOSE")
  (make-package "OCTOMAP_MSGS::OCTOMAPWITHPOSE"))

(in-package "ROS")
;;//! \htmlinclude OctomapWithPose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass octomap_msgs::OctomapWithPose
  :super ros::object
  :slots (_header _origin _octomap ))

(defmethod octomap_msgs::OctomapWithPose
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:origin __origin) (instance geometry_msgs::Pose :init))
    ((:octomap __octomap) (instance octomap_msgs::Octomap :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _origin __origin)
   (setq _octomap __octomap)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:origin
   (&rest __origin)
   (if (keywordp (car __origin))
       (send* _origin __origin)
     (progn
       (if __origin (setq _origin (car __origin)))
       _origin)))
  (:octomap
   (&rest __octomap)
   (if (keywordp (car __octomap))
       (send* _octomap __octomap)
     (progn
       (if __octomap (setq _octomap (car __octomap)))
       _octomap)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose _origin
    (send _origin :serialization-length)
    ;; octomap_msgs/Octomap _octomap
    (send _octomap :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose _origin
       (send _origin :serialize s)
     ;; octomap_msgs/Octomap _octomap
       (send _octomap :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose _origin
     (send _origin :deserialize buf ptr-) (incf ptr- (send _origin :serialization-length))
   ;; octomap_msgs/Octomap _octomap
     (send _octomap :deserialize buf ptr-) (incf ptr- (send _octomap :serialization-length))
   ;;
   self)
  )

(setf (get octomap_msgs::OctomapWithPose :md5sum-) "20b380aca6a508a657e95526cddaf618")
(setf (get octomap_msgs::OctomapWithPose :datatype-) "octomap_msgs/OctomapWithPose")
(setf (get octomap_msgs::OctomapWithPose :definition-)
      "# A 3D map in binary format, as Octree
Header header

# The pose of the octree with respect to the header frame 
geometry_msgs/Pose origin

# The actual octree msg
octomap_msgs/Octomap octomap

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: octomap_msgs/Octomap
# A 3D map in binary format, as Octree
Header header

# Flag to denote a binary (only free/occupied) or full occupancy octree (.bt/.ot file)
bool binary

# Class id of the contained octree 
string id

# Resolution (in m) of the smallest octree nodes
float64 resolution

# binary serialization of octree, use conversions.h to read and write octrees
int8[] data

")



(provide :octomap_msgs/OctomapWithPose "20b380aca6a508a657e95526cddaf618")


