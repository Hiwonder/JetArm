;; Auto-generated. Do not edit!


(when (boundp 'ros_robot_controller::MotorsState)
  (if (not (find-package "ROS_ROBOT_CONTROLLER"))
    (make-package "ROS_ROBOT_CONTROLLER"))
  (shadow 'MotorsState (find-package "ROS_ROBOT_CONTROLLER")))
(unless (find-package "ROS_ROBOT_CONTROLLER::MOTORSSTATE")
  (make-package "ROS_ROBOT_CONTROLLER::MOTORSSTATE"))

(in-package "ROS")
;;//! \htmlinclude MotorsState.msg.html


(defclass ros_robot_controller::MotorsState
  :super ros::object
  :slots (_data ))

(defmethod ros_robot_controller::MotorsState
  (:init
   (&key
    ((:data __data) ())
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; ros_robot_controller/MotorState[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; ros_robot_controller/MotorState[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; ros_robot_controller/MotorState[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance ros_robot_controller::MotorState :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get ros_robot_controller::MotorsState :md5sum-) "690a5fe22d7a52abc613b0f6dd38789a")
(setf (get ros_robot_controller::MotorsState :datatype-) "ros_robot_controller/MotorsState")
(setf (get ros_robot_controller::MotorsState :definition-)
      "ros_robot_controller/MotorState[] data

================================================================================
MSG: ros_robot_controller/MotorState
uint16 id
float64 rps

")



(provide :ros_robot_controller/MotorsState "690a5fe22d7a52abc613b0f6dd38789a")


