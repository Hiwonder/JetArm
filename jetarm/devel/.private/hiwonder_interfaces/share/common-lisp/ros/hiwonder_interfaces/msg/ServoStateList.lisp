; Auto-generated. Do not edit!


(cl:in-package hiwonder_interfaces-msg)


;//! \htmlinclude ServoStateList.msg.html

(cl:defclass <ServoStateList> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (servo_states
    :reader servo_states
    :initarg :servo_states
    :type (cl:vector hiwonder_interfaces-msg:ServoState)
   :initform (cl:make-array 0 :element-type 'hiwonder_interfaces-msg:ServoState :initial-element (cl:make-instance 'hiwonder_interfaces-msg:ServoState))))
)

(cl:defclass ServoStateList (<ServoStateList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServoStateList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServoStateList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_interfaces-msg:<ServoStateList> is deprecated: use hiwonder_interfaces-msg:ServoStateList instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ServoStateList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-msg:header-val is deprecated.  Use hiwonder_interfaces-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'servo_states-val :lambda-list '(m))
(cl:defmethod servo_states-val ((m <ServoStateList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-msg:servo_states-val is deprecated.  Use hiwonder_interfaces-msg:servo_states instead.")
  (servo_states m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServoStateList>) ostream)
  "Serializes a message object of type '<ServoStateList>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'servo_states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'servo_states))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServoStateList>) istream)
  "Deserializes a message object of type '<ServoStateList>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'servo_states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'servo_states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hiwonder_interfaces-msg:ServoState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServoStateList>)))
  "Returns string type for a message object of type '<ServoStateList>"
  "hiwonder_interfaces/ServoStateList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoStateList)))
  "Returns string type for a message object of type 'ServoStateList"
  "hiwonder_interfaces/ServoStateList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServoStateList>)))
  "Returns md5sum for a message object of type '<ServoStateList>"
  "22e881eeaee8270c42551f7b1f39e386")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServoStateList)))
  "Returns md5sum for a message object of type 'ServoStateList"
  "22e881eeaee8270c42551f7b1f39e386")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServoStateList>)))
  "Returns full string definition for message of type '<ServoStateList>"
  (cl:format cl:nil "std_msgs/Header header~%ServoState[] servo_states~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: hiwonder_interfaces/ServoState~%std_msgs/Header header~%float64 timestamp   # motor state is at this time~%int32 id            # motor id~%int32 type          # servo type~%int32 goal          # commanded position (in encoder units)~%int32 position      # current position (in encoder units)~%int32 error         # difference between current and goal positions~%int32 voltage       # current voltage (mv)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServoStateList)))
  "Returns full string definition for message of type 'ServoStateList"
  (cl:format cl:nil "std_msgs/Header header~%ServoState[] servo_states~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: hiwonder_interfaces/ServoState~%std_msgs/Header header~%float64 timestamp   # motor state is at this time~%int32 id            # motor id~%int32 type          # servo type~%int32 goal          # commanded position (in encoder units)~%int32 position      # current position (in encoder units)~%int32 error         # difference between current and goal positions~%int32 voltage       # current voltage (mv)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServoStateList>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'servo_states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServoStateList>))
  "Converts a ROS message object to a list"
  (cl:list 'ServoStateList
    (cl:cons ':header (header msg))
    (cl:cons ':servo_states (servo_states msg))
))
