;; Auto-generated. Do not edit!


(when (boundp 'ros_robot_controller::BusServoState)
  (if (not (find-package "ROS_ROBOT_CONTROLLER"))
    (make-package "ROS_ROBOT_CONTROLLER"))
  (shadow 'BusServoState (find-package "ROS_ROBOT_CONTROLLER")))
(unless (find-package "ROS_ROBOT_CONTROLLER::BUSSERVOSTATE")
  (make-package "ROS_ROBOT_CONTROLLER::BUSSERVOSTATE"))

(in-package "ROS")
;;//! \htmlinclude BusServoState.msg.html


(defclass ros_robot_controller::BusServoState
  :super ros::object
  :slots (_present_id _target_id _position _offset _voltage _temperature _position_limit _voltage_limit _max_temperature_limit _enable_torque _save_offset _stop ))

(defmethod ros_robot_controller::BusServoState
  (:init
   (&key
    ((:present_id __present_id) (make-array 0 :initial-element 0 :element-type :integer))
    ((:target_id __target_id) (make-array 0 :initial-element 0 :element-type :integer))
    ((:position __position) (make-array 0 :initial-element 0 :element-type :integer))
    ((:offset __offset) (make-array 0 :initial-element 0 :element-type :integer))
    ((:voltage __voltage) (make-array 0 :initial-element 0 :element-type :integer))
    ((:temperature __temperature) (make-array 0 :initial-element 0 :element-type :integer))
    ((:position_limit __position_limit) (make-array 0 :initial-element 0 :element-type :integer))
    ((:voltage_limit __voltage_limit) (make-array 0 :initial-element 0 :element-type :integer))
    ((:max_temperature_limit __max_temperature_limit) (make-array 0 :initial-element 0 :element-type :integer))
    ((:enable_torque __enable_torque) (make-array 0 :initial-element 0 :element-type :integer))
    ((:save_offset __save_offset) (make-array 0 :initial-element 0 :element-type :integer))
    ((:stop __stop) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _present_id __present_id)
   (setq _target_id __target_id)
   (setq _position __position)
   (setq _offset __offset)
   (setq _voltage __voltage)
   (setq _temperature __temperature)
   (setq _position_limit __position_limit)
   (setq _voltage_limit __voltage_limit)
   (setq _max_temperature_limit __max_temperature_limit)
   (setq _enable_torque __enable_torque)
   (setq _save_offset __save_offset)
   (setq _stop __stop)
   self)
  (:present_id
   (&optional __present_id)
   (if __present_id (setq _present_id __present_id)) _present_id)
  (:target_id
   (&optional __target_id)
   (if __target_id (setq _target_id __target_id)) _target_id)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:position_limit
   (&optional __position_limit)
   (if __position_limit (setq _position_limit __position_limit)) _position_limit)
  (:voltage_limit
   (&optional __voltage_limit)
   (if __voltage_limit (setq _voltage_limit __voltage_limit)) _voltage_limit)
  (:max_temperature_limit
   (&optional __max_temperature_limit)
   (if __max_temperature_limit (setq _max_temperature_limit __max_temperature_limit)) _max_temperature_limit)
  (:enable_torque
   (&optional __enable_torque)
   (if __enable_torque (setq _enable_torque __enable_torque)) _enable_torque)
  (:save_offset
   (&optional __save_offset)
   (if __save_offset (setq _save_offset __save_offset)) _save_offset)
  (:stop
   (&optional __stop)
   (if __stop (setq _stop __stop)) _stop)
  (:serialization-length
   ()
   (+
    ;; uint16[] _present_id
    (* 2    (length _present_id)) 4
    ;; uint16[] _target_id
    (* 2    (length _target_id)) 4
    ;; uint16[] _position
    (* 2    (length _position)) 4
    ;; int16[] _offset
    (* 2    (length _offset)) 4
    ;; uint16[] _voltage
    (* 2    (length _voltage)) 4
    ;; uint16[] _temperature
    (* 2    (length _temperature)) 4
    ;; uint16[] _position_limit
    (* 2    (length _position_limit)) 4
    ;; uint16[] _voltage_limit
    (* 2    (length _voltage_limit)) 4
    ;; uint16[] _max_temperature_limit
    (* 2    (length _max_temperature_limit)) 4
    ;; uint16[] _enable_torque
    (* 2    (length _enable_torque)) 4
    ;; uint16[] _save_offset
    (* 2    (length _save_offset)) 4
    ;; uint16[] _stop
    (* 2    (length _stop)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16[] _present_id
     (write-long (length _present_id) s)
     (dotimes (i (length _present_id))
       (write-word (elt _present_id i) s)
       )
     ;; uint16[] _target_id
     (write-long (length _target_id) s)
     (dotimes (i (length _target_id))
       (write-word (elt _target_id i) s)
       )
     ;; uint16[] _position
     (write-long (length _position) s)
     (dotimes (i (length _position))
       (write-word (elt _position i) s)
       )
     ;; int16[] _offset
     (write-long (length _offset) s)
     (dotimes (i (length _offset))
       (write-word (elt _offset i) s)
       )
     ;; uint16[] _voltage
     (write-long (length _voltage) s)
     (dotimes (i (length _voltage))
       (write-word (elt _voltage i) s)
       )
     ;; uint16[] _temperature
     (write-long (length _temperature) s)
     (dotimes (i (length _temperature))
       (write-word (elt _temperature i) s)
       )
     ;; uint16[] _position_limit
     (write-long (length _position_limit) s)
     (dotimes (i (length _position_limit))
       (write-word (elt _position_limit i) s)
       )
     ;; uint16[] _voltage_limit
     (write-long (length _voltage_limit) s)
     (dotimes (i (length _voltage_limit))
       (write-word (elt _voltage_limit i) s)
       )
     ;; uint16[] _max_temperature_limit
     (write-long (length _max_temperature_limit) s)
     (dotimes (i (length _max_temperature_limit))
       (write-word (elt _max_temperature_limit i) s)
       )
     ;; uint16[] _enable_torque
     (write-long (length _enable_torque) s)
     (dotimes (i (length _enable_torque))
       (write-word (elt _enable_torque i) s)
       )
     ;; uint16[] _save_offset
     (write-long (length _save_offset) s)
     (dotimes (i (length _save_offset))
       (write-word (elt _save_offset i) s)
       )
     ;; uint16[] _stop
     (write-long (length _stop) s)
     (dotimes (i (length _stop))
       (write-word (elt _stop i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16[] _present_id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _present_id (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _present_id i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; uint16[] _target_id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _target_id (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _target_id i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; uint16[] _position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _position i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16[] _offset
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _offset (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _offset i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; uint16[] _voltage
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _voltage (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _voltage i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; uint16[] _temperature
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _temperature (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _temperature i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; uint16[] _position_limit
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position_limit (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _position_limit i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; uint16[] _voltage_limit
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _voltage_limit (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _voltage_limit i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; uint16[] _max_temperature_limit
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _max_temperature_limit (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _max_temperature_limit i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; uint16[] _enable_torque
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _enable_torque (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _enable_torque i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; uint16[] _save_offset
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _save_offset (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _save_offset i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; uint16[] _stop
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _stop (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _stop i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;;
   self)
  )

(setf (get ros_robot_controller::BusServoState :md5sum-) "77c375d1ab7f4d88380638703e2dbdbc")
(setf (get ros_robot_controller::BusServoState :datatype-) "ros_robot_controller/BusServoState")
(setf (get ros_robot_controller::BusServoState :definition-)
      "uint16[] present_id
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



(provide :ros_robot_controller/BusServoState "77c375d1ab7f4d88380638703e2dbdbc")


