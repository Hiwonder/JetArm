; Auto-generated. Do not edit!


(cl:in-package hiwonder_interfaces-srv)


;//! \htmlinclude SetJointRange-request.msg.html

(cl:defclass <SetJointRange-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type hiwonder_interfaces-msg:JointsRange
    :initform (cl:make-instance 'hiwonder_interfaces-msg:JointsRange)))
)

(cl:defclass SetJointRange-request (<SetJointRange-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJointRange-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJointRange-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_interfaces-srv:<SetJointRange-request> is deprecated: use hiwonder_interfaces-srv:SetJointRange-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SetJointRange-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-srv:data-val is deprecated.  Use hiwonder_interfaces-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJointRange-request>) ostream)
  "Serializes a message object of type '<SetJointRange-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJointRange-request>) istream)
  "Deserializes a message object of type '<SetJointRange-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJointRange-request>)))
  "Returns string type for a service object of type '<SetJointRange-request>"
  "hiwonder_interfaces/SetJointRangeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointRange-request)))
  "Returns string type for a service object of type 'SetJointRange-request"
  "hiwonder_interfaces/SetJointRangeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJointRange-request>)))
  "Returns md5sum for a message object of type '<SetJointRange-request>"
  "650ce1142907ebb9d989246f5b6eb1fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJointRange-request)))
  "Returns md5sum for a message object of type 'SetJointRange-request"
  "650ce1142907ebb9d989246f5b6eb1fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJointRange-request>)))
  "Returns full string definition for message of type '<SetJointRange-request>"
  (cl:format cl:nil "hiwonder_interfaces/JointsRange data~%~%================================================================================~%MSG: hiwonder_interfaces/JointsRange~%hiwonder_interfaces/JointRange joint1~%hiwonder_interfaces/JointRange joint2~%hiwonder_interfaces/JointRange joint3~%hiwonder_interfaces/JointRange joint4~%hiwonder_interfaces/JointRange joint5~%~%================================================================================~%MSG: hiwonder_interfaces/JointRange~%float64 min~%float64 max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJointRange-request)))
  "Returns full string definition for message of type 'SetJointRange-request"
  (cl:format cl:nil "hiwonder_interfaces/JointsRange data~%~%================================================================================~%MSG: hiwonder_interfaces/JointsRange~%hiwonder_interfaces/JointRange joint1~%hiwonder_interfaces/JointRange joint2~%hiwonder_interfaces/JointRange joint3~%hiwonder_interfaces/JointRange joint4~%hiwonder_interfaces/JointRange joint5~%~%================================================================================~%MSG: hiwonder_interfaces/JointRange~%float64 min~%float64 max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJointRange-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJointRange-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJointRange-request
    (cl:cons ':data (data msg))
))
;//! \htmlinclude SetJointRange-response.msg.html

(cl:defclass <SetJointRange-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SetJointRange-response (<SetJointRange-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJointRange-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJointRange-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_interfaces-srv:<SetJointRange-response> is deprecated: use hiwonder_interfaces-srv:SetJointRange-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetJointRange-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-srv:success-val is deprecated.  Use hiwonder_interfaces-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetJointRange-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-srv:message-val is deprecated.  Use hiwonder_interfaces-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJointRange-response>) ostream)
  "Serializes a message object of type '<SetJointRange-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJointRange-response>) istream)
  "Deserializes a message object of type '<SetJointRange-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJointRange-response>)))
  "Returns string type for a service object of type '<SetJointRange-response>"
  "hiwonder_interfaces/SetJointRangeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointRange-response)))
  "Returns string type for a service object of type 'SetJointRange-response"
  "hiwonder_interfaces/SetJointRangeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJointRange-response>)))
  "Returns md5sum for a message object of type '<SetJointRange-response>"
  "650ce1142907ebb9d989246f5b6eb1fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJointRange-response)))
  "Returns md5sum for a message object of type 'SetJointRange-response"
  "650ce1142907ebb9d989246f5b6eb1fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJointRange-response>)))
  "Returns full string definition for message of type '<SetJointRange-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJointRange-response)))
  "Returns full string definition for message of type 'SetJointRange-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJointRange-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJointRange-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJointRange-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetJointRange)))
  'SetJointRange-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetJointRange)))
  'SetJointRange-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointRange)))
  "Returns string type for a service object of type '<SetJointRange>"
  "hiwonder_interfaces/SetJointRange")