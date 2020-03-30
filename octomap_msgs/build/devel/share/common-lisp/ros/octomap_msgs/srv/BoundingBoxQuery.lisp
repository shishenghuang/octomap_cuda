; Auto-generated. Do not edit!


(cl:in-package octomap_msgs-srv)


;//! \htmlinclude BoundingBoxQuery-request.msg.html

(cl:defclass <BoundingBoxQuery-request> (roslisp-msg-protocol:ros-message)
  ((min
    :reader min
    :initarg :min
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (max
    :reader max
    :initarg :max
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass BoundingBoxQuery-request (<BoundingBoxQuery-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BoundingBoxQuery-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BoundingBoxQuery-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name octomap_msgs-srv:<BoundingBoxQuery-request> is deprecated: use octomap_msgs-srv:BoundingBoxQuery-request instead.")))

(cl:ensure-generic-function 'min-val :lambda-list '(m))
(cl:defmethod min-val ((m <BoundingBoxQuery-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader octomap_msgs-srv:min-val is deprecated.  Use octomap_msgs-srv:min instead.")
  (min m))

(cl:ensure-generic-function 'max-val :lambda-list '(m))
(cl:defmethod max-val ((m <BoundingBoxQuery-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader octomap_msgs-srv:max-val is deprecated.  Use octomap_msgs-srv:max instead.")
  (max m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BoundingBoxQuery-request>) ostream)
  "Serializes a message object of type '<BoundingBoxQuery-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'min) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'max) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BoundingBoxQuery-request>) istream)
  "Deserializes a message object of type '<BoundingBoxQuery-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'min) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'max) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BoundingBoxQuery-request>)))
  "Returns string type for a service object of type '<BoundingBoxQuery-request>"
  "octomap_msgs/BoundingBoxQueryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BoundingBoxQuery-request)))
  "Returns string type for a service object of type 'BoundingBoxQuery-request"
  "octomap_msgs/BoundingBoxQueryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BoundingBoxQuery-request>)))
  "Returns md5sum for a message object of type '<BoundingBoxQuery-request>"
  "93aa3d73b866f04880927745f4aab303")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BoundingBoxQuery-request)))
  "Returns md5sum for a message object of type 'BoundingBoxQuery-request"
  "93aa3d73b866f04880927745f4aab303")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BoundingBoxQuery-request>)))
  "Returns full string definition for message of type '<BoundingBoxQuery-request>"
  (cl:format cl:nil "~%~%~%geometry_msgs/Point min~%~%geometry_msgs/Point max~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BoundingBoxQuery-request)))
  "Returns full string definition for message of type 'BoundingBoxQuery-request"
  (cl:format cl:nil "~%~%~%geometry_msgs/Point min~%~%geometry_msgs/Point max~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BoundingBoxQuery-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'min))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'max))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BoundingBoxQuery-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BoundingBoxQuery-request
    (cl:cons ':min (min msg))
    (cl:cons ':max (max msg))
))
;//! \htmlinclude BoundingBoxQuery-response.msg.html

(cl:defclass <BoundingBoxQuery-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass BoundingBoxQuery-response (<BoundingBoxQuery-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BoundingBoxQuery-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BoundingBoxQuery-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name octomap_msgs-srv:<BoundingBoxQuery-response> is deprecated: use octomap_msgs-srv:BoundingBoxQuery-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BoundingBoxQuery-response>) ostream)
  "Serializes a message object of type '<BoundingBoxQuery-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BoundingBoxQuery-response>) istream)
  "Deserializes a message object of type '<BoundingBoxQuery-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BoundingBoxQuery-response>)))
  "Returns string type for a service object of type '<BoundingBoxQuery-response>"
  "octomap_msgs/BoundingBoxQueryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BoundingBoxQuery-response)))
  "Returns string type for a service object of type 'BoundingBoxQuery-response"
  "octomap_msgs/BoundingBoxQueryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BoundingBoxQuery-response>)))
  "Returns md5sum for a message object of type '<BoundingBoxQuery-response>"
  "93aa3d73b866f04880927745f4aab303")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BoundingBoxQuery-response)))
  "Returns md5sum for a message object of type 'BoundingBoxQuery-response"
  "93aa3d73b866f04880927745f4aab303")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BoundingBoxQuery-response>)))
  "Returns full string definition for message of type '<BoundingBoxQuery-response>"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BoundingBoxQuery-response)))
  "Returns full string definition for message of type 'BoundingBoxQuery-response"
  (cl:format cl:nil "~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BoundingBoxQuery-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BoundingBoxQuery-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BoundingBoxQuery-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BoundingBoxQuery)))
  'BoundingBoxQuery-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BoundingBoxQuery)))
  'BoundingBoxQuery-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BoundingBoxQuery)))
  "Returns string type for a service object of type '<BoundingBoxQuery>"
  "octomap_msgs/BoundingBoxQuery")