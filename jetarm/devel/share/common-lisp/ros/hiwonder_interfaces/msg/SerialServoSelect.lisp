; Auto-generated. Do not edit!


(cl:in-package hiwonder_interfaces-msg)


;//! \htmlinclude SerialServoSelect.msg.html

(cl:defclass <SerialServoSelect> (roslisp-msg-protocol:ros-message)
  ((servo_id
    :reader servo_id
    :initarg :servo_id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SerialServoSelect (<SerialServoSelect>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SerialServoSelect>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SerialServoSelect)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_interfaces-msg:<SerialServoSelect> is deprecated: use hiwonder_interfaces-msg:SerialServoSelect instead.")))

(cl:ensure-generic-function 'servo_id-val :lambda-list '(m))
(cl:defmethod servo_id-val ((m <SerialServoSelect>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-msg:servo_id-val is deprecated.  Use hiwonder_interfaces-msg:servo_id instead.")
  (servo_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SerialServoSelect>) ostream)
  "Serializes a message object of type '<SerialServoSelect>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'servo_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SerialServoSelect>) istream)
  "Deserializes a message object of type '<SerialServoSelect>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'servo_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SerialServoSelect>)))
  "Returns string type for a message object of type '<SerialServoSelect>"
  "hiwonder_interfaces/SerialServoSelect")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SerialServoSelect)))
  "Returns string type for a message object of type 'SerialServoSelect"
  "hiwonder_interfaces/SerialServoSelect")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SerialServoSelect>)))
  "Returns md5sum for a message object of type '<SerialServoSelect>"
  "acb16072ea21cd71e884ac51239c2a0c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SerialServoSelect)))
  "Returns md5sum for a message object of type 'SerialServoSelect"
  "acb16072ea21cd71e884ac51239c2a0c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SerialServoSelect>)))
  "Returns full string definition for message of type '<SerialServoSelect>"
  (cl:format cl:nil "uint8 servo_id~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SerialServoSelect)))
  "Returns full string definition for message of type 'SerialServoSelect"
  (cl:format cl:nil "uint8 servo_id~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SerialServoSelect>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SerialServoSelect>))
  "Converts a ROS message object to a list"
  (cl:list 'SerialServoSelect
    (cl:cons ':servo_id (servo_id msg))
))
