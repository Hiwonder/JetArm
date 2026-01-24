; Auto-generated. Do not edit!


(cl:in-package hiwonder_interfaces-msg)


;//! \htmlinclude JointsRange.msg.html

(cl:defclass <JointsRange> (roslisp-msg-protocol:ros-message)
  ((joint1
    :reader joint1
    :initarg :joint1
    :type hiwonder_interfaces-msg:JointRange
    :initform (cl:make-instance 'hiwonder_interfaces-msg:JointRange))
   (joint2
    :reader joint2
    :initarg :joint2
    :type hiwonder_interfaces-msg:JointRange
    :initform (cl:make-instance 'hiwonder_interfaces-msg:JointRange))
   (joint3
    :reader joint3
    :initarg :joint3
    :type hiwonder_interfaces-msg:JointRange
    :initform (cl:make-instance 'hiwonder_interfaces-msg:JointRange))
   (joint4
    :reader joint4
    :initarg :joint4
    :type hiwonder_interfaces-msg:JointRange
    :initform (cl:make-instance 'hiwonder_interfaces-msg:JointRange))
   (joint5
    :reader joint5
    :initarg :joint5
    :type hiwonder_interfaces-msg:JointRange
    :initform (cl:make-instance 'hiwonder_interfaces-msg:JointRange)))
)

(cl:defclass JointsRange (<JointsRange>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointsRange>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointsRange)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_interfaces-msg:<JointsRange> is deprecated: use hiwonder_interfaces-msg:JointsRange instead.")))

(cl:ensure-generic-function 'joint1-val :lambda-list '(m))
(cl:defmethod joint1-val ((m <JointsRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-msg:joint1-val is deprecated.  Use hiwonder_interfaces-msg:joint1 instead.")
  (joint1 m))

(cl:ensure-generic-function 'joint2-val :lambda-list '(m))
(cl:defmethod joint2-val ((m <JointsRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-msg:joint2-val is deprecated.  Use hiwonder_interfaces-msg:joint2 instead.")
  (joint2 m))

(cl:ensure-generic-function 'joint3-val :lambda-list '(m))
(cl:defmethod joint3-val ((m <JointsRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-msg:joint3-val is deprecated.  Use hiwonder_interfaces-msg:joint3 instead.")
  (joint3 m))

(cl:ensure-generic-function 'joint4-val :lambda-list '(m))
(cl:defmethod joint4-val ((m <JointsRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-msg:joint4-val is deprecated.  Use hiwonder_interfaces-msg:joint4 instead.")
  (joint4 m))

(cl:ensure-generic-function 'joint5-val :lambda-list '(m))
(cl:defmethod joint5-val ((m <JointsRange>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-msg:joint5-val is deprecated.  Use hiwonder_interfaces-msg:joint5 instead.")
  (joint5 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointsRange>) ostream)
  "Serializes a message object of type '<JointsRange>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'joint1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'joint2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'joint3) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'joint4) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'joint5) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointsRange>) istream)
  "Deserializes a message object of type '<JointsRange>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'joint1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'joint2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'joint3) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'joint4) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'joint5) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointsRange>)))
  "Returns string type for a message object of type '<JointsRange>"
  "hiwonder_interfaces/JointsRange")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointsRange)))
  "Returns string type for a message object of type 'JointsRange"
  "hiwonder_interfaces/JointsRange")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointsRange>)))
  "Returns md5sum for a message object of type '<JointsRange>"
  "f4756b6cbfe9dd3e05100c20e0ecd197")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointsRange)))
  "Returns md5sum for a message object of type 'JointsRange"
  "f4756b6cbfe9dd3e05100c20e0ecd197")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointsRange>)))
  "Returns full string definition for message of type '<JointsRange>"
  (cl:format cl:nil "hiwonder_interfaces/JointRange joint1~%hiwonder_interfaces/JointRange joint2~%hiwonder_interfaces/JointRange joint3~%hiwonder_interfaces/JointRange joint4~%hiwonder_interfaces/JointRange joint5~%~%================================================================================~%MSG: hiwonder_interfaces/JointRange~%float64 min~%float64 max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointsRange)))
  "Returns full string definition for message of type 'JointsRange"
  (cl:format cl:nil "hiwonder_interfaces/JointRange joint1~%hiwonder_interfaces/JointRange joint2~%hiwonder_interfaces/JointRange joint3~%hiwonder_interfaces/JointRange joint4~%hiwonder_interfaces/JointRange joint5~%~%================================================================================~%MSG: hiwonder_interfaces/JointRange~%float64 min~%float64 max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointsRange>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'joint1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'joint2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'joint3))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'joint4))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'joint5))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointsRange>))
  "Converts a ROS message object to a list"
  (cl:list 'JointsRange
    (cl:cons ':joint1 (joint1 msg))
    (cl:cons ':joint2 (joint2 msg))
    (cl:cons ':joint3 (joint3 msg))
    (cl:cons ':joint4 (joint4 msg))
    (cl:cons ':joint5 (joint5 msg))
))
