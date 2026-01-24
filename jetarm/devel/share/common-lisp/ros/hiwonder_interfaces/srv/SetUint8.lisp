; Auto-generated. Do not edit!


(cl:in-package hiwonder_interfaces-srv)


;//! \htmlinclude SetUint8-request.msg.html

(cl:defclass <SetUint8-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SetUint8-request (<SetUint8-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetUint8-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetUint8-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_interfaces-srv:<SetUint8-request> is deprecated: use hiwonder_interfaces-srv:SetUint8-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SetUint8-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-srv:data-val is deprecated.  Use hiwonder_interfaces-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetUint8-request>) ostream)
  "Serializes a message object of type '<SetUint8-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetUint8-request>) istream)
  "Deserializes a message object of type '<SetUint8-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetUint8-request>)))
  "Returns string type for a service object of type '<SetUint8-request>"
  "hiwonder_interfaces/SetUint8Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUint8-request)))
  "Returns string type for a service object of type 'SetUint8-request"
  "hiwonder_interfaces/SetUint8Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetUint8-request>)))
  "Returns md5sum for a message object of type '<SetUint8-request>"
  "6af36db12f1ac4a2aedbd1b5bfa8850d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetUint8-request)))
  "Returns md5sum for a message object of type 'SetUint8-request"
  "6af36db12f1ac4a2aedbd1b5bfa8850d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetUint8-request>)))
  "Returns full string definition for message of type '<SetUint8-request>"
  (cl:format cl:nil "uint8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetUint8-request)))
  "Returns full string definition for message of type 'SetUint8-request"
  (cl:format cl:nil "uint8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetUint8-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetUint8-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetUint8-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude SetUint8-response.msg.html

(cl:defclass <SetUint8-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetUint8-response (<SetUint8-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetUint8-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetUint8-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_interfaces-srv:<SetUint8-response> is deprecated: use hiwonder_interfaces-srv:SetUint8-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetUint8-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-srv:success-val is deprecated.  Use hiwonder_interfaces-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetUint8-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-srv:message-val is deprecated.  Use hiwonder_interfaces-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetUint8-response>) ostream)
  "Serializes a message object of type '<SetUint8-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetUint8-response>) istream)
  "Deserializes a message object of type '<SetUint8-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetUint8-response>)))
  "Returns string type for a service object of type '<SetUint8-response>"
  "hiwonder_interfaces/SetUint8Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUint8-response)))
  "Returns string type for a service object of type 'SetUint8-response"
  "hiwonder_interfaces/SetUint8Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetUint8-response>)))
  "Returns md5sum for a message object of type '<SetUint8-response>"
  "6af36db12f1ac4a2aedbd1b5bfa8850d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetUint8-response)))
  "Returns md5sum for a message object of type 'SetUint8-response"
  "6af36db12f1ac4a2aedbd1b5bfa8850d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetUint8-response>)))
  "Returns full string definition for message of type '<SetUint8-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetUint8-response)))
  "Returns full string definition for message of type 'SetUint8-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetUint8-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetUint8-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetUint8-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetUint8)))
  'SetUint8-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetUint8)))
  'SetUint8-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetUint8)))
  "Returns string type for a service object of type '<SetUint8>"
  "hiwonder_interfaces/SetUint8")