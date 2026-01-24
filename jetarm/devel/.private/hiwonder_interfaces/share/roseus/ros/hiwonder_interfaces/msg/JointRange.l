;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_interfaces::JointRange)
  (if (not (find-package "HIWONDER_INTERFACES"))
    (make-package "HIWONDER_INTERFACES"))
  (shadow 'JointRange (find-package "HIWONDER_INTERFACES")))
(unless (find-package "HIWONDER_INTERFACES::JOINTRANGE")
  (make-package "HIWONDER_INTERFACES::JOINTRANGE"))

(in-package "ROS")
;;//! \htmlinclude JointRange.msg.html


(defclass hiwonder_interfaces::JointRange
  :super ros::object
  :slots (_min _max ))

(defmethod hiwonder_interfaces::JointRange
  (:init
   (&key
    ((:min __min) 0.0)
    ((:max __max) 0.0)
    )
   (send-super :init)
   (setq _min (float __min))
   (setq _max (float __max))
   self)
  (:min
   (&optional __min)
   (if __min (setq _min __min)) _min)
  (:max
   (&optional __max)
   (if __max (setq _max __max)) _max)
  (:serialization-length
   ()
   (+
    ;; float64 _min
    8
    ;; float64 _max
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _min
       (sys::poke _min (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max
       (sys::poke _max (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _min
     (setq _min (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max
     (setq _max (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get hiwonder_interfaces::JointRange :md5sum-) "32e1c0b6f254bb48e963512143e9aa6f")
(setf (get hiwonder_interfaces::JointRange :datatype-) "hiwonder_interfaces/JointRange")
(setf (get hiwonder_interfaces::JointRange :definition-)
      "float64 min
float64 max

")



(provide :hiwonder_interfaces/JointRange "32e1c0b6f254bb48e963512143e9aa6f")


