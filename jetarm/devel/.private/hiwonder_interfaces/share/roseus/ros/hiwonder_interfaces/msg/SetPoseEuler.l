;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_interfaces::SetPoseEuler)
  (if (not (find-package "HIWONDER_INTERFACES"))
    (make-package "HIWONDER_INTERFACES"))
  (shadow 'SetPoseEuler (find-package "HIWONDER_INTERFACES")))
(unless (find-package "HIWONDER_INTERFACES::SETPOSEEULER")
  (make-package "HIWONDER_INTERFACES::SETPOSEEULER"))

(in-package "ROS")
;;//! \htmlinclude SetPoseEuler.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass hiwonder_interfaces::SetPoseEuler
  :super ros::object
  :slots (_position _orientation _degrees _duration ))

(defmethod hiwonder_interfaces::SetPoseEuler
  (:init
   (&key
    ((:position __position) (instance geometry_msgs::Point :init))
    ((:orientation __orientation) (instance geometry_msgs::Vector3 :init))
    ((:degrees __degrees) nil)
    ((:duration __duration) 0.0)
    )
   (send-super :init)
   (setq _position __position)
   (setq _orientation __orientation)
   (setq _degrees __degrees)
   (setq _duration (float __duration))
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:orientation
   (&rest __orientation)
   (if (keywordp (car __orientation))
       (send* _orientation __orientation)
     (progn
       (if __orientation (setq _orientation (car __orientation)))
       _orientation)))
  (:degrees
   (&optional (__degrees :null))
   (if (not (eq __degrees :null)) (setq _degrees __degrees)) _degrees)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ;; geometry_msgs/Vector3 _orientation
    (send _orientation :serialization-length)
    ;; bool _degrees
    1
    ;; float64 _duration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;; geometry_msgs/Vector3 _orientation
       (send _orientation :serialize s)
     ;; bool _degrees
       (if _degrees (write-byte -1 s) (write-byte 0 s))
     ;; float64 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;; geometry_msgs/Vector3 _orientation
     (send _orientation :deserialize buf ptr-) (incf ptr- (send _orientation :serialization-length))
   ;; bool _degrees
     (setq _degrees (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _duration
     (setq _duration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get hiwonder_interfaces::SetPoseEuler :md5sum-) "feee4cc50e0e73730e6b29ccee7649fa")
(setf (get hiwonder_interfaces::SetPoseEuler :datatype-) "hiwonder_interfaces/SetPoseEuler")
(setf (get hiwonder_interfaces::SetPoseEuler :definition-)
      "geometry_msgs/Point position
geometry_msgs/Vector3 orientation
bool degrees
float64 duration
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



(provide :hiwonder_interfaces/SetPoseEuler "feee4cc50e0e73730e6b29ccee7649fa")


