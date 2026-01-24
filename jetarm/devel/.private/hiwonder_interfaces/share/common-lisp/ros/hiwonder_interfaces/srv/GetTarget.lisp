; Auto-generated. Do not edit!


(cl:in-package hiwonder_interfaces-srv)


;//! \htmlinclude GetTarget-request.msg.html

(cl:defclass <GetTarget-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetTarget-request (<GetTarget-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTarget-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTarget-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_interfaces-srv:<GetTarget-request> is deprecated: use hiwonder_interfaces-srv:GetTarget-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTarget-request>) ostream)
  "Serializes a message object of type '<GetTarget-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTarget-request>) istream)
  "Deserializes a message object of type '<GetTarget-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTarget-request>)))
  "Returns string type for a service object of type '<GetTarget-request>"
  "hiwonder_interfaces/GetTargetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTarget-request)))
  "Returns string type for a service object of type 'GetTarget-request"
  "hiwonder_interfaces/GetTargetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTarget-request>)))
  "Returns md5sum for a message object of type '<GetTarget-request>"
  "a969347dbd0044352898c1217b7481aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTarget-request)))
  "Returns md5sum for a message object of type 'GetTarget-request"
  "a969347dbd0044352898c1217b7481aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTarget-request>)))
  "Returns full string definition for message of type '<GetTarget-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTarget-request)))
  "Returns full string definition for message of type 'GetTarget-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTarget-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTarget-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTarget-request
))
;//! \htmlinclude GetTarget-response.msg.html

(cl:defclass <GetTarget-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (label
    :reader label
    :initarg :label
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass GetTarget-response (<GetTarget-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTarget-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTarget-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_interfaces-srv:<GetTarget-response> is deprecated: use hiwonder_interfaces-srv:GetTarget-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetTarget-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-srv:success-val is deprecated.  Use hiwonder_interfaces-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <GetTarget-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-srv:label-val is deprecated.  Use hiwonder_interfaces-srv:label instead.")
  (label m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTarget-response>) ostream)
  "Serializes a message object of type '<GetTarget-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'label))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'label))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTarget-response>) istream)
  "Deserializes a message object of type '<GetTarget-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'label) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'label)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTarget-response>)))
  "Returns string type for a service object of type '<GetTarget-response>"
  "hiwonder_interfaces/GetTargetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTarget-response)))
  "Returns string type for a service object of type 'GetTarget-response"
  "hiwonder_interfaces/GetTargetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTarget-response>)))
  "Returns md5sum for a message object of type '<GetTarget-response>"
  "a969347dbd0044352898c1217b7481aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTarget-response)))
  "Returns md5sum for a message object of type 'GetTarget-response"
  "a969347dbd0044352898c1217b7481aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTarget-response>)))
  "Returns full string definition for message of type '<GetTarget-response>"
  (cl:format cl:nil "bool success~%~%# 颜色标签，如'red', 'green', 'blue'~%# 垃圾类别，如'BananaPeel'~%string[] label~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTarget-response)))
  "Returns full string definition for message of type 'GetTarget-response"
  (cl:format cl:nil "bool success~%~%# 颜色标签，如'red', 'green', 'blue'~%# 垃圾类别，如'BananaPeel'~%string[] label~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTarget-response>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'label) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTarget-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTarget-response
    (cl:cons ':success (success msg))
    (cl:cons ':label (label msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTarget)))
  'GetTarget-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTarget)))
  'GetTarget-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTarget)))
  "Returns string type for a service object of type '<GetTarget>"
  "hiwonder_interfaces/GetTarget")