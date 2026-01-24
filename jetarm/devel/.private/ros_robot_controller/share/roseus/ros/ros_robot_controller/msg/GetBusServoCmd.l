;; Auto-generated. Do not edit!


(when (boundp 'ros_robot_controller::GetBusServoCmd)
  (if (not (find-package "ROS_ROBOT_CONTROLLER"))
    (make-package "ROS_ROBOT_CONTROLLER"))
  (shadow 'GetBusServoCmd (find-package "ROS_ROBOT_CONTROLLER")))
(unless (find-package "ROS_ROBOT_CONTROLLER::GETBUSSERVOCMD")
  (make-package "ROS_ROBOT_CONTROLLER::GETBUSSERVOCMD"))

(in-package "ROS")
;;//! \htmlinclude GetBusServoCmd.msg.html


(defclass ros_robot_controller::GetBusServoCmd
  :super ros::object
  :slots (_id _get_id _get_position _get_offset _get_voltage _get_temperature _get_position_limit _get_voltage_limit _get_max_temperature_limit _get_torque_state ))

(defmethod ros_robot_controller::GetBusServoCmd
  (:init
   (&key
    ((:id __id) 0)
    ((:get_id __get_id) 0)
    ((:get_position __get_position) 0)
    ((:get_offset __get_offset) 0)
    ((:get_voltage __get_voltage) 0)
    ((:get_temperature __get_temperature) 0)
    ((:get_position_limit __get_position_limit) 0)
    ((:get_voltage_limit __get_voltage_limit) 0)
    ((:get_max_temperature_limit __get_max_temperature_limit) 0)
    ((:get_torque_state __get_torque_state) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _get_id (round __get_id))
   (setq _get_position (round __get_position))
   (setq _get_offset (round __get_offset))
   (setq _get_voltage (round __get_voltage))
   (setq _get_temperature (round __get_temperature))
   (setq _get_position_limit (round __get_position_limit))
   (setq _get_voltage_limit (round __get_voltage_limit))
   (setq _get_max_temperature_limit (round __get_max_temperature_limit))
   (setq _get_torque_state (round __get_torque_state))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:get_id
   (&optional __get_id)
   (if __get_id (setq _get_id __get_id)) _get_id)
  (:get_position
   (&optional __get_position)
   (if __get_position (setq _get_position __get_position)) _get_position)
  (:get_offset
   (&optional __get_offset)
   (if __get_offset (setq _get_offset __get_offset)) _get_offset)
  (:get_voltage
   (&optional __get_voltage)
   (if __get_voltage (setq _get_voltage __get_voltage)) _get_voltage)
  (:get_temperature
   (&optional __get_temperature)
   (if __get_temperature (setq _get_temperature __get_temperature)) _get_temperature)
  (:get_position_limit
   (&optional __get_position_limit)
   (if __get_position_limit (setq _get_position_limit __get_position_limit)) _get_position_limit)
  (:get_voltage_limit
   (&optional __get_voltage_limit)
   (if __get_voltage_limit (setq _get_voltage_limit __get_voltage_limit)) _get_voltage_limit)
  (:get_max_temperature_limit
   (&optional __get_max_temperature_limit)
   (if __get_max_temperature_limit (setq _get_max_temperature_limit __get_max_temperature_limit)) _get_max_temperature_limit)
  (:get_torque_state
   (&optional __get_torque_state)
   (if __get_torque_state (setq _get_torque_state __get_torque_state)) _get_torque_state)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; uint8 _get_id
    1
    ;; uint8 _get_position
    1
    ;; uint8 _get_offset
    1
    ;; uint8 _get_voltage
    1
    ;; uint8 _get_temperature
    1
    ;; uint8 _get_position_limit
    1
    ;; uint8 _get_voltage_limit
    1
    ;; uint8 _get_max_temperature_limit
    1
    ;; uint8 _get_torque_state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; uint8 _get_id
       (write-byte _get_id s)
     ;; uint8 _get_position
       (write-byte _get_position s)
     ;; uint8 _get_offset
       (write-byte _get_offset s)
     ;; uint8 _get_voltage
       (write-byte _get_voltage s)
     ;; uint8 _get_temperature
       (write-byte _get_temperature s)
     ;; uint8 _get_position_limit
       (write-byte _get_position_limit s)
     ;; uint8 _get_voltage_limit
       (write-byte _get_voltage_limit s)
     ;; uint8 _get_max_temperature_limit
       (write-byte _get_max_temperature_limit s)
     ;; uint8 _get_torque_state
       (write-byte _get_torque_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _get_id
     (setq _get_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _get_position
     (setq _get_position (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _get_offset
     (setq _get_offset (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _get_voltage
     (setq _get_voltage (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _get_temperature
     (setq _get_temperature (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _get_position_limit
     (setq _get_position_limit (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _get_voltage_limit
     (setq _get_voltage_limit (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _get_max_temperature_limit
     (setq _get_max_temperature_limit (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _get_torque_state
     (setq _get_torque_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_robot_controller::GetBusServoCmd :md5sum-) "18e5c6926d8d8fbfd6f905fb9d21ff40")
(setf (get ros_robot_controller::GetBusServoCmd :datatype-) "ros_robot_controller/GetBusServoCmd")
(setf (get ros_robot_controller::GetBusServoCmd :definition-)
      "uint8 id
uint8 get_id
uint8 get_position
uint8 get_offset
uint8 get_voltage
uint8 get_temperature
uint8 get_position_limit
uint8 get_voltage_limit
uint8 get_max_temperature_limit
uint8 get_torque_state

")



(provide :ros_robot_controller/GetBusServoCmd "18e5c6926d8d8fbfd6f905fb9d21ff40")


