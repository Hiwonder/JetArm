; Auto-generated. Do not edit!


(cl:in-package hiwonder_interfaces-msg)


;//! \htmlinclude ImageSize.msg.html

(cl:defclass <ImageSize> (roslisp-msg-protocol:ros-message)
  ((width
    :reader width
    :initarg :width
    :type cl:fixnum
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ImageSize (<ImageSize>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImageSize>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImageSize)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_interfaces-msg:<ImageSize> is deprecated: use hiwonder_interfaces-msg:ImageSize instead.")))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <ImageSize>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-msg:width-val is deprecated.  Use hiwonder_interfaces-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <ImageSize>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-msg:height-val is deprecated.  Use hiwonder_interfaces-msg:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImageSize>) ostream)
  "Serializes a message object of type '<ImageSize>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'width)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'height)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'height)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImageSize>) istream)
  "Deserializes a message object of type '<ImageSize>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'width)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'height)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'height)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImageSize>)))
  "Returns string type for a message object of type '<ImageSize>"
  "hiwonder_interfaces/ImageSize")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImageSize)))
  "Returns string type for a message object of type 'ImageSize"
  "hiwonder_interfaces/ImageSize")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImageSize>)))
  "Returns md5sum for a message object of type '<ImageSize>"
  "20cde1cc3b01e7f015e45dc31f8ca17d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImageSize)))
  "Returns md5sum for a message object of type 'ImageSize"
  "20cde1cc3b01e7f015e45dc31f8ca17d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImageSize>)))
  "Returns full string definition for message of type '<ImageSize>"
  (cl:format cl:nil "uint16 width~%uint16 height~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImageSize)))
  "Returns full string definition for message of type 'ImageSize"
  (cl:format cl:nil "uint16 width~%uint16 height~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImageSize>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImageSize>))
  "Converts a ROS message object to a list"
  (cl:list 'ImageSize
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
))
