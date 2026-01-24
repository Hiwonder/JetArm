; Auto-generated. Do not edit!


(cl:in-package hiwonder_interfaces-msg)


;//! \htmlinclude GraspState.msg.html

(cl:defclass <GraspState> (roslisp-msg-protocol:ros-message)
  ((complete
    :reader complete
    :initarg :complete
    :type cl:boolean
    :initform cl:nil)
   (grasp_posture
    :reader grasp_posture
    :initarg :grasp_posture
    :type hiwonder_interfaces-msg:EulerAngles
    :initform (cl:make-instance 'hiwonder_interfaces-msg:EulerAngles)))
)

(cl:defclass GraspState (<GraspState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GraspState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GraspState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_interfaces-msg:<GraspState> is deprecated: use hiwonder_interfaces-msg:GraspState instead.")))

(cl:ensure-generic-function 'complete-val :lambda-list '(m))
(cl:defmethod complete-val ((m <GraspState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-msg:complete-val is deprecated.  Use hiwonder_interfaces-msg:complete instead.")
  (complete m))

(cl:ensure-generic-function 'grasp_posture-val :lambda-list '(m))
(cl:defmethod grasp_posture-val ((m <GraspState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-msg:grasp_posture-val is deprecated.  Use hiwonder_interfaces-msg:grasp_posture instead.")
  (grasp_posture m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GraspState>) ostream)
  "Serializes a message object of type '<GraspState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'complete) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'grasp_posture) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GraspState>) istream)
  "Deserializes a message object of type '<GraspState>"
    (cl:setf (cl:slot-value msg 'complete) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'grasp_posture) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GraspState>)))
  "Returns string type for a message object of type '<GraspState>"
  "hiwonder_interfaces/GraspState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GraspState)))
  "Returns string type for a message object of type 'GraspState"
  "hiwonder_interfaces/GraspState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GraspState>)))
  "Returns md5sum for a message object of type '<GraspState>"
  "88fb84023fd99dd195825db77ccbd5b5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GraspState)))
  "Returns md5sum for a message object of type 'GraspState"
  "88fb84023fd99dd195825db77ccbd5b5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GraspState>)))
  "Returns full string definition for message of type '<GraspState>"
  (cl:format cl:nil "bool complete~%hiwonder_interfaces/EulerAngles grasp_posture~%~%================================================================================~%MSG: hiwonder_interfaces/EulerAngles~%float64 r~%float64 p~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GraspState)))
  "Returns full string definition for message of type 'GraspState"
  (cl:format cl:nil "bool complete~%hiwonder_interfaces/EulerAngles grasp_posture~%~%================================================================================~%MSG: hiwonder_interfaces/EulerAngles~%float64 r~%float64 p~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GraspState>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'grasp_posture))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GraspState>))
  "Converts a ROS message object to a list"
  (cl:list 'GraspState
    (cl:cons ':complete (complete msg))
    (cl:cons ':grasp_posture (grasp_posture msg))
))
