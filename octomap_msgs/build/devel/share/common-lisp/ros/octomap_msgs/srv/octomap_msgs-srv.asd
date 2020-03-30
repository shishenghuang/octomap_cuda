
(cl:in-package :asdf)

(defsystem "octomap_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :octomap_msgs-msg
)
  :components ((:file "_package")
    (:file "BoundingBoxQuery" :depends-on ("_package_BoundingBoxQuery"))
    (:file "_package_BoundingBoxQuery" :depends-on ("_package"))
    (:file "GetOctomap" :depends-on ("_package_GetOctomap"))
    (:file "_package_GetOctomap" :depends-on ("_package"))
  ))