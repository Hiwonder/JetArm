; Auto-generated. Do not edit!


(cl:in-package hiwonder_interfaces-msg)


;//! \htmlinclude SerialServoBool.msg.html

(cl:defclass <SerialServoBool> (roslisp-msg-protocol:ros-message)
  ((servo_id
    :reader servo_id
    :initarg :servo_id
    :type cl:fixnum
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SerialServoBool (<SerialServoBool>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SerialServoBool>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SerialServoBool)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_interfaces-msg:<SerialServoBool> is deprecated: use hiwonder_interfaces-msg:SerialServoBool instead.")))

(cl:ensure-generic-function 'servo_id-val :lambda-list '(m))
(cl:defmethod servo_id-val ((m <SerialServoBool>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-msg:servo_id-val is deprecated.  Use hiwonder_interfaces-msg:servo_id instead.")
  (servo_id m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <SerialServoBool>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-msg:state-val is deprecated.  Use hiwonder_interfaces-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SerialServoBool>) ostream)
  "Serializes a message object of type '<SerialServoBool>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'servo_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'state) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SerialServoBool>) istream)
  "Deserializes a message object of type '<SerialServoBool>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'servo_id)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'state) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SerialServoBool>)))
  "Returns string type for a message object of type '<SerialServoBool>"
  "hiwonder_interfaces/SerialServoBool")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SerialServoBool)))
  "Returns string type for a message object of type 'SerialServoBool"
  "hiwonder_interfaces/SerialServoBool")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SerialServoBool>)))
  "Returns md5sum for a message object of type '<SerialServoBool>"
  "d73ace136d2944106a7cfcfd261a5b9a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SerialServoBool)))
  "Returns md5sum for a message object of type 'SerialServoBool"
  "d73ace136d2944106a7cfcfd261a5b9a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SerialServoBool>)))
  "Returns full string definition for message of type '<SerialServoBool>"
  (cl:format cl:nil "uint8 servo_id~%bool  state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SerialServoBool)))
  "Returns full string definition for message of type 'SerialServoBool"
  (cl:format cl:nil "uint8 servo_id~%bool  state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SerialServoBool>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SerialServoBool>))
  "Converts a ROS message object to a list"
  (cl:list 'SerialServoBool
    (cl:cons ':servo_id (servo_id msg))
    (cl:cons ':state (state msg))
))
