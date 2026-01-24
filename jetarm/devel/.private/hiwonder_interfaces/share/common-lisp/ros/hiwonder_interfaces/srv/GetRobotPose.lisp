; Auto-generated. Do not edit!


(cl:in-package hiwonder_interfaces-srv)


;//! \htmlinclude GetRobotPose-request.msg.html

(cl:defclass <GetRobotPose-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetRobotPose-request (<GetRobotPose-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRobotPose-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRobotPose-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_interfaces-srv:<GetRobotPose-request> is deprecated: use hiwonder_interfaces-srv:GetRobotPose-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRobotPose-request>) ostream)
  "Serializes a message object of type '<GetRobotPose-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRobotPose-request>) istream)
  "Deserializes a message object of type '<GetRobotPose-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRobotPose-request>)))
  "Returns string type for a service object of type '<GetRobotPose-request>"
  "hiwonder_interfaces/GetRobotPoseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRobotPose-request)))
  "Returns string type for a service object of type 'GetRobotPose-request"
  "hiwonder_interfaces/GetRobotPoseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRobotPose-request>)))
  "Returns md5sum for a message object of type '<GetRobotPose-request>"
  "7e34dc38014b735f72f1da76fa4f5008")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRobotPose-request)))
  "Returns md5sum for a message object of type 'GetRobotPose-request"
  "7e34dc38014b735f72f1da76fa4f5008")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRobotPose-request>)))
  "Returns full string definition for message of type '<GetRobotPose-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRobotPose-request)))
  "Returns full string definition for message of type 'GetRobotPose-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRobotPose-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRobotPose-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRobotPose-request
))
;//! \htmlinclude GetRobotPose-response.msg.html

(cl:defclass <GetRobotPose-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass GetRobotPose-response (<GetRobotPose-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetRobotPose-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetRobotPose-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_interfaces-srv:<GetRobotPose-response> is deprecated: use hiwonder_interfaces-srv:GetRobotPose-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <GetRobotPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-srv:success-val is deprecated.  Use hiwonder_interfaces-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'solution-val :lambda-list '(m))
(cl:defmethod solution-val ((m <GetRobotPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-srv:solution-val is deprecated.  Use hiwonder_interfaces-srv:solution instead.")
  (solution m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <GetRobotPose-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-srv:pose-val is deprecated.  Use hiwonder_interfaces-srv:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetRobotPose-response>) ostream)
  "Serializes a message object of type '<GetRobotPose-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'solution) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetRobotPose-response>) istream)
  "Deserializes a message object of type '<GetRobotPose-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'solution) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetRobotPose-response>)))
  "Returns string type for a service object of type '<GetRobotPose-response>"
  "hiwonder_interfaces/GetRobotPoseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRobotPose-response)))
  "Returns string type for a service object of type 'GetRobotPose-response"
  "hiwonder_interfaces/GetRobotPoseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetRobotPose-response>)))
  "Returns md5sum for a message object of type '<GetRobotPose-response>"
  "7e34dc38014b735f72f1da76fa4f5008")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetRobotPose-response)))
  "Returns md5sum for a message object of type 'GetRobotPose-response"
  "7e34dc38014b735f72f1da76fa4f5008")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetRobotPose-response>)))
  "Returns full string definition for message of type '<GetRobotPose-response>"
  (cl:format cl:nil "bool success~%bool solution~%geometry_msgs/Pose pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetRobotPose-response)))
  "Returns full string definition for message of type 'GetRobotPose-response"
  (cl:format cl:nil "bool success~%bool solution~%geometry_msgs/Pose pose~%~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetRobotPose-response>))
  (cl:+ 0
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetRobotPose-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetRobotPose-response
    (cl:cons ':success (success msg))
    (cl:cons ':solution (solution msg))
    (cl:cons ':pose (pose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetRobotPose)))
  'GetRobotPose-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetRobotPose)))
  'GetRobotPose-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetRobotPose)))
  "Returns string type for a service object of type '<GetRobotPose>"
  "hiwonder_interfaces/GetRobotPose")