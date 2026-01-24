;; Auto-generated. Do not edit!


(when (boundp 'ros_robot_controller::PWMServoState)
  (if (not (find-package "ROS_ROBOT_CONTROLLER"))
    (make-package "ROS_ROBOT_CONTROLLER"))
  (shadow 'PWMServoState (find-package "ROS_ROBOT_CONTROLLER")))
(unless (find-package "ROS_ROBOT_CONTROLLER::PWMSERVOSTATE")
  (make-package "ROS_ROBOT_CONTROLLER::PWMSERVOSTATE"))

(in-package "ROS")
;;//! \htmlinclude PWMServoState.msg.html


(defclass ros_robot_controller::PWMServoState
  :super ros::object
  :slots (_id _position _offset ))

(defmethod ros_robot_controller::PWMServoState
  (:init
   (&key
    ((:id __id) (make-array 0 :initial-element 0 :element-type :integer))
    ((:position __position) (make-array 0 :initial-element 0 :element-type :integer))
    ((:offset __offset) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _id __id)
   (setq _position __position)
   (setq _offset __offset)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:serialization-length
   ()
   (+
    ;; uint16[] _id
    (* 2    (length _id)) 4
    ;; uint16[] _position
    (* 2    (length _position)) 4
    ;; int16[] _offset
    (* 2    (length _offset)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16[] _id
     (write-long (length _id) s)
     (dotimes (i (length _id))
       (write-word (elt _id i) s)
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16[] _id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _id (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _id i) (sys::peek buf ptr- :short)) (incf ptr- 2)
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
   ;;
   self)
  )

(setf (get ros_robot_controller::PWMServoState :md5sum-) "c26a15aad910866b2e34eeadf50a1646")
(setf (get ros_robot_controller::PWMServoState :datatype-) "ros_robot_controller/PWMServoState")
(setf (get ros_robot_controller::PWMServoState :definition-)
      "uint16[] id
uint16[] position
int16[] offset

")



(provide :ros_robot_controller/PWMServoState "c26a15aad910866b2e34eeadf50a1646")


