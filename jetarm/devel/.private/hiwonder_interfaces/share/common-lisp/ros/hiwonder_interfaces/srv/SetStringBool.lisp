; Auto-generated. Do not edit!


(cl:in-package hiwonder_interfaces-srv)


;//! \htmlinclude SetStringBool-request.msg.html

(cl:defclass <SetStringBool-request> (roslisp-msg-protocol:ros-message)
  ((data_str
    :reader data_str
    :initarg :data_str
    :type cl:string
    :initform "")
   (data_bool
    :reader data_bool
    :initarg :data_bool
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetStringBool-request (<SetStringBool-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetStringBool-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetStringBool-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_interfaces-srv:<SetStringBool-request> is deprecated: use hiwonder_interfaces-srv:SetStringBool-request instead.")))

(cl:ensure-generic-function 'data_str-val :lambda-list '(m))
(cl:defmethod data_str-val ((m <SetStringBool-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-srv:data_str-val is deprecated.  Use hiwonder_interfaces-srv:data_str instead.")
  (data_str m))

(cl:ensure-generic-function 'data_bool-val :lambda-list '(m))
(cl:defmethod data_bool-val ((m <SetStringBool-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-srv:data_bool-val is deprecated.  Use hiwonder_interfaces-srv:data_bool instead.")
  (data_bool m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetStringBool-request>) ostream)
  "Serializes a message object of type '<SetStringBool-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data_str))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data_str))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'data_bool) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetStringBool-request>) istream)
  "Deserializes a message object of type '<SetStringBool-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data_str) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data_str) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'data_bool) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetStringBool-request>)))
  "Returns string type for a service object of type '<SetStringBool-request>"
  "hiwonder_interfaces/SetStringBoolRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetStringBool-request)))
  "Returns string type for a service object of type 'SetStringBool-request"
  "hiwonder_interfaces/SetStringBoolRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetStringBool-request>)))
  "Returns md5sum for a message object of type '<SetStringBool-request>"
  "c3a1ce4d99d15a1a0c350abb00d13216")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetStringBool-request)))
  "Returns md5sum for a message object of type 'SetStringBool-request"
  "c3a1ce4d99d15a1a0c350abb00d13216")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetStringBool-request>)))
  "Returns full string definition for message of type '<SetStringBool-request>"
  (cl:format cl:nil "string data_str~%bool data_bool~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetStringBool-request)))
  "Returns full string definition for message of type 'SetStringBool-request"
  (cl:format cl:nil "string data_str~%bool data_bool~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetStringBool-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'data_str))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetStringBool-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetStringBool-request
    (cl:cons ':data_str (data_str msg))
    (cl:cons ':data_bool (data_bool msg))
))
;//! \htmlinclude SetStringBool-response.msg.html

(cl:defclass <SetStringBool-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetStringBool-response (<SetStringBool-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetStringBool-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetStringBool-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_interfaces-srv:<SetStringBool-response> is deprecated: use hiwonder_interfaces-srv:SetStringBool-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetStringBool-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-srv:success-val is deprecated.  Use hiwonder_interfaces-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetStringBool-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-srv:message-val is deprecated.  Use hiwonder_interfaces-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetStringBool-response>) ostream)
  "Serializes a message object of type '<SetStringBool-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetStringBool-response>) istream)
  "Deserializes a message object of type '<SetStringBool-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetStringBool-response>)))
  "Returns string type for a service object of type '<SetStringBool-response>"
  "hiwonder_interfaces/SetStringBoolResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetStringBool-response)))
  "Returns string type for a service object of type 'SetStringBool-response"
  "hiwonder_interfaces/SetStringBoolResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetStringBool-response>)))
  "Returns md5sum for a message object of type '<SetStringBool-response>"
  "c3a1ce4d99d15a1a0c350abb00d13216")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetStringBool-response)))
  "Returns md5sum for a message object of type 'SetStringBool-response"
  "c3a1ce4d99d15a1a0c350abb00d13216")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetStringBool-response>)))
  "Returns full string definition for message of type '<SetStringBool-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetStringBool-response)))
  "Returns full string definition for message of type 'SetStringBool-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetStringBool-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetStringBool-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetStringBool-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetStringBool)))
  'SetStringBool-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetStringBool)))
  'SetStringBool-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetStringBool)))
  "Returns string type for a service object of type '<SetStringBool>"
  "hiwonder_interfaces/SetStringBool")