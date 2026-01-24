; Auto-generated. Do not edit!


(cl:in-package ros_robot_controller-srv)


;//! \htmlinclude GetBusServoState-request.msg.html

(cl:defclass <GetBusServoState-request> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type (cl:vector ros_robot_controller-msg:GetBusServoCmd)
   :initform (cl:make-array 0 :element-type 'ros_robot_controller-msg:GetBusServoCmd :initial-element (cl:make-instance 'ros_robot_controller-msg:GetBusServoCmd))))
)

(cl:defclass GetBusServoState-request (<GetBusServoState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetBusServoState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetBusServoState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_robot_controller-srv:<GetBusServoState-request> is deprecated: use ros_robot_controller-srv:GetBusServoState-request instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <GetBusServoState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-srv:cmd-val is deprecated.  Use ros_robot_controller-srv:cmd instead.")
  (cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetBusServoState-request>) ostream)
  "Serializes a message object of type '<GetBusServoState-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cmd))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetBusServoState-request>) istream)
  "Deserializes a message object of type '<GetBusServoState-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cmd) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cmd)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_robot_controller-msg:GetBusServoCmd))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetBusServoState-request>)))
  "Returns string type for a service object of type '<GetBusServoState-request>"
  "ros_robot_controller/GetBusServoStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBusServoState-request)))
  "Returns string type for a service object of type 'GetBusServoState-request"
  "ros_robot_controller/GetBusServoStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetBusServoState-request>)))
  "Returns md5sum for a message object of type '<GetBusServoState-request>"
  "54f81ea2fc5cd9bb899d788802438b6e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetBusServoState-request)))
  "Returns md5sum for a message object of type 'GetBusServoState-request"
  "54f81ea2fc5cd9bb899d788802438b6e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetBusServoState-request>)))
  "Returns full string definition for message of type '<GetBusServoState-request>"
  (cl:format cl:nil "ros_robot_controller/GetBusServoCmd[] cmd~%~%================================================================================~%MSG: ros_robot_controller/GetBusServoCmd~%uint8 id~%uint8 get_id~%uint8 get_position~%uint8 get_offset~%uint8 get_voltage~%uint8 get_temperature~%uint8 get_position_limit~%uint8 get_voltage_limit~%uint8 get_max_temperature_limit~%uint8 get_torque_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetBusServoState-request)))
  "Returns full string definition for message of type 'GetBusServoState-request"
  (cl:format cl:nil "ros_robot_controller/GetBusServoCmd[] cmd~%~%================================================================================~%MSG: ros_robot_controller/GetBusServoCmd~%uint8 id~%uint8 get_id~%uint8 get_position~%uint8 get_offset~%uint8 get_voltage~%uint8 get_temperature~%uint8 get_position_limit~%uint8 get_voltage_limit~%uint8 get_max_temperature_limit~%uint8 get_torque_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetBusServoState-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cmd) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetBusServoState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetBusServoState-request
    (cl:cons ':cmd (cmd msg))
))
;//! \htmlinclude GetBusServoState-response.msg.html

(cl:defclass <GetBusServoState-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (state
    :reader state
    :initarg :state
    :type (cl:vector ros_robot_controller-msg:BusServoState)
   :initform (cl:make-array 0 :element-type 'ros_robot_controller-msg:BusServoState :initial-element (cl:make-instance 'ros_robot_controller-msg:BusServoState))))
)

(cl:defclass GetBusServoState-response (<GetBusServoState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetBusServoState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetBusServoState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_robot_controller-srv:<GetBusServoState-response> is deprecated: use ros_robot_controller-srv:GetBusServoState-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetBusServoState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-srv:success-val is deprecated.  Use ros_robot_controller-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <GetBusServoState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-srv:state-val is deprecated.  Use ros_robot_controller-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetBusServoState-response>) ostream)
  "Serializes a message object of type '<GetBusServoState-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetBusServoState-response>) istream)
  "Deserializes a message object of type '<GetBusServoState-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'state) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'state)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_robot_controller-msg:BusServoState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetBusServoState-response>)))
  "Returns string type for a service object of type '<GetBusServoState-response>"
  "ros_robot_controller/GetBusServoStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBusServoState-response)))
  "Returns string type for a service object of type 'GetBusServoState-response"
  "ros_robot_controller/GetBusServoStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetBusServoState-response>)))
  "Returns md5sum for a message object of type '<GetBusServoState-response>"
  "54f81ea2fc5cd9bb899d788802438b6e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetBusServoState-response)))
  "Returns md5sum for a message object of type 'GetBusServoState-response"
  "54f81ea2fc5cd9bb899d788802438b6e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetBusServoState-response>)))
  "Returns full string definition for message of type '<GetBusServoState-response>"
  (cl:format cl:nil "bool success~%ros_robot_controller/BusServoState[] state~%~%~%================================================================================~%MSG: ros_robot_controller/BusServoState~%uint16[] present_id~%uint16[] target_id~%uint16[] position~%int16[] offset~%uint16[] voltage~%uint16[] temperature~%uint16[] position_limit~%uint16[] voltage_limit~%uint16[] max_temperature_limit~%uint16[] enable_torque~%uint16[] save_offset~%uint16[] stop~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetBusServoState-response)))
  "Returns full string definition for message of type 'GetBusServoState-response"
  (cl:format cl:nil "bool success~%ros_robot_controller/BusServoState[] state~%~%~%================================================================================~%MSG: ros_robot_controller/BusServoState~%uint16[] present_id~%uint16[] target_id~%uint16[] position~%int16[] offset~%uint16[] voltage~%uint16[] temperature~%uint16[] position_limit~%uint16[] voltage_limit~%uint16[] max_temperature_limit~%uint16[] enable_torque~%uint16[] save_offset~%uint16[] stop~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetBusServoState-response>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetBusServoState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetBusServoState-response
    (cl:cons ':success (success msg))
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetBusServoState)))
  'GetBusServoState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetBusServoState)))
  'GetBusServoState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBusServoState)))
  "Returns string type for a service object of type '<GetBusServoState>"
  "ros_robot_controller/GetBusServoState")