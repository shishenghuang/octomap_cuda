
(cl:in-package :asdf)

(defsystem "octomap_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Octomap" :depends-on ("_package_Octomap"))
    (:file "_package_Octomap" :depends-on ("_package"))
    (:file "OctomapWithPose" :depends-on ("_package_OctomapWithPose"))
    (:file "_package_OctomapWithPose" :depends-on ("_package"))
  ))