;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_interfaces::SetJointValue)
  (if (not (find-package "HIWONDER_INTERFACES"))
    (make-package "HIWONDER_INTERFACES"))
  (shadow 'SetJointValue (find-package "HIWONDER_INTERFACES")))
(unless (find-package "HIWONDER_INTERFACES::SETJOINTVALUE")
  (make-package "HIWONDER_INTERFACES::SETJOINTVALUE"))
(unless (find-package "HIWONDER_INTERFACES::SETJOINTVALUEREQUEST")
  (make-package "HIWONDER_INTERFACES::SETJOINTVALUEREQUEST"))
(unless (find-package "HIWONDER_INTERFACES::SETJOINTVALUERESPONSE")
  (make-package "HIWONDER_INTERFACES::SETJOINTVALUERESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass hiwonder_interfaces::SetJointValueRequest
  :super ros::object
  :slots (_joint_value ))

(defmethod hiwonder_interfaces::SetJointValueRequest
  (:init
   (&key
    ((:joint_value __joint_value) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint_value __joint_value)
   self)
  (:joint_value
   (&optional __joint_value)
   (if __joint_value (setq _joint_value __joint_value)) _joint_value)
  (:serialization-length
   ()
   (+
    ;; float32[] _joint_value
    (* 4    (length _joint_value)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _joint_value
     (write-long (length _joint_value) s)
     (dotimes (i (length _joint_value))
       (sys::poke (elt _joint_value i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _joint_value
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_value (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_value i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass hiwonder_interfaces::SetJointValueResponse
  :super ros::object
  :slots (_success _solution _pose ))

(defmethod hiwonder_interfaces::SetJointValueResponse
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

(defclass hiwonder_interfaces::SetJointValue
  :super ros::object
  :slots ())

(setf (get hiwonder_interfaces::SetJointValue :md5sum-) "841f769c00b3378744250ae71b61c528")
(setf (get hiwonder_interfaces::SetJointValue :datatype-) "hiwonder_interfaces/SetJointValue")
(setf (get hiwonder_interfaces::SetJointValue :request) hiwonder_interfaces::SetJointValueRequest)
(setf (get hiwonder_interfaces::SetJointValue :response) hiwonder_interfaces::SetJointValueResponse)

(defmethod hiwonder_interfaces::SetJointValueRequest
  (:response () (instance hiwonder_interfaces::SetJointValueResponse :init)))

(setf (get hiwonder_interfaces::SetJointValueRequest :md5sum-) "841f769c00b3378744250ae71b61c528")
(setf (get hiwonder_interfaces::SetJointValueRequest :datatype-) "hiwonder_interfaces/SetJointValueRequest")
(setf (get hiwonder_interfaces::SetJointValueRequest :definition-)
      "float32[] joint_value
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

(setf (get hiwonder_interfaces::SetJointValueResponse :md5sum-) "841f769c00b3378744250ae71b61c528")
(setf (get hiwonder_interfaces::SetJointValueResponse :datatype-) "hiwonder_interfaces/SetJointValueResponse")
(setf (get hiwonder_interfaces::SetJointValueResponse :definition-)
      "float32[] joint_value
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



(provide :hiwonder_interfaces/SetJointValue "841f769c00b3378744250ae71b61c528")


