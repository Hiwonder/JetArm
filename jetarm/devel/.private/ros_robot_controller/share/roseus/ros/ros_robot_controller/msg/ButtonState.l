;; Auto-generated. Do not edit!


(when (boundp 'ros_robot_controller::ButtonState)
  (if (not (find-package "ROS_ROBOT_CONTROLLER"))
    (make-package "ROS_ROBOT_CONTROLLER"))
  (shadow 'ButtonState (find-package "ROS_ROBOT_CONTROLLER")))
(unless (find-package "ROS_ROBOT_CONTROLLER::BUTTONSTATE")
  (make-package "ROS_ROBOT_CONTROLLER::BUTTONSTATE"))

(in-package "ROS")
;;//! \htmlinclude ButtonState.msg.html


(defclass ros_robot_controller::ButtonState
  :super ros::object
  :slots (_id _state ))

(defmethod ros_robot_controller::ButtonState
  (:init
   (&key
    ((:id __id) 0)
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _state (round __state))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; uint8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; uint8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_robot_controller::ButtonState :md5sum-) "b030084e787148466c67bf3e2ec970c0")
(setf (get ros_robot_controller::ButtonState :datatype-) "ros_robot_controller/ButtonState")
(setf (get ros_robot_controller::ButtonState :definition-)
      "uint8 id
uint8 state

")



(provide :ros_robot_controller/ButtonState "b030084e787148466c67bf3e2ec970c0")


