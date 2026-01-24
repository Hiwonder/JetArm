; Auto-generated. Do not edit!


(cl:in-package hiwonder_interfaces-srv)


;//! \htmlinclude GetLink-request.msg.html

(cl:defclass <GetLink-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetLink-request (<GetLink-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLink-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLink-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_interfaces-srv:<GetLink-request> is deprecated: use hiwonder_interfaces-srv:GetLink-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLink-request>) ostream)
  "Serializes a message object of type '<GetLink-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLink-request>) istream)
  "Deserializes a message object of type '<GetLink-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLink-request>)))
  "Returns string type for a service object of type '<GetLink-request>"
  "hiwonder_interfaces/GetLinkRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLink-request)))
  "Returns string type for a service object of type 'GetLink-request"
  "hiwonder_interfaces/GetLinkRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLink-request>)))
  "Returns md5sum for a message object of type '<GetLink-request>"
  "f52e183781a78fdf83d51e914c2363e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLink-request)))
  "Returns md5sum for a message object of type 'GetLink-request"
  "f52e183781a78fdf83d51e914c2363e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLink-request>)))
  "Returns full string definition for message of type '<GetLink-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLink-request)))
  "Returns full string definition for message of type 'GetLink-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLink-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLink-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLink-request
))
;//! \htmlinclude GetLink-response.msg.html

(cl:defclass <GetLink-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass GetLink-response (<GetLink-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetLink-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetLink-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_interfaces-srv:<GetLink-response> is deprecated: use hiwonder_interfaces-srv:GetLink-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetLink-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-srv:success-val is deprecated.  Use hiwonder_interfaces-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <GetLink-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-srv:data-val is deprecated.  Use hiwonder_interfaces-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetLink-response>) ostream)
  "Serializes a message object of type '<GetLink-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetLink-response>) istream)
  "Deserializes a message object of type '<GetLink-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetLink-response>)))
  "Returns string type for a service object of type '<GetLink-response>"
  "hiwonder_interfaces/GetLinkResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLink-response)))
  "Returns string type for a service object of type 'GetLink-response"
  "hiwonder_interfaces/GetLinkResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetLink-response>)))
  "Returns md5sum for a message object of type '<GetLink-response>"
  "f52e183781a78fdf83d51e914c2363e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetLink-response)))
  "Returns md5sum for a message object of type 'GetLink-response"
  "f52e183781a78fdf83d51e914c2363e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetLink-response>)))
  "Returns full string definition for message of type '<GetLink-response>"
  (cl:format cl:nil "bool success~%float32[] data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetLink-response)))
  "Returns full string definition for message of type 'GetLink-response"
  (cl:format cl:nil "bool success~%float32[] data~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetLink-response>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetLink-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetLink-response
    (cl:cons ':success (success msg))
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetLink)))
  'GetLink-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetLink)))
  'GetLink-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetLink)))
  "Returns string type for a service object of type '<GetLink>"
  "hiwonder_interfaces/GetLink")