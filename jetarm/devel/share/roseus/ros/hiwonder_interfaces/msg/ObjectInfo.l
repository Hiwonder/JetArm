;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_interfaces::ObjectInfo)
  (if (not (find-package "HIWONDER_INTERFACES"))
    (make-package "HIWONDER_INTERFACES"))
  (shadow 'ObjectInfo (find-package "HIWONDER_INTERFACES")))
(unless (find-package "HIWONDER_INTERFACES::OBJECTINFO")
  (make-package "HIWONDER_INTERFACES::OBJECTINFO"))

(in-package "ROS")
;;//! \htmlinclude ObjectInfo.msg.html


(defclass hiwonder_interfaces::ObjectInfo
  :super ros::object
  :slots (_label _center _yaw _size _height ))

(defmethod hiwonder_interfaces::ObjectInfo
  (:init
   (&key
    ((:label __label) "")
    ((:center __center) (instance hiwonder_interfaces::PixelPosition :init))
    ((:yaw __yaw) 0)
    ((:size __size) (instance hiwonder_interfaces::ImageSize :init))
    ((:height __height) 0.0)
    )
   (send-super :init)
   (setq _label (string __label))
   (setq _center __center)
   (setq _yaw (round __yaw))
   (setq _size __size)
   (setq _height (float __height))
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:center
   (&rest __center)
   (if (keywordp (car __center))
       (send* _center __center)
     (progn
       (if __center (setq _center (car __center)))
       _center)))
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:size
   (&rest __size)
   (if (keywordp (car __size))
       (send* _size __size)
     (progn
       (if __size (setq _size (car __size)))
       _size)))
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; string _label
    4 (length _label)
    ;; hiwonder_interfaces/PixelPosition _center
    (send _center :serialization-length)
    ;; int16 _yaw
    2
    ;; hiwonder_interfaces/ImageSize _size
    (send _size :serialization-length)
    ;; float64 _height
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;; hiwonder_interfaces/PixelPosition _center
       (send _center :serialize s)
     ;; int16 _yaw
       (write-word _yaw s)
     ;; hiwonder_interfaces/ImageSize _size
       (send _size :serialize s)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; hiwonder_interfaces/PixelPosition _center
     (send _center :deserialize buf ptr-) (incf ptr- (send _center :serialization-length))
   ;; int16 _yaw
     (setq _yaw (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; hiwonder_interfaces/ImageSize _size
     (send _size :deserialize buf ptr-) (incf ptr- (send _size :serialization-length))
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get hiwonder_interfaces::ObjectInfo :md5sum-) "334356fe136b15b91e4095edc296683b")
(setf (get hiwonder_interfaces::ObjectInfo :datatype-) "hiwonder_interfaces/ObjectInfo")
(setf (get hiwonder_interfaces::ObjectInfo :definition-)
      "# 颜色标签，如'red1', 'green2', 'blue3', 'BananaPeel', 'BrokenBones'
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



(provide :hiwonder_interfaces/ObjectInfo "334356fe136b15b91e4095edc296683b")


