; Auto-generated. Do not edit!


(cl:in-package hiwonder_interfaces-msg)


;//! \htmlinclude PixelPosition.msg.html

(cl:defclass <PixelPosition> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:fixnum
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PixelPosition (<PixelPosition>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PixelPosition>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PixelPosition)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_interfaces-msg:<PixelPosition> is deprecated: use hiwonder_interfaces-msg:PixelPosition instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <PixelPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-msg:x-val is deprecated.  Use hiwonder_interfaces-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <PixelPosition>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-msg:y-val is deprecated.  Use hiwonder_interfaces-msg:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PixelPosition>) ostream)
  "Serializes a message object of type '<PixelPosition>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'y)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PixelPosition>) istream)
  "Deserializes a message object of type '<PixelPosition>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'y)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PixelPosition>)))
  "Returns string type for a message object of type '<PixelPosition>"
  "hiwonder_interfaces/PixelPosition")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PixelPosition)))
  "Returns string type for a message object of type 'PixelPosition"
  "hiwonder_interfaces/PixelPosition")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PixelPosition>)))
  "Returns md5sum for a message object of type '<PixelPosition>"
  "2b80853b9dd76da1c3efb4dbc2426fe9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PixelPosition)))
  "Returns md5sum for a message object of type 'PixelPosition"
  "2b80853b9dd76da1c3efb4dbc2426fe9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PixelPosition>)))
  "Returns full string definition for message of type '<PixelPosition>"
  (cl:format cl:nil "uint16 x~%uint16 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PixelPosition)))
  "Returns full string definition for message of type 'PixelPosition"
  (cl:format cl:nil "uint16 x~%uint16 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PixelPosition>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PixelPosition>))
  "Converts a ROS message object to a list"
  (cl:list 'PixelPosition
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
