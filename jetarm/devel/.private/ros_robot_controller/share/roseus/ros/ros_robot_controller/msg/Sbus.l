;; Auto-generated. Do not edit!


(when (boundp 'ros_robot_controller::Sbus)
  (if (not (find-package "ROS_ROBOT_CONTROLLER"))
    (make-package "ROS_ROBOT_CONTROLLER"))
  (shadow 'Sbus (find-package "ROS_ROBOT_CONTROLLER")))
(unless (find-package "ROS_ROBOT_CONTROLLER::SBUS")
  (make-package "ROS_ROBOT_CONTROLLER::SBUS"))

(in-package "ROS")
;;//! \htmlinclude Sbus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ros_robot_controller::Sbus
  :super ros::object
  :slots (_header _channel ))

(defmethod ros_robot_controller::Sbus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:channel __channel) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _channel __channel)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:channel
   (&optional __channel)
   (if __channel (setq _channel __channel)) _channel)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[] _channel
    (* 4    (length _channel)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32[] _channel
     (write-long (length _channel) s)
     (dotimes (i (length _channel))
       (sys::poke (elt _channel i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32[] _channel
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _channel (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _channel i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get ros_robot_controller::Sbus :md5sum-) "509d6343bf29722432e3278c76d6a985")
(setf (get ros_robot_controller::Sbus :datatype-) "ros_robot_controller/Sbus")
(setf (get ros_robot_controller::Sbus :definition-)
      "Header header
float32[] channel

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :ros_robot_controller/Sbus "509d6343bf29722432e3278c76d6a985")


