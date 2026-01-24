;; Auto-generated. Do not edit!


(when (boundp 'ros_robot_controller::GetBusServoState)
  (if (not (find-package "ROS_ROBOT_CONTROLLER"))
    (make-package "ROS_ROBOT_CONTROLLER"))
  (shadow 'GetBusServoState (find-package "ROS_ROBOT_CONTROLLER")))
(unless (find-package "ROS_ROBOT_CONTROLLER::GETBUSSERVOSTATE")
  (make-package "ROS_ROBOT_CONTROLLER::GETBUSSERVOSTATE"))
(unless (find-package "ROS_ROBOT_CONTROLLER::GETBUSSERVOSTATEREQUEST")
  (make-package "ROS_ROBOT_CONTROLLER::GETBUSSERVOSTATEREQUEST"))
(unless (find-package "ROS_ROBOT_CONTROLLER::GETBUSSERVOSTATERESPONSE")
  (make-package "ROS_ROBOT_CONTROLLER::GETBUSSERVOSTATERESPONSE"))

(in-package "ROS")





(defclass ros_robot_controller::GetBusServoStateRequest
  :super ros::object
  :slots (_cmd ))

(defmethod ros_robot_controller::GetBusServoStateRequest
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
    ;; ros_robot_controller/GetBusServoCmd[] _cmd
    (apply #'+ (send-all _cmd :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_robot_controller/GetBusServoCmd[] _cmd
     (write-long (length _cmd) s)
     (dolist (elem _cmd)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_robot_controller/GetBusServoCmd[] _cmd
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cmd (let (r) (dotimes (i n) (push (instance ros_robot_controller::GetBusServoCmd :init) r)) r))
     (dolist (elem- _cmd)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass ros_robot_controller::GetBusServoStateResponse
  :super ros::object
  :slots (_success _state ))

(defmethod ros_robot_controller::GetBusServoStateResponse
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
    ;; ros_robot_controller/BusServoState[] _state
    (apply #'+ (send-all _state :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; ros_robot_controller/BusServoState[] _state
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
   ;; ros_robot_controller/BusServoState[] _state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _state (let (r) (dotimes (i n) (push (instance ros_robot_controller::BusServoState :init) r)) r))
     (dolist (elem- _state)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass ros_robot_controller::GetBusServoState
  :super ros::object
  :slots ())

(setf (get ros_robot_controller::GetBusServoState :md5sum-) "54f81ea2fc5cd9bb899d788802438b6e")
(setf (get ros_robot_controller::GetBusServoState :datatype-) "ros_robot_controller/GetBusServoState")
(setf (get ros_robot_controller::GetBusServoState :request) ros_robot_controller::GetBusServoStateRequest)
(setf (get ros_robot_controller::GetBusServoState :response) ros_robot_controller::GetBusServoStateResponse)

(defmethod ros_robot_controller::GetBusServoStateRequest
  (:response () (instance ros_robot_controller::GetBusServoStateResponse :init)))

(setf (get ros_robot_controller::GetBusServoStateRequest :md5sum-) "54f81ea2fc5cd9bb899d788802438b6e")
(setf (get ros_robot_controller::GetBusServoStateRequest :datatype-) "ros_robot_controller/GetBusServoStateRequest")
(setf (get ros_robot_controller::GetBusServoStateRequest :definition-)
      "ros_robot_controller/GetBusServoCmd[] cmd

================================================================================
MSG: ros_robot_controller/GetBusServoCmd
uint8 id
uint8 get_id
uint8 get_position
uint8 get_offset
uint8 get_voltage
uint8 get_temperature
uint8 get_position_limit
uint8 get_voltage_limit
uint8 get_max_temperature_limit
uint8 get_torque_state
---
bool success
ros_robot_controller/BusServoState[] state


================================================================================
MSG: ros_robot_controller/BusServoState
uint16[] present_id
uint16[] target_id
uint16[] position
int16[] offset
uint16[] voltage
uint16[] temperature
uint16[] position_limit
uint16[] voltage_limit
uint16[] max_temperature_limit
uint16[] enable_torque
uint16[] save_offset
uint16[] stop

")

(setf (get ros_robot_controller::GetBusServoStateResponse :md5sum-) "54f81ea2fc5cd9bb899d788802438b6e")
(setf (get ros_robot_controller::GetBusServoStateResponse :datatype-) "ros_robot_controller/GetBusServoStateResponse")
(setf (get ros_robot_controller::GetBusServoStateResponse :definition-)
      "ros_robot_controller/GetBusServoCmd[] cmd

================================================================================
MSG: ros_robot_controller/GetBusServoCmd
uint8 id
uint8 get_id
uint8 get_position
uint8 get_offset
uint8 get_voltage
uint8 get_temperature
uint8 get_position_limit
uint8 get_voltage_limit
uint8 get_max_temperature_limit
uint8 get_torque_state
---
bool success
ros_robot_controller/BusServoState[] state


================================================================================
MSG: ros_robot_controller/BusServoState
uint16[] present_id
uint16[] target_id
uint16[] position
int16[] offset
uint16[] voltage
uint16[] temperature
uint16[] position_limit
uint16[] voltage_limit
uint16[] max_temperature_limit
uint16[] enable_torque
uint16[] save_offset
uint16[] stop

")



(provide :ros_robot_controller/GetBusServoState "54f81ea2fc5cd9bb899d788802438b6e")


