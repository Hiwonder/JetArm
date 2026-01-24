; Auto-generated. Do not edit!


(cl:in-package ros_robot_controller-srv)


;//! \htmlinclude GetPWMServoState-request.msg.html

(cl:defclass <GetPWMServoState-request> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type (cl:vector ros_robot_controller-msg:GetPWMServoCmd)
   :initform (cl:make-array 0 :element-type 'ros_robot_controller-msg:GetPWMServoCmd :initial-element (cl:make-instance 'ros_robot_controller-msg:GetPWMServoCmd))))
)

(cl:defclass GetPWMServoState-request (<GetPWMServoState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPWMServoState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPWMServoState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_robot_controller-srv:<GetPWMServoState-request> is deprecated: use ros_robot_controller-srv:GetPWMServoState-request instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <GetPWMServoState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-srv:cmd-val is deprecated.  Use ros_robot_controller-srv:cmd instead.")
  (cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPWMServoState-request>) ostream)
  "Serializes a message object of type '<GetPWMServoState-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cmd))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPWMServoState-request>) istream)
  "Deserializes a message object of type '<GetPWMServoState-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cmd) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cmd)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_robot_controller-msg:GetPWMServoCmd))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPWMServoState-request>)))
  "Returns string type for a service object of type '<GetPWMServoState-request>"
  "ros_robot_controller/GetPWMServoStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPWMServoState-request)))
  "Returns string type for a service object of type 'GetPWMServoState-request"
  "ros_robot_controller/GetPWMServoStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPWMServoState-request>)))
  "Returns md5sum for a message object of type '<GetPWMServoState-request>"
  "eccb5a32f9dcce6f34bacf96f9507544")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPWMServoState-request)))
  "Returns md5sum for a message object of type 'GetPWMServoState-request"
  "eccb5a32f9dcce6f34bacf96f9507544")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPWMServoState-request>)))
  "Returns full string definition for message of type '<GetPWMServoState-request>"
  (cl:format cl:nil "ros_robot_controller/GetPWMServoCmd[] cmd~%~%================================================================================~%MSG: ros_robot_controller/GetPWMServoCmd~%uint8 get_position~%uint8 get_offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPWMServoState-request)))
  "Returns full string definition for message of type 'GetPWMServoState-request"
  (cl:format cl:nil "ros_robot_controller/GetPWMServoCmd[] cmd~%~%================================================================================~%MSG: ros_robot_controller/GetPWMServoCmd~%uint8 get_position~%uint8 get_offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPWMServoState-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cmd) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPWMServoState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPWMServoState-request
    (cl:cons ':cmd (cmd msg))
))
;//! \htmlinclude GetPWMServoState-response.msg.html

(cl:defclass <GetPWMServoState-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (state
    :reader state
    :initarg :state
    :type (cl:vector ros_robot_controller-msg:PWMServoState)
   :initform (cl:make-array 0 :element-type 'ros_robot_controller-msg:PWMServoState :initial-element (cl:make-instance 'ros_robot_controller-msg:PWMServoState))))
)

(cl:defclass GetPWMServoState-response (<GetPWMServoState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetPWMServoState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetPWMServoState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_robot_controller-srv:<GetPWMServoState-response> is deprecated: use ros_robot_controller-srv:GetPWMServoState-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetPWMServoState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-srv:success-val is deprecated.  Use ros_robot_controller-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <GetPWMServoState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-srv:state-val is deprecated.  Use ros_robot_controller-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetPWMServoState-response>) ostream)
  "Serializes a message object of type '<GetPWMServoState-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetPWMServoState-response>) istream)
  "Deserializes a message object of type '<GetPWMServoState-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'state) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'state)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_robot_controller-msg:PWMServoState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetPWMServoState-response>)))
  "Returns string type for a service object of type '<GetPWMServoState-response>"
  "ros_robot_controller/GetPWMServoStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPWMServoState-response)))
  "Returns string type for a service object of type 'GetPWMServoState-response"
  "ros_robot_controller/GetPWMServoStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetPWMServoState-response>)))
  "Returns md5sum for a message object of type '<GetPWMServoState-response>"
  "eccb5a32f9dcce6f34bacf96f9507544")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetPWMServoState-response)))
  "Returns md5sum for a message object of type 'GetPWMServoState-response"
  "eccb5a32f9dcce6f34bacf96f9507544")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetPWMServoState-response>)))
  "Returns full string definition for message of type '<GetPWMServoState-response>"
  (cl:format cl:nil "bool success~%ros_robot_controller/PWMServoState[] state~%~%~%================================================================================~%MSG: ros_robot_controller/PWMServoState~%uint16[] id~%uint16[] position~%int16[] offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetPWMServoState-response)))
  "Returns full string definition for message of type 'GetPWMServoState-response"
  (cl:format cl:nil "bool success~%ros_robot_controller/PWMServoState[] state~%~%~%================================================================================~%MSG: ros_robot_controller/PWMServoState~%uint16[] id~%uint16[] position~%int16[] offset~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetPWMServoState-response>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetPWMServoState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetPWMServoState-response
    (cl:cons ':success (success msg))
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetPWMServoState)))
  'GetPWMServoState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetPWMServoState)))
  'GetPWMServoState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetPWMServoState)))
  "Returns string type for a service object of type '<GetPWMServoState>"
  "ros_robot_controller/GetPWMServoState")