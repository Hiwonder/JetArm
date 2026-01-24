;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_interfaces::JointMove)
  (if (not (find-package "HIWONDER_INTERFACES"))
    (make-package "HIWONDER_INTERFACES"))
  (shadow 'JointMove (find-package "HIWONDER_INTERFACES")))
(unless (find-package "HIWONDER_INTERFACES::JOINTMOVE")
  (make-package "HIWONDER_INTERFACES::JOINTMOVE"))

(in-package "ROS")
;;//! \htmlinclude JointMove.msg.html


(defclass hiwonder_interfaces::JointMove
  :super ros::object
  :slots (_name _rad _duration ))

(defmethod hiwonder_interfaces::JointMove
  (:init
   (&key
    ((:name __name) "")
    ((:rad __rad) 0.0)
    ((:duration __duration) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _rad (float __rad))
   (setq _duration (float __duration))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:rad
   (&optional __rad)
   (if __rad (setq _rad __rad)) _rad)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float64 _rad
    8
    ;; float64 _duration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float64 _rad
       (sys::poke _rad (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _rad
     (setq _rad (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _duration
     (setq _duration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get hiwonder_interfaces::JointMove :md5sum-) "f79a23794e2d24d3d9bfad74299990fe")
(setf (get hiwonder_interfaces::JointMove :datatype-) "hiwonder_interfaces/JointMove")
(setf (get hiwonder_interfaces::JointMove :definition-)
      "string name
float64 rad
float64 duration

")



(provide :hiwonder_interfaces/JointMove "f79a23794e2d24d3d9bfad74299990fe")


