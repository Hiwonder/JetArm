; Auto-generated. Do not edit!


(cl:in-package ros_robot_controller-msg)


;//! \htmlinclude GetPWMServoCmd.msg.html

(cl:defclass <GetPWMServoCmd> (roslisp-msg-protocol:ros-message)
  ((get_position
    :reader get_position
    :initarg :get_position
    :type cl:fixnum
    :initform 0)
   (get_offset
    :reader get_offset
    :initarg :get_offset
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetPWMServoCmd (<GetPWMServoCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPWMServoCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPWMServoCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_robot_controller-msg:<GetPWMServoCmd> is deprecated: use ros_robot_controller-msg:GetPWMServoCmd instead.")))

(cl:ensure-generic-function 'get_position-val :lambda-list '(m))
(cl:defmethod get_position-val ((m <GetPWMServoCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-msg:get_position-val is deprecated.  Use ros_robot_controller-msg:get_position instead.")
  (get_position m))

(cl:ensure-generic-function 'get_offset-val :lambda-list '(m))
(cl:defmethod get_offset-val ((m <GetPWMServoCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-msg:get_offset-val is deprecated.  Use ros_robot_controller-msg:get_offset instead.")
  (get_offset m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPWMServoCmd>) ostream)
  "Serializes a message object of type '<GetPWMServoCmd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'get_position)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'get_offset)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPWMServoCmd>) istream)
  "Deserializes a message object of type '<GetPWMServoCmd>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'get_position)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'get_offset)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPWMServoCmd>)))
  "Returns string type for a message object of type '<GetPWMServoCmd>"
  "ros_robot_controller/GetPWMServoCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPWMServoCmd)))
  "Returns string type for a message object of type 'GetPWMServoCmd"
  "ros_robot_controller/GetPWMServoCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPWMServoCmd>)))
  "Returns md5sum for a message object of type '<GetPWMServoCmd>"
  "2e555397e3448e744f7c10502a635d13")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPWMServoCmd)))
  "Returns md5sum for a message object of type 'GetPWMServoCmd"
  "2e555397e3448e744f7c10502a635d13")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPWMServoCmd>)))
  "Returns full string definition for message of type '<GetPWMServoCmd>"
  (cl:format cl:nil "uint8 get_position~%uint8 get_offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPWMServoCmd)))
  "Returns full string definition for message of type 'GetPWMServoCmd"
  (cl:format cl:nil "uint8 get_position~%uint8 get_offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPWMServoCmd>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPWMServoCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPWMServoCmd
    (cl:cons ':get_position (get_position msg))
    (cl:cons ':get_offset (get_offset msg))
))
