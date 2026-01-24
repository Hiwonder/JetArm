; Auto-generated. Do not edit!


(cl:in-package hiwonder_interfaces-msg)


;//! \htmlinclude Buzzer.msg.html

(cl:defclass <Buzzer> (roslisp-msg-protocol:ros-message)
  ((freq
    :reader freq
    :initarg :freq
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

(cl:defclass Buzzer (<Buzzer>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Buzzer>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Buzzer)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_interfaces-msg:<Buzzer> is deprecated: use hiwonder_interfaces-msg:Buzzer instead.")))

(cl:ensure-generic-function 'freq-val :lambda-list '(m))
(cl:defmethod freq-val ((m <Buzzer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-msg:freq-val is deprecated.  Use hiwonder_interfaces-msg:freq instead.")
  (freq m))

(cl:ensure-generic-function 'on_ticks-val :lambda-list '(m))
(cl:defmethod on_ticks-val ((m <Buzzer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-msg:on_ticks-val is deprecated.  Use hiwonder_interfaces-msg:on_ticks instead.")
  (on_ticks m))

(cl:ensure-generic-function 'off_ticks-val :lambda-list '(m))
(cl:defmethod off_ticks-val ((m <Buzzer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-msg:off_ticks-val is deprecated.  Use hiwonder_interfaces-msg:off_ticks instead.")
  (off_ticks m))

(cl:ensure-generic-function 'repeat-val :lambda-list '(m))
(cl:defmethod repeat-val ((m <Buzzer>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-msg:repeat-val is deprecated.  Use hiwonder_interfaces-msg:repeat instead.")
  (repeat m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Buzzer>) ostream)
  "Serializes a message object of type '<Buzzer>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'freq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'on_ticks)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'on_ticks)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'off_ticks)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'off_ticks)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'repeat)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'repeat)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Buzzer>) istream)
  "Deserializes a message object of type '<Buzzer>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'freq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'on_ticks)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'on_ticks)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'off_ticks)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'off_ticks)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'repeat)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'repeat)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Buzzer>)))
  "Returns string type for a message object of type '<Buzzer>"
  "hiwonder_interfaces/Buzzer")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Buzzer)))
  "Returns string type for a message object of type 'Buzzer"
  "hiwonder_interfaces/Buzzer")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Buzzer>)))
  "Returns md5sum for a message object of type '<Buzzer>"
  "c553d26ba33d63f49b15ae65585246e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Buzzer)))
  "Returns md5sum for a message object of type 'Buzzer"
  "c553d26ba33d63f49b15ae65585246e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Buzzer>)))
  "Returns full string definition for message of type '<Buzzer>"
  (cl:format cl:nil "uint16 freq           # 蜂鸣器声音频率~%uint16 on_ticks       # 蜂鸣器响的时长 毫秒~%uint16 off_ticks      # 蜂鸣器不响的时长 毫秒~%uint16 repeat         # 蜂鸣器响与不响重复次数~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Buzzer)))
  "Returns full string definition for message of type 'Buzzer"
  (cl:format cl:nil "uint16 freq           # 蜂鸣器声音频率~%uint16 on_ticks       # 蜂鸣器响的时长 毫秒~%uint16 off_ticks      # 蜂鸣器不响的时长 毫秒~%uint16 repeat         # 蜂鸣器响与不响重复次数~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Buzzer>))
  (cl:+ 0
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Buzzer>))
  "Converts a ROS message object to a list"
  (cl:list 'Buzzer
    (cl:cons ':freq (freq msg))
    (cl:cons ':on_ticks (on_ticks msg))
    (cl:cons ':off_ticks (off_ticks msg))
    (cl:cons ':repeat (repeat msg))
))
