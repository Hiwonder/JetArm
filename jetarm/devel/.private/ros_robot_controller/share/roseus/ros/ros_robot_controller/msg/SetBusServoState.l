;; Auto-generated. Do not edit!


(when (boundp 'ros_robot_controller::SetBusServoState)
  (if (not (find-package "ROS_ROBOT_CONTROLLER"))
    (make-package "ROS_ROBOT_CONTROLLER"))
  (shadow 'SetBusServoState (find-package "ROS_ROBOT_CONTROLLER")))
(unless (find-package "ROS_ROBOT_CONTROLLER::SETBUSSERVOSTATE")
  (make-package "ROS_ROBOT_CONTROLLER::SETBUSSERVOSTATE"))

(in-package "ROS")
;;//! \htmlinclude SetBusServoState.msg.html


(defclass ros_robot_controller::SetBusServoState
  :super ros::object
  :slots (_state _duration ))

(defmethod ros_robot_controller::SetBusServoState
  (:init
   (&key
    ((:state __state) ())
    ((:duration __duration) 0.0)
    )
   (send-super :init)
   (setq _state __state)
   (setq _duration (float __duration))
   self)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; ros_robot_controller/BusServoState[] _state
    (apply #'+ (send-all _state :serialization-length)) 4
    ;; float64 _duration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_robot_controller/BusServoState[] _state
     (write-long (length _state) s)
     (dolist (elem _state)
       (send elem :serialize s)
       )
     ;; float64 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_robot_controller/BusServoState[] _state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _state (let (r) (dotimes (i n) (push (instance ros_robot_controller::BusServoState :init) r)) r))
     (dolist (elem- _state)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64 _duration
     (setq _duration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_robot_controller::SetBusServoState :md5sum-) "4c162cb0075a537b5363b13444d6806c")
(setf (get ros_robot_controller::SetBusServoState :datatype-) "ros_robot_controller/SetBusServoState")
(setf (get ros_robot_controller::SetBusServoState :definition-)
      "ros_robot_controller/BusServoState[] state

float64 duration

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



(provide :ros_robot_controller/SetBusServoState "4c162cb0075a537b5363b13444d6806c")


