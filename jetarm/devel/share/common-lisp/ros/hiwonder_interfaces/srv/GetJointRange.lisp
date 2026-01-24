; Auto-generated. Do not edit!


(cl:in-package hiwonder_interfaces-srv)


;//! \htmlinclude GetJointRange-request.msg.html

(cl:defclass <GetJointRange-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetJointRange-request (<GetJointRange-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetJointRange-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetJointRange-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_interfaces-srv:<GetJointRange-request> is deprecated: use hiwonder_interfaces-srv:GetJointRange-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetJointRange-request>) ostream)
  "Serializes a message object of type '<GetJointRange-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetJointRange-request>) istream)
  "Deserializes a message object of type '<GetJointRange-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetJointRange-request>)))
  "Returns string type for a service object of type '<GetJointRange-request>"
  "hiwonder_interfaces/GetJointRangeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetJointRange-request)))
  "Returns string type for a service object of type 'GetJointRange-request"
  "hiwonder_interfaces/GetJointRangeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetJointRange-request>)))
  "Returns md5sum for a message object of type '<GetJointRange-request>"
  "33e6f68f335a1196c0815d29210eb550")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetJointRange-request)))
  "Returns md5sum for a message object of type 'GetJointRange-request"
  "33e6f68f335a1196c0815d29210eb550")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetJointRange-request>)))
  "Returns full string definition for message of type '<GetJointRange-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetJointRange-request)))
  "Returns full string definition for message of type 'GetJointRange-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetJointRange-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetJointRange-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetJointRange-request
))
;//! \htmlinclude GetJointRange-response.msg.html

(cl:defclass <GetJointRange-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (data
    :reader data
    :initarg :data
    :type hiwonder_interfaces-msg:JointsRange
    :initform (cl:make-instance 'hiwonder_interfaces-msg:JointsRange)))
)

(cl:defclass GetJointRange-response (<GetJointRange-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetJointRange-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetJointRange-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_interfaces-srv:<GetJointRange-response> is deprecated: use hiwonder_interfaces-srv:GetJointRange-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetJointRange-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-srv:success-val is deprecated.  Use hiwonder_interfaces-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <GetJointRange-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-srv:data-val is deprecated.  Use hiwonder_interfaces-srv:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetJointRange-response>) ostream)
  "Serializes a message object of type '<GetJointRange-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'data) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetJointRange-response>) istream)
  "Deserializes a message object of type '<GetJointRange-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'data) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetJointRange-response>)))
  "Returns string type for a service object of type '<GetJointRange-response>"
  "hiwonder_interfaces/GetJointRangeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetJointRange-response)))
  "Returns string type for a service object of type 'GetJointRange-response"
  "hiwonder_interfaces/GetJointRangeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetJointRange-response>)))
  "Returns md5sum for a message object of type '<GetJointRange-response>"
  "33e6f68f335a1196c0815d29210eb550")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetJointRange-response)))
  "Returns md5sum for a message object of type 'GetJointRange-response"
  "33e6f68f335a1196c0815d29210eb550")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetJointRange-response>)))
  "Returns full string definition for message of type '<GetJointRange-response>"
  (cl:format cl:nil "bool success~%hiwonder_interfaces/JointsRange data~%~%~%================================================================================~%MSG: hiwonder_interfaces/JointsRange~%hiwonder_interfaces/JointRange joint1~%hiwonder_interfaces/JointRange joint2~%hiwonder_interfaces/JointRange joint3~%hiwonder_interfaces/JointRange joint4~%hiwonder_interfaces/JointRange joint5~%~%================================================================================~%MSG: hiwonder_interfaces/JointRange~%float64 min~%float64 max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetJointRange-response)))
  "Returns full string definition for message of type 'GetJointRange-response"
  (cl:format cl:nil "bool success~%hiwonder_interfaces/JointsRange data~%~%~%================================================================================~%MSG: hiwonder_interfaces/JointsRange~%hiwonder_interfaces/JointRange joint1~%hiwonder_interfaces/JointRange joint2~%hiwonder_interfaces/JointRange joint3~%hiwonder_interfaces/JointRange joint4~%hiwonder_interfaces/JointRange joint5~%~%================================================================================~%MSG: hiwonder_interfaces/JointRange~%float64 min~%float64 max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetJointRange-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'data))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetJointRange-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetJointRange-response
    (cl:cons ':success (success msg))
    (cl:cons ':data (data msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetJointRange)))
  'GetJointRange-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetJointRange)))
  'GetJointRange-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetJointRange)))
  "Returns string type for a service object of type '<GetJointRange>"
  "hiwonder_interfaces/GetJointRange")