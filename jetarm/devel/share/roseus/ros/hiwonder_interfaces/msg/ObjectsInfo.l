;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_interfaces::ObjectsInfo)
  (if (not (find-package "HIWONDER_INTERFACES"))
    (make-package "HIWONDER_INTERFACES"))
  (shadow 'ObjectsInfo (find-package "HIWONDER_INTERFACES")))
(unless (find-package "HIWONDER_INTERFACES::OBJECTSINFO")
  (make-package "HIWONDER_INTERFACES::OBJECTSINFO"))

(in-package "ROS")
;;//! \htmlinclude ObjectsInfo.msg.html


(defclass hiwonder_interfaces::ObjectsInfo
  :super ros::object
  :slots (_data ))

(defmethod hiwonder_interfaces::ObjectsInfo
  (:init
   (&key
    ((:data __data) ())
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; hiwonder_interfaces/ObjectInfo[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; hiwonder_interfaces/ObjectInfo[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; hiwonder_interfaces/ObjectInfo[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance hiwonder_interfaces::ObjectInfo :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get hiwonder_interfaces::ObjectsInfo :md5sum-) "44a9b7876b169d055c96381fead947aa")
(setf (get hiwonder_interfaces::ObjectsInfo :datatype-) "hiwonder_interfaces/ObjectsInfo")
(setf (get hiwonder_interfaces::ObjectsInfo :definition-)
      " hiwonder_interfaces/ObjectInfo[] data

================================================================================
MSG: hiwonder_interfaces/ObjectInfo
# 颜色标签，如'red1', 'green2', 'blue3', 'BananaPeel', 'BrokenBones'
string label

# 物体的像素中心点坐标
hiwonder_interfaces/PixelPosition center

# 物体的旋转角度，旋转角度指水平轴（x轴）逆时针旋转，与碰到的矩形的第一条边的夹角
int16 yaw

# 物体图像尺寸
hiwonder_interfaces/ImageSize size

# 物体高度 
float64 height

================================================================================
MSG: hiwonder_interfaces/PixelPosition
uint16 x
uint16 y

================================================================================
MSG: hiwonder_interfaces/ImageSize
uint16 width
uint16 height
")



(provide :hiwonder_interfaces/ObjectsInfo "44a9b7876b169d055c96381fead947aa")


