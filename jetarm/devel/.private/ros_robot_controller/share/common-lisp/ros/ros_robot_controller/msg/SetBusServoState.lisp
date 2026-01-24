; Auto-generated. Do not edit!


(cl:in-package ros_robot_controller-msg)


;//! \htmlinclude SetBusServoState.msg.html

(cl:defclass <SetBusServoState> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type (cl:vector ros_robot_controller-msg:BusServoState)
   :initform (cl:make-array 0 :element-type 'ros_robot_controller-msg:BusServoState :initial-element (cl:make-instance 'ros_robot_controller-msg:BusServoState)))
   (duration
    :reader duration
    :initarg :duration
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetBusServoState (<SetBusServoState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetBusServoState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetBusServoState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_robot_controller-msg:<SetBusServoState> is deprecated: use ros_robot_controller-msg:SetBusServoState instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <SetBusServoState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-msg:state-val is deprecated.  Use ros_robot_controller-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <SetBusServoState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-msg:duration-val is deprecated.  Use ros_robot_controller-msg:duration instead.")
  (duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetBusServoState>) ostream)
  "Serializes a message object of type '<SetBusServoState>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'state))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'duration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetBusServoState>) istream)
  "Deserializes a message object of type '<SetBusServoState>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'duration) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetBusServoState>)))
  "Returns string type for a message object of type '<SetBusServoState>"
  "ros_robot_controller/SetBusServoState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetBusServoState)))
  "Returns string type for a message object of type 'SetBusServoState"
  "ros_robot_controller/SetBusServoState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetBusServoState>)))
  "Returns md5sum for a message object of type '<SetBusServoState>"
  "4c162cb0075a537b5363b13444d6806c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetBusServoState)))
  "Returns md5sum for a message object of type 'SetBusServoState"
  "4c162cb0075a537b5363b13444d6806c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetBusServoState>)))
  "Returns full string definition for message of type '<SetBusServoState>"
  (cl:format cl:nil "ros_robot_controller/BusServoState[] state~%~%float64 duration~%~%================================================================================~%MSG: ros_robot_controller/BusServoState~%uint16[] present_id~%uint16[] target_id~%uint16[] position~%int16[] offset~%uint16[] voltage~%uint16[] temperature~%uint16[] position_limit~%uint16[] voltage_limit~%uint16[] max_temperature_limit~%uint16[] enable_torque~%uint16[] save_offset~%uint16[] stop~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetBusServoState)))
  "Returns full string definition for message of type 'SetBusServoState"
  (cl:format cl:nil "ros_robot_controller/BusServoState[] state~%~%float64 duration~%~%================================================================================~%MSG: ros_robot_controller/BusServoState~%uint16[] present_id~%uint16[] target_id~%uint16[] position~%int16[] offset~%uint16[] voltage~%uint16[] temperature~%uint16[] position_limit~%uint16[] voltage_limit~%uint16[] max_temperature_limit~%uint16[] enable_torque~%uint16[] save_offset~%uint16[] stop~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetBusServoState>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetBusServoState>))
  "Converts a ROS message object to a list"
  (cl:list 'SetBusServoState
    (cl:cons ':state (state msg))
    (cl:cons ':duration (duration msg))
))
