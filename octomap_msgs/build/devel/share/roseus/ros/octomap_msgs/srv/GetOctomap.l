;; Auto-generated. Do not edit!


(when (boundp 'octomap_msgs::GetOctomap)
  (if (not (find-package "OCTOMAP_MSGS"))
    (make-package "OCTOMAP_MSGS"))
  (shadow 'GetOctomap (find-package "OCTOMAP_MSGS")))
(unless (find-package "OCTOMAP_MSGS::GETOCTOMAP")
  (make-package "OCTOMAP_MSGS::GETOCTOMAP"))
(unless (find-package "OCTOMAP_MSGS::GETOCTOMAPREQUEST")
  (make-package "OCTOMAP_MSGS::GETOCTOMAPREQUEST"))
(unless (find-package "OCTOMAP_MSGS::GETOCTOMAPRESPONSE")
  (make-package "OCTOMAP_MSGS::GETOCTOMAPRESPONSE"))

(in-package "ROS")





(defclass octomap_msgs::GetOctomapRequest
  :super ros::object
  :slots ())

(defmethod octomap_msgs::GetOctomapRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass octomap_msgs::GetOctomapResponse
  :super ros::object
  :slots (_map ))

(defmethod octomap_msgs::GetOctomapResponse
  (:init
   (&key
    ((:map __map) (instance octomap_msgs::Octomap :init))
    )
   (send-super :init)
   (setq _map __map)
   self)
  (:map
   (&rest __map)
   (if (keywordp (car __map))
       (send* _map __map)
     (progn
       (if __map (setq _map (car __map)))
       _map)))
  (:serialization-length
   ()
   (+
    ;; octomap_msgs/Octomap _map
    (send _map :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; octomap_msgs/Octomap _map
       (send _map :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; octomap_msgs/Octomap _map
     (send _map :deserialize buf ptr-) (incf ptr- (send _map :serialization-length))
   ;;
   self)
  )

(defclass octomap_msgs::GetOctomap
  :super ros::object
  :slots ())

(setf (get octomap_msgs::GetOctomap :md5sum-) "be9d2869d24fe40d6bc21ac21f6bb2c5")
(setf (get octomap_msgs::GetOctomap :datatype-) "octomap_msgs/GetOctomap")
(setf (get octomap_msgs::GetOctomap :request) octomap_msgs::GetOctomapRequest)
(setf (get octomap_msgs::GetOctomap :response) octomap_msgs::GetOctomapResponse)

(defmethod octomap_msgs::GetOctomapRequest
  (:response () (instance octomap_msgs::GetOctomapResponse :init)))

(setf (get octomap_msgs::GetOctomapRequest :md5sum-) "be9d2869d24fe40d6bc21ac21f6bb2c5")
(setf (get octomap_msgs::GetOctomapRequest :datatype-) "octomap_msgs/GetOctomapRequest")
(setf (get octomap_msgs::GetOctomapRequest :definition-)
      "
---
octomap_msgs/Octomap map


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
")

(setf (get octomap_msgs::GetOctomapResponse :md5sum-) "be9d2869d24fe40d6bc21ac21f6bb2c5")
(setf (get octomap_msgs::GetOctomapResponse :datatype-) "octomap_msgs/GetOctomapResponse")
(setf (get octomap_msgs::GetOctomapResponse :definition-)
      "
---
octomap_msgs/Octomap map


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
")



(provide :octomap_msgs/GetOctomap "be9d2869d24fe40d6bc21ac21f6bb2c5")


