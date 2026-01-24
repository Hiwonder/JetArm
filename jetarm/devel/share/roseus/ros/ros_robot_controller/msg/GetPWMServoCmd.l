;; Auto-generated. Do not edit!


(when (boundp 'ros_robot_controller::GetPWMServoCmd)
  (if (not (find-package "ROS_ROBOT_CONTROLLER"))
    (make-package "ROS_ROBOT_CONTROLLER"))
  (shadow 'GetPWMServoCmd (find-package "ROS_ROBOT_CONTROLLER")))
(unless (find-package "ROS_ROBOT_CONTROLLER::GETPWMSERVOCMD")
  (make-package "ROS_ROBOT_CONTROLLER::GETPWMSERVOCMD"))

(in-package "ROS")
;;//! \htmlinclude GetPWMServoCmd.msg.html


(defclass ros_robot_controller::GetPWMServoCmd
  :super ros::object
  :slots (_get_position _get_offset ))

(defmethod ros_robot_controller::GetPWMServoCmd
  (:init
   (&key
    ((:get_position __get_position) 0)
    ((:get_offset __get_offset) 0)
    )
   (send-super :init)
   (setq _get_position (round __get_position))
   (setq _get_offset (round __get_offset))
   self)
  (:get_position
   (&optional __get_position)
   (if __get_position (setq _get_position __get_position)) _get_position)
  (:get_offset
   (&optional __get_offset)
   (if __get_offset (setq _get_offset __get_offset)) _get_offset)
  (:serialization-length
   ()
   (+
    ;; uint8 _get_position
    1
    ;; uint8 _get_offset
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _get_position
       (write-byte _get_position s)
     ;; uint8 _get_offset
       (write-byte _get_offset s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _get_position
     (setq _get_position (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _get_offset
     (setq _get_offset (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_robot_controller::GetPWMServoCmd :md5sum-) "2e555397e3448e744f7c10502a635d13")
(setf (get ros_robot_controller::GetPWMServoCmd :datatype-) "ros_robot_controller/GetPWMServoCmd")
(setf (get ros_robot_controller::GetPWMServoCmd :definition-)
      "uint8 get_position
uint8 get_offset

")



(provide :ros_robot_controller/GetPWMServoCmd "2e555397e3448e744f7c10502a635d13")


