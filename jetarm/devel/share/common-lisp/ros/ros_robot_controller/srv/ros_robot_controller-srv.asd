
(cl:in-package :asdf)

(defsystem "ros_robot_controller-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :ros_robot_controller-msg
)
  :components ((:file "_package")
    (:file "GetBusServoState" :depends-on ("_package_GetBusServoState"))
    (:file "_package_GetBusServoState" :depends-on ("_package"))
    (:file "GetPWMServoState" :depends-on ("_package_GetPWMServoState"))
    (:file "_package_GetPWMServoState" :depends-on ("_package"))
  ))