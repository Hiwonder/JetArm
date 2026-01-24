;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_interfaces::Grasp)
  (if (not (find-package "HIWONDER_INTERFACES"))
    (make-package "HIWONDER_INTERFACES"))
  (shadow 'Grasp (find-package "HIWONDER_INTERFACES")))
(unless (find-package "HIWONDER_INTERFACES::GRASP")
  (make-package "HIWONDER_INTERFACES::GRASP"))

(in-package "ROS")
;;//! \htmlinclude Grasp.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass hiwonder_interfaces::Grasp
  :super ros::object
  :slots (_mode _position _pitch _align_angle _grasp_approach _grasp_retreat _grasp_posture _pre_grasp_posture ))

(defmethod hiwonder_interfaces::Grasp
  (:init
   (&key
    ((:mode __mode) "")
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:pitch __pitch) 0.0)
    ((:align_angle __align_angle) 0.0)
    ((:grasp_approach __grasp_approach) (instance geometry_msgs::Vector3 :init))
    ((:grasp_retreat __grasp_retreat) (instance geometry_msgs::Vector3 :init))
    ((:grasp_posture __grasp_posture) 0)
    ((:pre_grasp_posture __pre_grasp_posture) 0)
    )
   (send-super :init)
   (setq _mode (string __mode))
   (setq _position __position)
   (setq _pitch (float __pitch))
   (setq _align_angle (float __align_angle))
   (setq _grasp_approach __grasp_approach)
   (setq _grasp_retreat __grasp_retreat)
   (setq _grasp_posture (round __grasp_posture))
   (setq _pre_grasp_posture (round __pre_grasp_posture))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:align_angle
   (&optional __align_angle)
   (if __align_angle (setq _align_angle __align_angle)) _align_angle)
  (:grasp_approach
   (&rest __grasp_approach)
   (if (keywordp (car __grasp_approach))
       (send* _grasp_approach __grasp_approach)
     (progn
       (if __grasp_approach (setq _grasp_approach (car __grasp_approach)))
       _grasp_approach)))
  (:grasp_retreat
   (&rest __grasp_retreat)
   (if (keywordp (car __grasp_retreat))
       (send* _grasp_retreat __grasp_retreat)
     (progn
       (if __grasp_retreat (setq _grasp_retreat (car __grasp_retreat)))
       _grasp_retreat)))
  (:grasp_posture
   (&optional __grasp_posture)
   (if __grasp_posture (setq _grasp_posture __grasp_posture)) _grasp_posture)
  (:pre_grasp_posture
   (&optional __pre_grasp_posture)
   (if __pre_grasp_posture (setq _pre_grasp_posture __pre_grasp_posture)) _pre_grasp_posture)
  (:serialization-length
   ()
   (+
    ;; string _mode
    4 (length _mode)
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; float64 _pitch
    8
    ;; float64 _align_angle
    8
    ;; geometry_msgs/Vector3 _grasp_approach
    (send _grasp_approach :serialization-length)
    ;; geometry_msgs/Vector3 _grasp_retreat
    (send _grasp_retreat :serialization-length)
    ;; uint16 _grasp_posture
    2
    ;; uint16 _pre_grasp_posture
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _align_angle
       (sys::poke _align_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Vector3 _grasp_approach
       (send _grasp_approach :serialize s)
     ;; geometry_msgs/Vector3 _grasp_retreat
       (send _grasp_retreat :serialize s)
     ;; uint16 _grasp_posture
       (write-word _grasp_posture s)
     ;; uint16 _pre_grasp_posture
       (write-word _pre_grasp_posture s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _align_angle
     (setq _align_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Vector3 _grasp_approach
     (send _grasp_approach :deserialize buf ptr-) (incf ptr- (send _grasp_approach :serialization-length))
   ;; geometry_msgs/Vector3 _grasp_retreat
     (send _grasp_retreat :deserialize buf ptr-) (incf ptr- (send _grasp_retreat :serialization-length))
   ;; uint16 _grasp_posture
     (setq _grasp_posture (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _pre_grasp_posture
     (setq _pre_grasp_posture (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get hiwonder_interfaces::Grasp :md5sum-) "1e4e2be316d6a67c5705e66022e5a73c")
(setf (get hiwonder_interfaces::Grasp :datatype-) "hiwonder_interfaces/Grasp")
(setf (get hiwonder_interfaces::Grasp :definition-)
      "# pick, place
string mode

# 夹取时的姿态和位置
geometry_msgs/Point position

float64 pitch
float64 align_angle

# 接近时的距离和方向
geometry_msgs/Vector3 grasp_approach

# 撤离时的距离和方向
geometry_msgs/Vector3 grasp_retreat

# 夹取时夹持器姿态
uint16 grasp_posture

# 夹取前夹持器姿态
uint16 pre_grasp_posture

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :hiwonder_interfaces/Grasp "1e4e2be316d6a67c5705e66022e5a73c")


