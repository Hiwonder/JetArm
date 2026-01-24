;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_interfaces::SetJointsValue)
  (if (not (find-package "HIWONDER_INTERFACES"))
    (make-package "HIWONDER_INTERFACES"))
  (shadow 'SetJointsValue (find-package "HIWONDER_INTERFACES")))
(unless (find-package "HIWONDER_INTERFACES::SETJOINTSVALUE")
  (make-package "HIWONDER_INTERFACES::SETJOINTSVALUE"))
(unless (find-package "HIWONDER_INTERFACES::SETJOINTSVALUEREQUEST")
  (make-package "HIWONDER_INTERFACES::SETJOINTSVALUEREQUEST"))
(unless (find-package "HIWONDER_INTERFACES::SETJOINTSVALUERESPONSE")
  (make-package "HIWONDER_INTERFACES::SETJOINTSVALUERESPONSE"))

(in-package "ROS")



(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass hiwonder_interfaces::SetJointsValueRequest
  :super ros::object
  :slots (_joints_value ))

(defmethod hiwonder_interfaces::SetJointsValueRequest
  (:init
   (&key
    ((:joints_value __joints_value) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joints_value __joints_value)
   self)
  (:joints_value
   (&optional __joints_value)
   (if __joints_value (setq _joints_value __joints_value)) _joints_value)
  (:serialization-length
   ()
   (+
    ;; float32[] _joints_value
    (* 4    (length _joints_value)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _joints_value
     (write-long (length _joints_value) s)
     (dotimes (i (length _joints_value))
       (sys::poke (elt _joints_value i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _joints_value
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joints_value (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joints_value i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass hiwonder_interfaces::SetJointsValueResponse
  :super ros::object
  :slots (_success _solution _pose ))

(defmethod hiwonder_interfaces::SetJointsValueResponse
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

(defclass hiwonder_interfaces::SetJointsValue
  :super ros::object
  :slots ())

(setf (get hiwonder_interfaces::SetJointsValue :md5sum-) "29009da2011b752eb3bde0b041ee37ea")
(setf (get hiwonder_interfaces::SetJointsValue :datatype-) "hiwonder_interfaces/SetJointsValue")
(setf (get hiwonder_interfaces::SetJointsValue :request) hiwonder_interfaces::SetJointsValueRequest)
(setf (get hiwonder_interfaces::SetJointsValue :response) hiwonder_interfaces::SetJointsValueResponse)

(defmethod hiwonder_interfaces::SetJointsValueRequest
  (:response () (instance hiwonder_interfaces::SetJointsValueResponse :init)))

(setf (get hiwonder_interfaces::SetJointsValueRequest :md5sum-) "29009da2011b752eb3bde0b041ee37ea")
(setf (get hiwonder_interfaces::SetJointsValueRequest :datatype-) "hiwonder_interfaces/SetJointsValueRequest")
(setf (get hiwonder_interfaces::SetJointsValueRequest :definition-)
      "float32[] joints_value
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

(setf (get hiwonder_interfaces::SetJointsValueResponse :md5sum-) "29009da2011b752eb3bde0b041ee37ea")
(setf (get hiwonder_interfaces::SetJointsValueResponse :datatype-) "hiwonder_interfaces/SetJointsValueResponse")
(setf (get hiwonder_interfaces::SetJointsValueResponse :definition-)
      "float32[] joints_value
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



(provide :hiwonder_interfaces/SetJointsValue "29009da2011b752eb3bde0b041ee37ea")


