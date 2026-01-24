;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_interfaces::PixelPosition)
  (if (not (find-package "HIWONDER_INTERFACES"))
    (make-package "HIWONDER_INTERFACES"))
  (shadow 'PixelPosition (find-package "HIWONDER_INTERFACES")))
(unless (find-package "HIWONDER_INTERFACES::PIXELPOSITION")
  (make-package "HIWONDER_INTERFACES::PIXELPOSITION"))

(in-package "ROS")
;;//! \htmlinclude PixelPosition.msg.html


(defclass hiwonder_interfaces::PixelPosition
  :super ros::object
  :slots (_x _y ))

(defmethod hiwonder_interfaces::PixelPosition
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; uint16 _x
    2
    ;; uint16 _y
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _x
       (write-word _x s)
     ;; uint16 _y
       (write-word _y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _x
     (setq _x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _y
     (setq _y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get hiwonder_interfaces::PixelPosition :md5sum-) "2b80853b9dd76da1c3efb4dbc2426fe9")
(setf (get hiwonder_interfaces::PixelPosition :datatype-) "hiwonder_interfaces/PixelPosition")
(setf (get hiwonder_interfaces::PixelPosition :definition-)
      "uint16 x
uint16 y

")



(provide :hiwonder_interfaces/PixelPosition "2b80853b9dd76da1c3efb4dbc2426fe9")


