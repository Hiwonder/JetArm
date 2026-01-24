;; Auto-generated. Do not edit!


(when (boundp 'ros_robot_controller::LedState)
  (if (not (find-package "ROS_ROBOT_CONTROLLER"))
    (make-package "ROS_ROBOT_CONTROLLER"))
  (shadow 'LedState (find-package "ROS_ROBOT_CONTROLLER")))
(unless (find-package "ROS_ROBOT_CONTROLLER::LEDSTATE")
  (make-package "ROS_ROBOT_CONTROLLER::LEDSTATE"))

(in-package "ROS")
;;//! \htmlinclude LedState.msg.html


(defclass ros_robot_controller::LedState
  :super ros::object
  :slots (_id _on_time _off_time _repeat ))

(defmethod ros_robot_controller::LedState
  (:init
   (&key
    ((:id __id) 0)
    ((:on_time __on_time) 0.0)
    ((:off_time __off_time) 0.0)
    ((:repeat __repeat) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _on_time (float __on_time))
   (setq _off_time (float __off_time))
   (setq _repeat (round __repeat))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:on_time
   (&optional __on_time)
   (if __on_time (setq _on_time __on_time)) _on_time)
  (:off_time
   (&optional __off_time)
   (if __off_time (setq _off_time __off_time)) _off_time)
  (:repeat
   (&optional __repeat)
   (if __repeat (setq _repeat __repeat)) _repeat)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; float32 _on_time
    4
    ;; float32 _off_time
    4
    ;; uint16 _repeat
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; float32 _on_time
       (sys::poke _on_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _off_time
       (sys::poke _off_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint16 _repeat
       (write-word _repeat s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _on_time
     (setq _on_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _off_time
     (setq _off_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint16 _repeat
     (setq _repeat (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get ros_robot_controller::LedState :md5sum-) "aedc0628f1bc854143b196b8fbc44c35")
(setf (get ros_robot_controller::LedState :datatype-) "ros_robot_controller/LedState")
(setf (get ros_robot_controller::LedState :definition-)
      "uint8 id
float32 on_time
float32 off_time
uint16 repeat

")



(provide :ros_robot_controller/LedState "aedc0628f1bc854143b196b8fbc44c35")


