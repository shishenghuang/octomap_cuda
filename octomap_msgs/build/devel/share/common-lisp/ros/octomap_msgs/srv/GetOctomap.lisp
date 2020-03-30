; Auto-generated. Do not edit!


(cl:in-package octomap_msgs-srv)


;//! \htmlinclude GetOctomap-request.msg.html

(cl:defclass <GetOctomap-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetOctomap-request (<GetOctomap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetOctomap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetOctomap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name octomap_msgs-srv:<GetOctomap-request> is deprecated: use octomap_msgs-srv:GetOctomap-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetOctomap-request>) ostream)
  "Serializes a message object of type '<GetOctomap-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetOctomap-request>) istream)
  "Deserializes a message object of type '<GetOctomap-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetOctomap-request>)))
  "Returns string type for a service object of type '<GetOctomap-request>"
  "octomap_msgs/GetOctomapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetOctomap-request)))
  "Returns string type for a service object of type 'GetOctomap-request"
  "octomap_msgs/GetOctomapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetOctomap-request>)))
  "Returns md5sum for a message object of type '<GetOctomap-request>"
  "be9d2869d24fe40d6bc21ac21f6bb2c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetOctomap-request)))
  "Returns md5sum for a message object of type 'GetOctomap-request"
  "be9d2869d24fe40d6bc21ac21f6bb2c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetOctomap-request>)))
  "Returns full string definition for message of type '<GetOctomap-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetOctomap-request)))
  "Returns full string definition for message of type 'GetOctomap-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetOctomap-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetOctomap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetOctomap-request
))
;//! \htmlinclude GetOctomap-response.msg.html

(cl:defclass <GetOctomap-response> (roslisp-msg-protocol:ros-message)
  ((map
    :reader map
    :initarg :map
    :type octomap_msgs-msg:Octomap
    :initform (cl:make-instance 'octomap_msgs-msg:Octomap)))
)

(cl:defclass GetOctomap-response (<GetOctomap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetOctomap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetOctomap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name octomap_msgs-srv:<GetOctomap-response> is deprecated: use octomap_msgs-srv:GetOctomap-response instead.")))

(cl:ensure-generic-function 'map-val :lambda-list '(m))
(cl:defmethod map-val ((m <GetOctomap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader octomap_msgs-srv:map-val is deprecated.  Use octomap_msgs-srv:map instead.")
  (map m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetOctomap-response>) ostream)
  "Serializes a message object of type '<GetOctomap-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'map) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetOctomap-response>) istream)
  "Deserializes a message object of type '<GetOctomap-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'map) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetOctomap-response>)))
  "Returns string type for a service object of type '<GetOctomap-response>"
  "octomap_msgs/GetOctomapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetOctomap-response)))
  "Returns string type for a service object of type 'GetOctomap-response"
  "octomap_msgs/GetOctomapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetOctomap-response>)))
  "Returns md5sum for a message object of type '<GetOctomap-response>"
  "be9d2869d24fe40d6bc21ac21f6bb2c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetOctomap-response)))
  "Returns md5sum for a message object of type 'GetOctomap-response"
  "be9d2869d24fe40d6bc21ac21f6bb2c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetOctomap-response>)))
  "Returns full string definition for message of type '<GetOctomap-response>"
  (cl:format cl:nil "octomap_msgs/Octomap map~%~%~%================================================================================~%MSG: octomap_msgs/Octomap~%# A 3D map in binary format, as Octree~%Header header~%~%# Flag to denote a binary (only free/occupied) or full occupancy octree (.bt/.ot file)~%bool binary~%~%# Class id of the contained octree ~%string id~%~%# Resolution (in m) of the smallest octree nodes~%float64 resolution~%~%# binary serialization of octree, use conversions.h to read and write octrees~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetOctomap-response)))
  "Returns full string definition for message of type 'GetOctomap-response"
  (cl:format cl:nil "octomap_msgs/Octomap map~%~%~%================================================================================~%MSG: octomap_msgs/Octomap~%# A 3D map in binary format, as Octree~%Header header~%~%# Flag to denote a binary (only free/occupied) or full occupancy octree (.bt/.ot file)~%bool binary~%~%# Class id of the contained octree ~%string id~%~%# Resolution (in m) of the smallest octree nodes~%float64 resolution~%~%# binary serialization of octree, use conversions.h to read and write octrees~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetOctomap-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'map))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetOctomap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetOctomap-response
    (cl:cons ':map (map msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetOctomap)))
  'GetOctomap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetOctomap)))
  'GetOctomap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetOctomap)))
  "Returns string type for a service object of type '<GetOctomap>"
  "octomap_msgs/GetOctomap")