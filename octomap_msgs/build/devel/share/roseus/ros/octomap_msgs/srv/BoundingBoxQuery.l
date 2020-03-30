;; Auto-generated. Do not edit!


(when (boundp 'octomap_msgs::BoundingBoxQuery)
  (if (not (find-package "OCTOMAP_MSGS"))
    (make-package "OCTOMAP_MSGS"))
  (shadow 'BoundingBoxQuery (find-package "OCTOMAP_MSGS")))
(unless (find-package "OCTOMAP_MSGS::BOUNDINGBOXQUERY")
  (make-package "OCTOMAP_MSGS::BOUNDINGBOXQUERY"))
(unless (find-package "OCTOMAP_MSGS::BOUNDINGBOXQUERYREQUEST")
  (make-package "OCTOMAP_MSGS::BOUNDINGBOXQUERYREQUEST"))
(unless (find-package "OCTOMAP_MSGS::BOUNDINGBOXQUERYRESPONSE")
  (make-package "OCTOMAP_MSGS::BOUNDINGBOXQUERYRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass octomap_msgs::BoundingBoxQueryRequest
  :super ros::object
  :slots (_min _max ))

(defmethod octomap_msgs::BoundingBoxQueryRequest
  (:init
   (&key
    ((:min __min) (instance geometry_msgs::Point :init))
    ((:max __max) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _min __min)
   (setq _max __max)
   self)
  (:min
   (&rest __min)
   (if (keywordp (car __min))
       (send* _min __min)
     (progn
       (if __min (setq _min (car __min)))
       _min)))
  (:max
   (&rest __max)
   (if (keywordp (car __max))
       (send* _max __max)
     (progn
       (if __max (setq _max (car __max)))
       _max)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _min
    (send _min :serialization-length)
    ;; geometry_msgs/Point _max
    (send _max :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _min
       (send _min :serialize s)
     ;; geometry_msgs/Point _max
       (send _max :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _min
     (send _min :deserialize buf ptr-) (incf ptr- (send _min :serialization-length))
   ;; geometry_msgs/Point _max
     (send _max :deserialize buf ptr-) (incf ptr- (send _max :serialization-length))
   ;;
   self)
  )

(defclass octomap_msgs::BoundingBoxQueryResponse
  :super ros::object
  :slots ())

(defmethod octomap_msgs::BoundingBoxQueryResponse
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

(defclass octomap_msgs::BoundingBoxQuery
  :super ros::object
  :slots ())

(setf (get octomap_msgs::BoundingBoxQuery :md5sum-) "93aa3d73b866f04880927745f4aab303")
(setf (get octomap_msgs::BoundingBoxQuery :datatype-) "octomap_msgs/BoundingBoxQuery")
(setf (get octomap_msgs::BoundingBoxQuery :request) octomap_msgs::BoundingBoxQueryRequest)
(setf (get octomap_msgs::BoundingBoxQuery :response) octomap_msgs::BoundingBoxQueryResponse)

(defmethod octomap_msgs::BoundingBoxQueryRequest
  (:response () (instance octomap_msgs::BoundingBoxQueryResponse :init)))

(setf (get octomap_msgs::BoundingBoxQueryRequest :md5sum-) "93aa3d73b866f04880927745f4aab303")
(setf (get octomap_msgs::BoundingBoxQueryRequest :datatype-) "octomap_msgs/BoundingBoxQueryRequest")
(setf (get octomap_msgs::BoundingBoxQueryRequest :definition-)
      "


geometry_msgs/Point min

geometry_msgs/Point max

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---


")

(setf (get octomap_msgs::BoundingBoxQueryResponse :md5sum-) "93aa3d73b866f04880927745f4aab303")
(setf (get octomap_msgs::BoundingBoxQueryResponse :datatype-) "octomap_msgs/BoundingBoxQueryResponse")
(setf (get octomap_msgs::BoundingBoxQueryResponse :definition-)
      "


geometry_msgs/Point min

geometry_msgs/Point max

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---


")



(provide :octomap_msgs/BoundingBoxQuery "93aa3d73b866f04880927745f4aab303")


