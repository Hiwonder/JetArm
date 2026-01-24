; Auto-generated. Do not edit!


(cl:in-package hiwonder_interfaces-srv)


;//! \htmlinclude SetJointsValue-request.msg.html

(cl:defclass <SetJointsValue-request> (roslisp-msg-protocol:ros-message)
  ((joints_value
    :reader joints_value
    :initarg :joints_value
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass SetJointsValue-request (<SetJointsValue-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJointsValue-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJointsValue-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_interfaces-srv:<SetJointsValue-request> is deprecated: use hiwonder_interfaces-srv:SetJointsValue-request instead.")))

(cl:ensure-generic-function 'joints_value-val :lambda-list '(m))
(cl:defmethod joints_value-val ((m <SetJointsValue-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-srv:joints_value-val is deprecated.  Use hiwonder_interfaces-srv:joints_value instead.")
  (joints_value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJointsValue-request>) ostream)
  "Serializes a message object of type '<SetJointsValue-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joints_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'joints_value))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJointsValue-request>) istream)
  "Deserializes a message object of type '<SetJointsValue-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joints_value) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joints_value)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJointsValue-request>)))
  "Returns string type for a service object of type '<SetJointsValue-request>"
  "hiwonder_interfaces/SetJointsValueRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointsValue-request)))
  "Returns string type for a service object of type 'SetJointsValue-request"
  "hiwonder_interfaces/SetJointsValueRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJointsValue-request>)))
  "Returns md5sum for a message object of type '<SetJointsValue-request>"
  "29009da2011b752eb3bde0b041ee37ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJointsValue-request)))
  "Returns md5sum for a message object of type 'SetJointsValue-request"
  "29009da2011b752eb3bde0b041ee37ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJointsValue-request>)))
  "Returns full string definition for message of type '<SetJointsValue-request>"
  (cl:format cl:nil "float32[] joints_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJointsValue-request)))
  "Returns full string definition for message of type 'SetJointsValue-request"
  (cl:format cl:nil "float32[] joints_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJointsValue-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joints_value) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJointsValue-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJointsValue-request
    (cl:cons ':joints_value (joints_value msg))
))
;//! \htmlinclude SetJointsValue-response.msg.html

(cl:defclass <SetJointsValue-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (solution
    :reader solution
    :initarg :solution
    :type cl:boolean
    :initform cl:nil)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass SetJointsValue-response (<SetJointsValue-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetJointsValue-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetJointsValue-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_interfaces-srv:<SetJointsValue-response> is deprecated: use hiwonder_interfaces-srv:SetJointsValue-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetJointsValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-srv:success-val is deprecated.  Use hiwonder_interfaces-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'solution-val :lambda-list '(m))
(cl:defmethod solution-val ((m <SetJointsValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-srv:solution-val is deprecated.  Use hiwonder_interfaces-srv:solution instead.")
  (solution m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <SetJointsValue-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-srv:pose-val is deprecated.  Use hiwonder_interfaces-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetJointsValue-response>) ostream)
  "Serializes a message object of type '<SetJointsValue-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'solution) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetJointsValue-response>) istream)
  "Deserializes a message object of type '<SetJointsValue-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'solution) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetJointsValue-response>)))
  "Returns string type for a service object of type '<SetJointsValue-response>"
  "hiwonder_interfaces/SetJointsValueResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointsValue-response)))
  "Returns string type for a service object of type 'SetJointsValue-response"
  "hiwonder_interfaces/SetJointsValueResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetJointsValue-response>)))
  "Returns md5sum for a message object of type '<SetJointsValue-response>"
  "29009da2011b752eb3bde0b041ee37ea")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetJointsValue-response)))
  "Returns md5sum for a message object of type 'SetJointsValue-response"
  "29009da2011b752eb3bde0b041ee37ea")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetJointsValue-response>)))
  "Returns full string definition for message of type '<SetJointsValue-response>"
  (cl:format cl:nil "bool success~%bool solution ~%geometry_msgs/Pose pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetJointsValue-response)))
  "Returns full string definition for message of type 'SetJointsValue-response"
  (cl:format cl:nil "bool success~%bool solution ~%geometry_msgs/Pose pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetJointsValue-response>))
  (cl:+ 0
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetJointsValue-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetJointsValue-response
    (cl:cons ':success (success msg))
    (cl:cons ':solution (solution msg))
    (cl:cons ':pose (pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetJointsValue)))
  'SetJointsValue-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetJointsValue)))
  'SetJointsValue-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetJointsValue)))
  "Returns string type for a service object of type '<SetJointsValue>"
  "hiwonder_interfaces/SetJointsValue")