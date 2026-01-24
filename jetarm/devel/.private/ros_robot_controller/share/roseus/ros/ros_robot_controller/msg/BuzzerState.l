;; Auto-generated. Do not edit!


(when (boundp 'ros_robot_controller::BuzzerState)
  (if (not (find-package "ROS_ROBOT_CONTROLLER"))
    (make-package "ROS_ROBOT_CONTROLLER"))
  (shadow 'BuzzerState (find-package "ROS_ROBOT_CONTROLLER")))
(unless (find-package "ROS_ROBOT_CONTROLLER::BUZZERSTATE")
  (make-package "ROS_ROBOT_CONTROLLER::BUZZERSTATE"))

(in-package "ROS")
;;//! \htmlinclude BuzzerState.msg.html


(defclass ros_robot_controller::BuzzerState
  :super ros::object
  :slots (_freq _on_time _off_time _repeat ))

(defmethod ros_robot_controller::BuzzerState
  (:init
   (&key
    ((:freq __freq) 0)
    ((:on_time __on_time) 0.0)
    ((:off_time __off_time) 0.0)
    ((:repeat __repeat) 0)
    )
   (send-super :init)
   (setq _freq (round __freq))
   (setq _on_time (float __on_time))
   (setq _off_time (float __off_time))
   (setq _repeat (round __repeat))
   self)
  (:freq
   (&optional __freq)
   (if __freq (setq _freq __freq)) _freq)
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
    ;; uint16 _freq
    2
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
     ;; uint16 _freq
       (write-word _freq s)
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
   ;; uint16 _freq
     (setq _freq (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _on_time
     (setq _on_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _off_time
     (setq _off_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint16 _repeat
     (setq _repeat (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get ros_robot_controller::BuzzerState :md5sum-) "bf6a6f6f285012bcc0e11a4dd35a61af")
(setf (get ros_robot_controller::BuzzerState :datatype-) "ros_robot_controller/BuzzerState")
(setf (get ros_robot_controller::BuzzerState :definition-)
      "uint16 freq
float32 on_time
float32 off_time
uint16 repeat

")



(provide :ros_robot_controller/BuzzerState "bf6a6f6f285012bcc0e11a4dd35a61af")


