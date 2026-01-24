; Auto-generated. Do not edit!


(cl:in-package ros_robot_controller-msg)


;//! \htmlinclude MotorsState.msg.html

(cl:defclass <MotorsState> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector ros_robot_controller-msg:MotorState)
   :initform (cl:make-array 0 :element-type 'ros_robot_controller-msg:MotorState :initial-element (cl:make-instance 'ros_robot_controller-msg:MotorState))))
)

(cl:defclass MotorsState (<MotorsState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorsState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorsState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_robot_controller-msg:<MotorsState> is deprecated: use ros_robot_controller-msg:MotorsState instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <MotorsState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_robot_controller-msg:data-val is deprecated.  Use ros_robot_controller-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorsState>) ostream)
  "Serializes a message object of type '<MotorsState>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorsState>) istream)
  "Deserializes a message object of type '<MotorsState>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'ros_robot_controller-msg:MotorState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorsState>)))
  "Returns string type for a message object of type '<MotorsState>"
  "ros_robot_controller/MotorsState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorsState)))
  "Returns string type for a message object of type 'MotorsState"
  "ros_robot_controller/MotorsState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorsState>)))
  "Returns md5sum for a message object of type '<MotorsState>"
  "690a5fe22d7a52abc613b0f6dd38789a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorsState)))
  "Returns md5sum for a message object of type 'MotorsState"
  "690a5fe22d7a52abc613b0f6dd38789a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorsState>)))
  "Returns full string definition for message of type '<MotorsState>"
  (cl:format cl:nil "ros_robot_controller/MotorState[] data~%~%================================================================================~%MSG: ros_robot_controller/MotorState~%uint16 id~%float64 rps~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorsState)))
  "Returns full string definition for message of type 'MotorsState"
  (cl:format cl:nil "ros_robot_controller/MotorState[] data~%~%================================================================================~%MSG: ros_robot_controller/MotorState~%uint16 id~%float64 rps~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorsState>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorsState>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorsState
    (cl:cons ':data (data msg))
))
