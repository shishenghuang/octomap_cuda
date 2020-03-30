; Auto-generated. Do not edit!


(cl:in-package octomap_msgs-msg)


;//! \htmlinclude OctomapWithPose.msg.html

(cl:defclass <OctomapWithPose> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (origin
    :reader origin
    :initarg :origin
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (octomap
    :reader octomap
    :initarg :octomap
    :type octomap_msgs-msg:Octomap
    :initform (cl:make-instance 'octomap_msgs-msg:Octomap)))
)

(cl:defclass OctomapWithPose (<OctomapWithPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OctomapWithPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OctomapWithPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name octomap_msgs-msg:<OctomapWithPose> is deprecated: use octomap_msgs-msg:OctomapWithPose instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <OctomapWithPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader octomap_msgs-msg:header-val is deprecated.  Use octomap_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'origin-val :lambda-list '(m))
(cl:defmethod origin-val ((m <OctomapWithPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader octomap_msgs-msg:origin-val is deprecated.  Use octomap_msgs-msg:origin instead.")
  (origin m))

(cl:ensure-generic-function 'octomap-val :lambda-list '(m))
(cl:defmethod octomap-val ((m <OctomapWithPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader octomap_msgs-msg:octomap-val is deprecated.  Use octomap_msgs-msg:octomap instead.")
  (octomap m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OctomapWithPose>) ostream)
  "Serializes a message object of type '<OctomapWithPose>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'origin) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'octomap) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OctomapWithPose>) istream)
  "Deserializes a message object of type '<OctomapWithPose>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'origin) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'octomap) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OctomapWithPose>)))
  "Returns string type for a message object of type '<OctomapWithPose>"
  "octomap_msgs/OctomapWithPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OctomapWithPose)))
  "Returns string type for a message object of type 'OctomapWithPose"
  "octomap_msgs/OctomapWithPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OctomapWithPose>)))
  "Returns md5sum for a message object of type '<OctomapWithPose>"
  "20b380aca6a508a657e95526cddaf618")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OctomapWithPose)))
  "Returns md5sum for a message object of type 'OctomapWithPose"
  "20b380aca6a508a657e95526cddaf618")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OctomapWithPose>)))
  "Returns full string definition for message of type '<OctomapWithPose>"
  (cl:format cl:nil "# A 3D map in binary format, as Octree~%Header header~%~%# The pose of the octree with respect to the header frame ~%geometry_msgs/Pose origin~%~%# The actual octree msg~%octomap_msgs/Octomap octomap~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: octomap_msgs/Octomap~%# A 3D map in binary format, as Octree~%Header header~%~%# Flag to denote a binary (only free/occupied) or full occupancy octree (.bt/.ot file)~%bool binary~%~%# Class id of the contained octree ~%string id~%~%# Resolution (in m) of the smallest octree nodes~%float64 resolution~%~%# binary serialization of octree, use conversions.h to read and write octrees~%int8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OctomapWithPose)))
  "Returns full string definition for message of type 'OctomapWithPose"
  (cl:format cl:nil "# A 3D map in binary format, as Octree~%Header header~%~%# The pose of the octree with respect to the header frame ~%geometry_msgs/Pose origin~%~%# The actual octree msg~%octomap_msgs/Octomap octomap~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: octomap_msgs/Octomap~%# A 3D map in binary format, as Octree~%Header header~%~%# Flag to denote a binary (only free/occupied) or full occupancy octree (.bt/.ot file)~%bool binary~%~%# Class id of the contained octree ~%string id~%~%# Resolution (in m) of the smallest octree nodes~%float64 resolution~%~%# binary serialization of octree, use conversions.h to read and write octrees~%int8[] data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OctomapWithPose>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'origin))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'octomap))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OctomapWithPose>))
  "Converts a ROS message object to a list"
  (cl:list 'OctomapWithPose
    (cl:cons ':header (header msg))
    (cl:cons ':origin (origin msg))
    (cl:cons ':octomap (octomap msg))
))
