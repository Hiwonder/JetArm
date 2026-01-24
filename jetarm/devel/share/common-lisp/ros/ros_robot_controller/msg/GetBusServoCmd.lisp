; Auto-generated. Do not edit!


(cl:in-package ros_robot_controller-msg)


;//! \htmlinclude GetBusServoCmd.msg.html

(cl:defclass <GetBusServoCmd> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (get_id
    :reader get_id
    :initarg :get_id
    :type cl:fixnum
    :initform 0)
   (get_position
    :reader get_position
    :initarg :get_position
    :type cl:fixnum
    :initform 0)
   (get_offset
    :reader get_offset
    :initarg :get_offset
    :type cl:fixnum
    :initform 0)
   (get_voltage
    :reader get_voltage
    :initarg :get_voltage
    :type cl:fixnum
    :initform 0)
   (get_temperature
    :reader get_temperature
    :initarg :get_temperature
    :type cl:fixnum
    :initform 0)
   (get_position_limit
    :reader get_position_limit
    :initarg :get_position_limit
    :type cl:fixnum
    :initform 0)
   (get_voltage_limit
    :reader get_voltage_limit
    :initarg :get_voltage_limit
    :type cl:fixnum
    :initform 0)
   (get_max_temperature_limit
    :reader get_max_temperature_limit
    :initarg :get_max_temperature_limit
    :type cl:fixnum
    :initform 0)
   (get_torque_state
    :reader get_torque_state
    :initarg :get_torque_state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GetBusServoCmd (<GetBusServoCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetBusServoCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetBusServoCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_robot_controller-msg:<GetBusServoCmd> is deprecated: use ros_robot_controller-msg:GetBusServoCmd instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <GetBusServoCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-msg:id-val is deprecated.  Use ros_robot_controller-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'get_id-val :lambda-list '(m))
(cl:defmethod get_id-val ((m <GetBusServoCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-msg:get_id-val is deprecated.  Use ros_robot_controller-msg:get_id instead.")
  (get_id m))

(cl:ensure-generic-function 'get_position-val :lambda-list '(m))
(cl:defmethod get_position-val ((m <GetBusServoCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-msg:get_position-val is deprecated.  Use ros_robot_controller-msg:get_position instead.")
  (get_position m))

(cl:ensure-generic-function 'get_offset-val :lambda-list '(m))
(cl:defmethod get_offset-val ((m <GetBusServoCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-msg:get_offset-val is deprecated.  Use ros_robot_controller-msg:get_offset instead.")
  (get_offset m))

(cl:ensure-generic-function 'get_voltage-val :lambda-list '(m))
(cl:defmethod get_voltage-val ((m <GetBusServoCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-msg:get_voltage-val is deprecated.  Use ros_robot_controller-msg:get_voltage instead.")
  (get_voltage m))

(cl:ensure-generic-function 'get_temperature-val :lambda-list '(m))
(cl:defmethod get_temperature-val ((m <GetBusServoCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-msg:get_temperature-val is deprecated.  Use ros_robot_controller-msg:get_temperature instead.")
  (get_temperature m))

(cl:ensure-generic-function 'get_position_limit-val :lambda-list '(m))
(cl:defmethod get_position_limit-val ((m <GetBusServoCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-msg:get_position_limit-val is deprecated.  Use ros_robot_controller-msg:get_position_limit instead.")
  (get_position_limit m))

(cl:ensure-generic-function 'get_voltage_limit-val :lambda-list '(m))
(cl:defmethod get_voltage_limit-val ((m <GetBusServoCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-msg:get_voltage_limit-val is deprecated.  Use ros_robot_controller-msg:get_voltage_limit instead.")
  (get_voltage_limit m))

(cl:ensure-generic-function 'get_max_temperature_limit-val :lambda-list '(m))
(cl:defmethod get_max_temperature_limit-val ((m <GetBusServoCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-msg:get_max_temperature_limit-val is deprecated.  Use ros_robot_controller-msg:get_max_temperature_limit instead.")
  (get_max_temperature_limit m))

(cl:ensure-generic-function 'get_torque_state-val :lambda-list '(m))
(cl:defmethod get_torque_state-val ((m <GetBusServoCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-msg:get_torque_state-val is deprecated.  Use ros_robot_controller-msg:get_torque_state instead.")
  (get_torque_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetBusServoCmd>) ostream)
  "Serializes a message object of type '<GetBusServoCmd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'get_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'get_position)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'get_offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'get_voltage)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'get_temperature)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'get_position_limit)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'get_voltage_limit)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'get_max_temperature_limit)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'get_torque_state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetBusServoCmd>) istream)
  "Deserializes a message object of type '<GetBusServoCmd>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'get_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'get_position)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'get_offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'get_voltage)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'get_temperature)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'get_position_limit)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'get_voltage_limit)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'get_max_temperature_limit)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'get_torque_state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetBusServoCmd>)))
  "Returns string type for a message object of type '<GetBusServoCmd>"
  "ros_robot_controller/GetBusServoCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBusServoCmd)))
  "Returns string type for a message object of type 'GetBusServoCmd"
  "ros_robot_controller/GetBusServoCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetBusServoCmd>)))
  "Returns md5sum for a message object of type '<GetBusServoCmd>"
  "18e5c6926d8d8fbfd6f905fb9d21ff40")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetBusServoCmd)))
  "Returns md5sum for a message object of type 'GetBusServoCmd"
  "18e5c6926d8d8fbfd6f905fb9d21ff40")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetBusServoCmd>)))
  "Returns full string definition for message of type '<GetBusServoCmd>"
  (cl:format cl:nil "uint8 id~%uint8 get_id~%uint8 get_position~%uint8 get_offset~%uint8 get_voltage~%uint8 get_temperature~%uint8 get_position_limit~%uint8 get_voltage_limit~%uint8 get_max_temperature_limit~%uint8 get_torque_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetBusServoCmd)))
  "Returns full string definition for message of type 'GetBusServoCmd"
  (cl:format cl:nil "uint8 id~%uint8 get_id~%uint8 get_position~%uint8 get_offset~%uint8 get_voltage~%uint8 get_temperature~%uint8 get_position_limit~%uint8 get_voltage_limit~%uint8 get_max_temperature_limit~%uint8 get_torque_state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetBusServoCmd>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetBusServoCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'GetBusServoCmd
    (cl:cons ':id (id msg))
    (cl:cons ':get_id (get_id msg))
    (cl:cons ':get_position (get_position msg))
    (cl:cons ':get_offset (get_offset msg))
    (cl:cons ':get_voltage (get_voltage msg))
    (cl:cons ':get_temperature (get_temperature msg))
    (cl:cons ':get_position_limit (get_position_limit msg))
    (cl:cons ':get_voltage_limit (get_voltage_limit msg))
    (cl:cons ':get_max_temperature_limit (get_max_temperature_limit msg))
    (cl:cons ':get_torque_state (get_torque_state msg))
))
