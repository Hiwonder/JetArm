; Auto-generated. Do not edit!


(cl:in-package hiwonder_interfaces-srv)


;//! \htmlinclude SerialServoTrigger-request.msg.html

(cl:defclass <SerialServoTrigger-request> (roslisp-msg-protocol:ros-message)
  ((servo_id
    :reader servo_id
    :initarg :servo_id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SerialServoTrigger-request (<SerialServoTrigger-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SerialServoTrigger-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SerialServoTrigger-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_interfaces-srv:<SerialServoTrigger-request> is deprecated: use hiwonder_interfaces-srv:SerialServoTrigger-request instead.")))

(cl:ensure-generic-function 'servo_id-val :lambda-list '(m))
(cl:defmethod servo_id-val ((m <SerialServoTrigger-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-srv:servo_id-val is deprecated.  Use hiwonder_interfaces-srv:servo_id instead.")
  (servo_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SerialServoTrigger-request>) ostream)
  "Serializes a message object of type '<SerialServoTrigger-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'servo_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SerialServoTrigger-request>) istream)
  "Deserializes a message object of type '<SerialServoTrigger-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'servo_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SerialServoTrigger-request>)))
  "Returns string type for a service object of type '<SerialServoTrigger-request>"
  "hiwonder_interfaces/SerialServoTriggerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SerialServoTrigger-request)))
  "Returns string type for a service object of type 'SerialServoTrigger-request"
  "hiwonder_interfaces/SerialServoTriggerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SerialServoTrigger-request>)))
  "Returns md5sum for a message object of type '<SerialServoTrigger-request>"
  "5f5091eac81f15b2ecca9496c10bde6a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SerialServoTrigger-request)))
  "Returns md5sum for a message object of type 'SerialServoTrigger-request"
  "5f5091eac81f15b2ecca9496c10bde6a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SerialServoTrigger-request>)))
  "Returns full string definition for message of type '<SerialServoTrigger-request>"
  (cl:format cl:nil "uint8 servo_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SerialServoTrigger-request)))
  "Returns full string definition for message of type 'SerialServoTrigger-request"
  (cl:format cl:nil "uint8 servo_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SerialServoTrigger-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SerialServoTrigger-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SerialServoTrigger-request
    (cl:cons ':servo_id (servo_id msg))
))
;//! \htmlinclude SerialServoTrigger-response.msg.html

(cl:defclass <SerialServoTrigger-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SerialServoTrigger-response (<SerialServoTrigger-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SerialServoTrigger-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SerialServoTrigger-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_interfaces-srv:<SerialServoTrigger-response> is deprecated: use hiwonder_interfaces-srv:SerialServoTrigger-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SerialServoTrigger-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-srv:success-val is deprecated.  Use hiwonder_interfaces-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SerialServoTrigger-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-srv:message-val is deprecated.  Use hiwonder_interfaces-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SerialServoTrigger-response>) ostream)
  "Serializes a message object of type '<SerialServoTrigger-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SerialServoTrigger-response>) istream)
  "Deserializes a message object of type '<SerialServoTrigger-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SerialServoTrigger-response>)))
  "Returns string type for a service object of type '<SerialServoTrigger-response>"
  "hiwonder_interfaces/SerialServoTriggerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SerialServoTrigger-response)))
  "Returns string type for a service object of type 'SerialServoTrigger-response"
  "hiwonder_interfaces/SerialServoTriggerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SerialServoTrigger-response>)))
  "Returns md5sum for a message object of type '<SerialServoTrigger-response>"
  "5f5091eac81f15b2ecca9496c10bde6a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SerialServoTrigger-response)))
  "Returns md5sum for a message object of type 'SerialServoTrigger-response"
  "5f5091eac81f15b2ecca9496c10bde6a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SerialServoTrigger-response>)))
  "Returns full string definition for message of type '<SerialServoTrigger-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SerialServoTrigger-response)))
  "Returns full string definition for message of type 'SerialServoTrigger-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SerialServoTrigger-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SerialServoTrigger-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SerialServoTrigger-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SerialServoTrigger)))
  'SerialServoTrigger-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SerialServoTrigger)))
  'SerialServoTrigger-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SerialServoTrigger)))
  "Returns string type for a service object of type '<SerialServoTrigger>"
  "hiwonder_interfaces/SerialServoTrigger")