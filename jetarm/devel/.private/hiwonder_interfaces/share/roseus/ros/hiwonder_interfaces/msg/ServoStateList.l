;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_interfaces::ServoStateList)
  (if (not (find-package "HIWONDER_INTERFACES"))
    (make-package "HIWONDER_INTERFACES"))
  (shadow 'ServoStateList (find-package "HIWONDER_INTERFACES")))
(unless (find-package "HIWONDER_INTERFACES::SERVOSTATELIST")
  (make-package "HIWONDER_INTERFACES::SERVOSTATELIST"))

(in-package "ROS")
;;//! \htmlinclude ServoStateList.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hiwonder_interfaces::ServoStateList
  :super ros::object
  :slots (_header _servo_states ))

(defmethod hiwonder_interfaces::ServoStateList
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:servo_states __servo_states) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _servo_states __servo_states)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:servo_states
   (&rest __servo_states)
   (if (keywordp (car __servo_states))
       (send* _servo_states __servo_states)
     (progn
       (if __servo_states (setq _servo_states (car __servo_states)))
       _servo_states)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; hiwonder_interfaces/ServoState[] _servo_states
    (apply #'+ (send-all _servo_states :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; hiwonder_interfaces/ServoState[] _servo_states
     (write-long (length _servo_states) s)
     (dolist (elem _servo_states)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; hiwonder_interfaces/ServoState[] _servo_states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _servo_states (let (r) (dotimes (i n) (push (instance hiwonder_interfaces::ServoState :init) r)) r))
     (dolist (elem- _servo_states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get hiwonder_interfaces::ServoStateList :md5sum-) "22e881eeaee8270c42551f7b1f39e386")
(setf (get hiwonder_interfaces::ServoStateList :datatype-) "hiwonder_interfaces/ServoStateList")
(setf (get hiwonder_interfaces::ServoStateList :definition-)
      "std_msgs/Header header
ServoState[] servo_states
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

================================================================================
MSG: hiwonder_interfaces/ServoState
std_msgs/Header header
float64 timestamp   # motor state is at this time
int32 id            # motor id
int32 type          # servo type
int32 goal          # commanded position (in encoder units)
int32 position      # current position (in encoder units)
int32 error         # difference between current and goal positions
int32 voltage       # current voltage (mv)

")



(provide :hiwonder_interfaces/ServoStateList "22e881eeaee8270c42551f7b1f39e386")


