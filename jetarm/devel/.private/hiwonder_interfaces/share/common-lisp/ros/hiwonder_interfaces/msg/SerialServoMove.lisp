; Auto-generated. Do not edit!


(cl:in-package hiwonder_interfaces-msg)


;//! \htmlinclude SerialServoMove.msg.html

(cl:defclass <SerialServoMove> (roslisp-msg-protocol:ros-message)
  ((servo_id
    :reader servo_id
    :initarg :servo_id
    :type cl:fixnum
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type cl:fixnum
    :initform 0)
   (duration
    :reader duration
    :initarg :duration
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SerialServoMove (<SerialServoMove>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SerialServoMove>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SerialServoMove)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_interfaces-msg:<SerialServoMove> is deprecated: use hiwonder_interfaces-msg:SerialServoMove instead.")))

(cl:ensure-generic-function 'servo_id-val :lambda-list '(m))
(cl:defmethod servo_id-val ((m <SerialServoMove>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-msg:servo_id-val is deprecated.  Use hiwonder_interfaces-msg:servo_id instead.")
  (servo_id m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <SerialServoMove>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-msg:position-val is deprecated.  Use hiwonder_interfaces-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <SerialServoMove>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-msg:duration-val is deprecated.  Use hiwonder_interfaces-msg:duration instead.")
  (duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SerialServoMove>) ostream)
  "Serializes a message object of type '<SerialServoMove>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'servo_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'position)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'duration)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'duration)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SerialServoMove>) istream)
  "Deserializes a message object of type '<SerialServoMove>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'servo_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'position)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'duration)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'duration)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SerialServoMove>)))
  "Returns string type for a message object of type '<SerialServoMove>"
  "hiwonder_interfaces/SerialServoMove")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SerialServoMove)))
  "Returns string type for a message object of type 'SerialServoMove"
  "hiwonder_interfaces/SerialServoMove")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SerialServoMove>)))
  "Returns md5sum for a message object of type '<SerialServoMove>"
  "5dc54bf167bb9c6046aadd2946345a2d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SerialServoMove)))
  "Returns md5sum for a message object of type 'SerialServoMove"
  "5dc54bf167bb9c6046aadd2946345a2d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SerialServoMove>)))
  "Returns full string definition for message of type '<SerialServoMove>"
  (cl:format cl:nil "uint8 servo_id~%uint16 position~%uint16 duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SerialServoMove)))
  "Returns full string definition for message of type 'SerialServoMove"
  (cl:format cl:nil "uint8 servo_id~%uint16 position~%uint16 duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SerialServoMove>))
  (cl:+ 0
     1
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SerialServoMove>))
  "Converts a ROS message object to a list"
  (cl:list 'SerialServoMove
    (cl:cons ':servo_id (servo_id msg))
    (cl:cons ':position (position msg))
    (cl:cons ':duration (duration msg))
))
