;; Auto-generated. Do not edit!


(when (boundp 'octomap_msgs::Octomap)
  (if (not (find-package "OCTOMAP_MSGS"))
    (make-package "OCTOMAP_MSGS"))
  (shadow 'Octomap (find-package "OCTOMAP_MSGS")))
(unless (find-package "OCTOMAP_MSGS::OCTOMAP")
  (make-package "OCTOMAP_MSGS::OCTOMAP"))

(in-package "ROS")
;;//! \htmlinclude Octomap.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass octomap_msgs::Octomap
  :super ros::object
  :slots (_header _binary _id _resolution _data ))

(defmethod octomap_msgs::Octomap
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:binary __binary) nil)
    ((:id __id) "")
    ((:resolution __resolution) 0.0)
    ((:data __data) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _header __header)
   (setq _binary __binary)
   (setq _id (string __id))
   (setq _resolution (float __resolution))
   (setq _data __data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:binary
   (&optional __binary)
   (if __binary (setq _binary __binary)) _binary)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:resolution
   (&optional __resolution)
   (if __resolution (setq _resolution __resolution)) _resolution)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _binary
    1
    ;; string _id
    4 (length _id)
    ;; float64 _resolution
    8
    ;; int8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _binary
       (if _binary (write-byte -1 s) (write-byte 0 s))
     ;; string _id
       (write-long (length _id) s) (princ _id s)
     ;; float64 _resolution
       (sys::poke _resolution (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (write-byte (elt _data i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _binary
     (setq _binary (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _resolution
     (setq _resolution (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _data i) 127) (setf (elt _data i) (- (elt _data i) 256)))
     ))
   ;;
   self)
  )

(setf (get octomap_msgs::Octomap :md5sum-) "9a45536b45c5e409cd49f04bb2d9999f")
(setf (get octomap_msgs::Octomap :datatype-) "octomap_msgs/Octomap")
(setf (get octomap_msgs::Octomap :definition-)
      "# A 3D map in binary format, as Octree
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



(provide :octomap_msgs/Octomap "9a45536b45c5e409cd49f04bb2d9999f")


