; Auto-generated. Do not edit!


(cl:in-package hiwonder_interfaces-msg)


;//! \htmlinclude ObjectsInfo.msg.html

(cl:defclass <ObjectsInfo> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector hiwonder_interfaces-msg:ObjectInfo)
   :initform (cl:make-array 0 :element-type 'hiwonder_interfaces-msg:ObjectInfo :initial-element (cl:make-instance 'hiwonder_interfaces-msg:ObjectInfo))))
)

(cl:defclass ObjectsInfo (<ObjectsInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectsInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectsInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_interfaces-msg:<ObjectsInfo> is deprecated: use hiwonder_interfaces-msg:ObjectsInfo instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <ObjectsInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_interfaces-msg:data-val is deprecated.  Use hiwonder_interfaces-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectsInfo>) ostream)
  "Serializes a message object of type '<ObjectsInfo>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectsInfo>) istream)
  "Deserializes a message object of type '<ObjectsInfo>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hiwonder_interfaces-msg:ObjectInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectsInfo>)))
  "Returns string type for a message object of type '<ObjectsInfo>"
  "hiwonder_interfaces/ObjectsInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectsInfo)))
  "Returns string type for a message object of type 'ObjectsInfo"
  "hiwonder_interfaces/ObjectsInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectsInfo>)))
  "Returns md5sum for a message object of type '<ObjectsInfo>"
  "44a9b7876b169d055c96381fead947aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectsInfo)))
  "Returns md5sum for a message object of type 'ObjectsInfo"
  "44a9b7876b169d055c96381fead947aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectsInfo>)))
  "Returns full string definition for message of type '<ObjectsInfo>"
  (cl:format cl:nil " hiwonder_interfaces/ObjectInfo[] data~%~%================================================================================~%MSG: hiwonder_interfaces/ObjectInfo~%# 颜色标签，如'red1', 'green2', 'blue3', 'BananaPeel', 'BrokenBones'~%string label~%~%# 物体的像素中心点坐标~%hiwonder_interfaces/PixelPosition center~%~%# 物体的旋转角度，旋转角度指水平轴（x轴）逆时针旋转，与碰到的矩形的第一条边的夹角~%int16 yaw~%~%# 物体图像尺寸~%hiwonder_interfaces/ImageSize size~%~%# 物体高度 ~%float64 height~%~%================================================================================~%MSG: hiwonder_interfaces/PixelPosition~%uint16 x~%uint16 y~%~%================================================================================~%MSG: hiwonder_interfaces/ImageSize~%uint16 width~%uint16 height~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectsInfo)))
  "Returns full string definition for message of type 'ObjectsInfo"
  (cl:format cl:nil " hiwonder_interfaces/ObjectInfo[] data~%~%================================================================================~%MSG: hiwonder_interfaces/ObjectInfo~%# 颜色标签，如'red1', 'green2', 'blue3', 'BananaPeel', 'BrokenBones'~%string label~%~%# 物体的像素中心点坐标~%hiwonder_interfaces/PixelPosition center~%~%# 物体的旋转角度，旋转角度指水平轴（x轴）逆时针旋转，与碰到的矩形的第一条边的夹角~%int16 yaw~%~%# 物体图像尺寸~%hiwonder_interfaces/ImageSize size~%~%# 物体高度 ~%float64 height~%~%================================================================================~%MSG: hiwonder_interfaces/PixelPosition~%uint16 x~%uint16 y~%~%================================================================================~%MSG: hiwonder_interfaces/ImageSize~%uint16 width~%uint16 height~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectsInfo>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectsInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectsInfo
    (cl:cons ':data (data msg))
))
