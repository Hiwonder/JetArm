;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_interfaces::ObjectPose)
  (if (not (find-package "HIWONDER_INTERFACES"))
    (make-package "HIWONDER_INTERFACES"))
  (shadow 'ObjectPose (find-package "HIWONDER_INTERFACES")))
(unless (find-package "HIWONDER_INTERFACES::OBJECTPOSE")
  (make-package "HIWONDER_INTERFACES::OBJECTPOSE"))

(in-package "ROS")
;;//! \htmlinclude ObjectPose.msg.html


(defclass hiwonder_interfaces::ObjectPose
  :super ros::object
  :slots (_label _x _y _yaw _collision_roi _collision ))

(defmethod hiwonder_interfaces::ObjectPose
  (:init
   (&key
    ((:label __label) "")
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:yaw __yaw) 0)
    ((:collision_roi __collision_roi) ())
    ((:collision __collision) nil)
    )
   (send-super :init)
   (setq _label (string __label))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _yaw (round __yaw))
   (setq _collision_roi __collision_roi)
   (setq _collision __collision)
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:collision_roi
   (&rest __collision_roi)
   (if (keywordp (car __collision_roi))
       (send* _collision_roi __collision_roi)
     (progn
       (if __collision_roi (setq _collision_roi (car __collision_roi)))
       _collision_roi)))
  (:collision
   (&optional (__collision :null))
   (if (not (eq __collision :null)) (setq _collision __collision)) _collision)
  (:serialization-length
   ()
   (+
    ;; string _label
    4 (length _label)
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; int16 _yaw
    2
    ;; hiwonder_interfaces/PixelPosition[] _collision_roi
    (apply #'+ (send-all _collision_roi :serialization-length)) 4
    ;; bool _collision
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int16 _yaw
       (write-word _yaw s)
     ;; hiwonder_interfaces/PixelPosition[] _collision_roi
     (write-long (length _collision_roi) s)
     (dolist (elem _collision_roi)
       (send elem :serialize s)
       )
     ;; bool _collision
       (if _collision (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int16 _yaw
     (setq _yaw (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; hiwonder_interfaces/PixelPosition[] _collision_roi
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _collision_roi (let (r) (dotimes (i n) (push (instance hiwonder_interfaces::PixelPosition :init) r)) r))
     (dolist (elem- _collision_roi)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _collision
     (setq _collision (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get hiwonder_interfaces::ObjectPose :md5sum-) "38c75b0b27ce3ab74cbda554632b2fd4")
(setf (get hiwonder_interfaces::ObjectPose :datatype-) "hiwonder_interfaces/ObjectPose")
(setf (get hiwonder_interfaces::ObjectPose :definition-)
      "# 颜色标签，如'red1', 'green2', 'blue3'
# 垃圾标签, 如'BananaPeel'
string label

# 物体的物理世界中心点坐标
float64 x
float64 y

# 机械臂夹持器转到和物体平行的角度
int16 yaw

# 碰撞区域
hiwonder_interfaces/PixelPosition[] collision_roi

# 表示夹取的物体是否与周围的物体足够近，导致夹持器夹取时会产生碰撞
# 如果为真，则yaw不可用
bool collision

================================================================================
MSG: hiwonder_interfaces/PixelPosition
uint16 x
uint16 y

")



(provide :hiwonder_interfaces/ObjectPose "38c75b0b27ce3ab74cbda554632b2fd4")


