; Auto-generated. Do not edit!


(cl:in-package hiwonder_interfaces-msg)


;//! \htmlinclude Led.msg.html

(cl:defclass <Led> (roslisp-msg-protocol:ros-message)
  ((brightness
    :reader brightness
    :initarg :brightness
    :type cl:fixnum
    :initform 0)
   (on_ticks
    :reader on_ticks
    :initarg :on_ticks
    :type cl:fixnum
    :initform 0)
   (off_ticks
    :reader off_ticks
    :initarg :off_ticks
    :type cl:fixnum
    :initform 0)
   (repeat
    :reader repeat
    :initarg :repeat
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Led (<Led>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Led>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Led)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_interfaces-msg:<Led> is deprecated: use hiwonder_interfaces-msg:Led instead.")))

(cl:ensure-generic-function 'brightness-val :lambda-list '(m))
(cl:defmethod brightness-val ((m <Led>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-msg:brightness-val is deprecated.  Use hiwonder_interfaces-msg:brightness instead.")
  (brightness m))

(cl:ensure-generic-function 'on_ticks-val :lambda-list '(m))
(cl:defmethod on_ticks-val ((m <Led>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-msg:on_ticks-val is deprecated.  Use hiwonder_interfaces-msg:on_ticks instead.")
  (on_ticks m))

(cl:ensure-generic-function 'off_ticks-val :lambda-list '(m))
(cl:defmethod off_ticks-val ((m <Led>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-msg:off_ticks-val is deprecated.  Use hiwonder_interfaces-msg:off_ticks instead.")
  (off_ticks m))

(cl:ensure-generic-function 'repeat-val :lambda-list '(m))
(cl:defmethod repeat-val ((m <Led>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-msg:repeat-val is deprecated.  Use hiwonder_interfaces-msg:repeat instead.")
  (repeat m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Led>) ostream)
  "Serializes a message object of type '<Led>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brightness)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'on_ticks)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'on_ticks)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'off_ticks)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'off_ticks)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'repeat)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'repeat)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Led>) istream)
  "Deserializes a message object of type '<Led>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brightness)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'on_ticks)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'on_ticks)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'off_ticks)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'off_ticks)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'repeat)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'repeat)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Led>)))
  "Returns string type for a message object of type '<Led>"
  "hiwonder_interfaces/Led")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Led)))
  "Returns string type for a message object of type 'Led"
  "hiwonder_interfaces/Led")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Led>)))
  "Returns md5sum for a message object of type '<Led>"
  "9d75341b887ccec081eae7150fd4708f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Led)))
  "Returns md5sum for a message object of type 'Led"
  "9d75341b887ccec081eae7150fd4708f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Led>)))
  "Returns full string definition for message of type '<Led>"
  (cl:format cl:nil "uint8  brightness     # LED灯亮度~%uint16 on_ticks       # LED亮起的时长 毫秒~%uint16 off_ticks      # LED熄灭的时长 毫秒~%uint16 repeat         # LED灯闪烁的重复次数~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Led)))
  "Returns full string definition for message of type 'Led"
  (cl:format cl:nil "uint8  brightness     # LED灯亮度~%uint16 on_ticks       # LED亮起的时长 毫秒~%uint16 off_ticks      # LED熄灭的时长 毫秒~%uint16 repeat         # LED灯闪烁的重复次数~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Led>))
  (cl:+ 0
     1
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Led>))
  "Converts a ROS message object to a list"
  (cl:list 'Led
    (cl:cons ':brightness (brightness msg))
    (cl:cons ':on_ticks (on_ticks msg))
    (cl:cons ':off_ticks (off_ticks msg))
    (cl:cons ':repeat (repeat msg))
))
