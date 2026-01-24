; Auto-generated. Do not edit!


(cl:in-package ros_robot_controller-msg)


;//! \htmlinclude LedState.msg.html

(cl:defclass <LedState> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (on_time
    :reader on_time
    :initarg :on_time
    :type cl:float
    :initform 0.0)
   (off_time
    :reader off_time
    :initarg :off_time
    :type cl:float
    :initform 0.0)
   (repeat
    :reader repeat
    :initarg :repeat
    :type cl:fixnum
    :initform 0))
)

(cl:defclass LedState (<LedState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LedState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LedState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_robot_controller-msg:<LedState> is deprecated: use ros_robot_controller-msg:LedState instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <LedState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-msg:id-val is deprecated.  Use ros_robot_controller-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'on_time-val :lambda-list '(m))
(cl:defmethod on_time-val ((m <LedState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-msg:on_time-val is deprecated.  Use ros_robot_controller-msg:on_time instead.")
  (on_time m))

(cl:ensure-generic-function 'off_time-val :lambda-list '(m))
(cl:defmethod off_time-val ((m <LedState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-msg:off_time-val is deprecated.  Use ros_robot_controller-msg:off_time instead.")
  (off_time m))

(cl:ensure-generic-function 'repeat-val :lambda-list '(m))
(cl:defmethod repeat-val ((m <LedState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-msg:repeat-val is deprecated.  Use ros_robot_controller-msg:repeat instead.")
  (repeat m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LedState>) ostream)
  "Serializes a message object of type '<LedState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'on_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'off_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'repeat)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'repeat)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LedState>) istream)
  "Deserializes a message object of type '<LedState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'on_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'off_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'repeat)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'repeat)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LedState>)))
  "Returns string type for a message object of type '<LedState>"
  "ros_robot_controller/LedState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LedState)))
  "Returns string type for a message object of type 'LedState"
  "ros_robot_controller/LedState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LedState>)))
  "Returns md5sum for a message object of type '<LedState>"
  "aedc0628f1bc854143b196b8fbc44c35")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LedState)))
  "Returns md5sum for a message object of type 'LedState"
  "aedc0628f1bc854143b196b8fbc44c35")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LedState>)))
  "Returns full string definition for message of type '<LedState>"
  (cl:format cl:nil "uint8 id~%float32 on_time~%float32 off_time~%uint16 repeat~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LedState)))
  "Returns full string definition for message of type 'LedState"
  (cl:format cl:nil "uint8 id~%float32 on_time~%float32 off_time~%uint16 repeat~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LedState>))
  (cl:+ 0
     1
     4
     4
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LedState>))
  "Converts a ROS message object to a list"
  (cl:list 'LedState
    (cl:cons ':id (id msg))
    (cl:cons ':on_time (on_time msg))
    (cl:cons ':off_time (off_time msg))
    (cl:cons ':repeat (repeat msg))
))
