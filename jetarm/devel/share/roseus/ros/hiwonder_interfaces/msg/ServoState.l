;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_interfaces::ServoState)
  (if (not (find-package "HIWONDER_INTERFACES"))
    (make-package "HIWONDER_INTERFACES"))
  (shadow 'ServoState (find-package "HIWONDER_INTERFACES")))
(unless (find-package "HIWONDER_INTERFACES::SERVOSTATE")
  (make-package "HIWONDER_INTERFACES::SERVOSTATE"))

(in-package "ROS")
;;//! \htmlinclude ServoState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hiwonder_interfaces::ServoState
  :super ros::object
  :slots (_header _timestamp _id _type _goal _position _error _voltage ))

(defmethod hiwonder_interfaces::ServoState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:timestamp __timestamp) 0.0)
    ((:id __id) 0)
    ((:type __type) 0)
    ((:goal __goal) 0)
    ((:position __position) 0)
    ((:error __error) 0)
    ((:voltage __voltage) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _timestamp (float __timestamp))
   (setq _id (round __id))
   (setq _type (round __type))
   (setq _goal (round __goal))
   (setq _position (round __position))
   (setq _error (round __error))
   (setq _voltage (round __voltage))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:goal
   (&optional __goal)
   (if __goal (setq _goal __goal)) _goal)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _timestamp
    8
    ;; int32 _id
    4
    ;; int32 _type
    4
    ;; int32 _goal
    4
    ;; int32 _position
    4
    ;; int32 _error
    4
    ;; int32 _voltage
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _timestamp
       (sys::poke _timestamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _id
       (write-long _id s)
     ;; int32 _type
       (write-long _type s)
     ;; int32 _goal
       (write-long _goal s)
     ;; int32 _position
       (write-long _position s)
     ;; int32 _error
       (write-long _error s)
     ;; int32 _voltage
       (write-long _voltage s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _timestamp
     (setq _timestamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _goal
     (setq _goal (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _position
     (setq _position (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _error
     (setq _error (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _voltage
     (setq _voltage (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hiwonder_interfaces::ServoState :md5sum-) "dcd774646a3b4f67e60c7eb75c86da2c")
(setf (get hiwonder_interfaces::ServoState :datatype-) "hiwonder_interfaces/ServoState")
(setf (get hiwonder_interfaces::ServoState :definition-)
      "std_msgs/Header header
float64 timestamp   # motor state is at this time
int32 id            # motor id
int32 type          # servo type
int32 goal          # commanded position (in encoder units)
int32 position      # current position (in encoder units)
int32 error         # difference between current and goal positions
int32 voltage       # current voltage (mv)

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



(provide :hiwonder_interfaces/ServoState "dcd774646a3b4f67e60c7eb75c86da2c")


