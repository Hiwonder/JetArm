;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_interfaces::GetRobotPose)
  (if (not (find-package "HIWONDER_INTERFACES"))
    (make-package "HIWONDER_INTERFACES"))
  (shadow 'GetRobotPose (find-package "HIWONDER_INTERFACES")))
(unless (find-package "HIWONDER_INTERFACES::GETROBOTPOSE")
  (make-package "HIWONDER_INTERFACES::GETROBOTPOSE"))
(unless (find-package "HIWONDER_INTERFACES::GETROBOTPOSEREQUEST")
  (make-package "HIWONDER_INTERFACES::GETROBOTPOSEREQUEST"))
(unless (find-package "HIWONDER_INTERFACES::GETROBOTPOSERESPONSE")
  (make-package "HIWONDER_INTERFACES::GETROBOTPOSERESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass hiwonder_interfaces::GetRobotPoseRequest
  :super ros::object
  :slots ())

(defmethod hiwonder_interfaces::GetRobotPoseRequest
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

(defclass hiwonder_interfaces::GetRobotPoseResponse
  :super ros::object
  :slots (_success _solution _pose ))

(defmethod hiwonder_interfaces::GetRobotPoseResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:solution __solution) nil)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _success __success)
   (setq _solution __solution)
   (setq _pose __pose)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:solution
   (&optional (__solution :null))
   (if (not (eq __solution :null)) (setq _solution __solution)) _solution)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; bool _solution
    1
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; bool _solution
       (if _solution (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _solution
     (setq _solution (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(defclass hiwonder_interfaces::GetRobotPose
  :super ros::object
  :slots ())

(setf (get hiwonder_interfaces::GetRobotPose :md5sum-) "7e34dc38014b735f72f1da76fa4f5008")
(setf (get hiwonder_interfaces::GetRobotPose :datatype-) "hiwonder_interfaces/GetRobotPose")
(setf (get hiwonder_interfaces::GetRobotPose :request) hiwonder_interfaces::GetRobotPoseRequest)
(setf (get hiwonder_interfaces::GetRobotPose :response) hiwonder_interfaces::GetRobotPoseResponse)

(defmethod hiwonder_interfaces::GetRobotPoseRequest
  (:response () (instance hiwonder_interfaces::GetRobotPoseResponse :init)))

(setf (get hiwonder_interfaces::GetRobotPoseRequest :md5sum-) "7e34dc38014b735f72f1da76fa4f5008")
(setf (get hiwonder_interfaces::GetRobotPoseRequest :datatype-) "hiwonder_interfaces/GetRobotPoseRequest")
(setf (get hiwonder_interfaces::GetRobotPoseRequest :definition-)
      "
---
bool success
bool solution
geometry_msgs/Pose pose


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
")

(setf (get hiwonder_interfaces::GetRobotPoseResponse :md5sum-) "7e34dc38014b735f72f1da76fa4f5008")
(setf (get hiwonder_interfaces::GetRobotPoseResponse :datatype-) "hiwonder_interfaces/GetRobotPoseResponse")
(setf (get hiwonder_interfaces::GetRobotPoseResponse :definition-)
      "
---
bool success
bool solution
geometry_msgs/Pose pose


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
")



(provide :hiwonder_interfaces/GetRobotPose "7e34dc38014b735f72f1da76fa4f5008")


