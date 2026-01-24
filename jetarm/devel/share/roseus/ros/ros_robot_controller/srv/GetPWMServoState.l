;; Auto-generated. Do not edit!


(when (boundp 'ros_robot_controller::GetPWMServoState)
  (if (not (find-package "ROS_ROBOT_CONTROLLER"))
    (make-package "ROS_ROBOT_CONTROLLER"))
  (shadow 'GetPWMServoState (find-package "ROS_ROBOT_CONTROLLER")))
(unless (find-package "ROS_ROBOT_CONTROLLER::GETPWMSERVOSTATE")
  (make-package "ROS_ROBOT_CONTROLLER::GETPWMSERVOSTATE"))
(unless (find-package "ROS_ROBOT_CONTROLLER::GETPWMSERVOSTATEREQUEST")
  (make-package "ROS_ROBOT_CONTROLLER::GETPWMSERVOSTATEREQUEST"))
(unless (find-package "ROS_ROBOT_CONTROLLER::GETPWMSERVOSTATERESPONSE")
  (make-package "ROS_ROBOT_CONTROLLER::GETPWMSERVOSTATERESPONSE"))

(in-package "ROS")





(defclass ros_robot_controller::GetPWMServoStateRequest
  :super ros::object
  :slots (_cmd ))

(defmethod ros_robot_controller::GetPWMServoStateRequest
  (:init
   (&key
    ((:cmd __cmd) ())
    )
   (send-super :init)
   (setq _cmd __cmd)
   self)
  (:cmd
   (&rest __cmd)
   (if (keywordp (car __cmd))
       (send* _cmd __cmd)
     (progn
       (if __cmd (setq _cmd (car __cmd)))
       _cmd)))
  (:serialization-length
   ()
   (+
    ;; ros_robot_controller/GetPWMServoCmd[] _cmd
    (apply #'+ (send-all _cmd :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_robot_controller/GetPWMServoCmd[] _cmd
     (write-long (length _cmd) s)
     (dolist (elem _cmd)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_robot_controller/GetPWMServoCmd[] _cmd
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cmd (let (r) (dotimes (i n) (push (instance ros_robot_controller::GetPWMServoCmd :init) r)) r))
     (dolist (elem- _cmd)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass ros_robot_controller::GetPWMServoStateResponse
  :super ros::object
  :slots (_success _state ))

(defmethod ros_robot_controller::GetPWMServoStateResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:state __state) ())
    )
   (send-super :init)
   (setq _success __success)
   (setq _state __state)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; ros_robot_controller/PWMServoState[] _state
    (apply #'+ (send-all _state :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; ros_robot_controller/PWMServoState[] _state
     (write-long (length _state) s)
     (dolist (elem _state)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; ros_robot_controller/PWMServoState[] _state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _state (let (r) (dotimes (i n) (push (instance ros_robot_controller::PWMServoState :init) r)) r))
     (dolist (elem- _state)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass ros_robot_controller::GetPWMServoState
  :super ros::object
  :slots ())

(setf (get ros_robot_controller::GetPWMServoState :md5sum-) "eccb5a32f9dcce6f34bacf96f9507544")
(setf (get ros_robot_controller::GetPWMServoState :datatype-) "ros_robot_controller/GetPWMServoState")
(setf (get ros_robot_controller::GetPWMServoState :request) ros_robot_controller::GetPWMServoStateRequest)
(setf (get ros_robot_controller::GetPWMServoState :response) ros_robot_controller::GetPWMServoStateResponse)

(defmethod ros_robot_controller::GetPWMServoStateRequest
  (:response () (instance ros_robot_controller::GetPWMServoStateResponse :init)))

(setf (get ros_robot_controller::GetPWMServoStateRequest :md5sum-) "eccb5a32f9dcce6f34bacf96f9507544")
(setf (get ros_robot_controller::GetPWMServoStateRequest :datatype-) "ros_robot_controller/GetPWMServoStateRequest")
(setf (get ros_robot_controller::GetPWMServoStateRequest :definition-)
      "ros_robot_controller/GetPWMServoCmd[] cmd

================================================================================
MSG: ros_robot_controller/GetPWMServoCmd
uint8 get_position
uint8 get_offset
---
bool success
ros_robot_controller/PWMServoState[] state


================================================================================
MSG: ros_robot_controller/PWMServoState
uint16[] id
uint16[] position
int16[] offset
")

(setf (get ros_robot_controller::GetPWMServoStateResponse :md5sum-) "eccb5a32f9dcce6f34bacf96f9507544")
(setf (get ros_robot_controller::GetPWMServoStateResponse :datatype-) "ros_robot_controller/GetPWMServoStateResponse")
(setf (get ros_robot_controller::GetPWMServoStateResponse :definition-)
      "ros_robot_controller/GetPWMServoCmd[] cmd

================================================================================
MSG: ros_robot_controller/GetPWMServoCmd
uint8 get_position
uint8 get_offset
---
bool success
ros_robot_controller/PWMServoState[] state


================================================================================
MSG: ros_robot_controller/PWMServoState
uint16[] id
uint16[] position
int16[] offset
")



(provide :ros_robot_controller/GetPWMServoState "eccb5a32f9dcce6f34bacf96f9507544")


