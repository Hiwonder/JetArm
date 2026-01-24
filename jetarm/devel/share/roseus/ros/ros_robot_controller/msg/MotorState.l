;; Auto-generated. Do not edit!


(when (boundp 'ros_robot_controller::MotorState)
  (if (not (find-package "ROS_ROBOT_CONTROLLER"))
    (make-package "ROS_ROBOT_CONTROLLER"))
  (shadow 'MotorState (find-package "ROS_ROBOT_CONTROLLER")))
(unless (find-package "ROS_ROBOT_CONTROLLER::MOTORSTATE")
  (make-package "ROS_ROBOT_CONTROLLER::MOTORSTATE"))

(in-package "ROS")
;;//! \htmlinclude MotorState.msg.html


(defclass ros_robot_controller::MotorState
  :super ros::object
  :slots (_id _rps ))

(defmethod ros_robot_controller::MotorState
  (:init
   (&key
    ((:id __id) 0)
    ((:rps __rps) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _rps (float __rps))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:rps
   (&optional __rps)
   (if __rps (setq _rps __rps)) _rps)
  (:serialization-length
   ()
   (+
    ;; uint16 _id
    2
    ;; float64 _rps
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _id
       (write-word _id s)
     ;; float64 _rps
       (sys::poke _rps (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _id
     (setq _id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _rps
     (setq _rps (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ros_robot_controller::MotorState :md5sum-) "1ee438b007ff92e751514b29c43f20bb")
(setf (get ros_robot_controller::MotorState :datatype-) "ros_robot_controller/MotorState")
(setf (get ros_robot_controller::MotorState :definition-)
      "uint16 id
float64 rps

")



(provide :ros_robot_controller/MotorState "1ee438b007ff92e751514b29c43f20bb")


