;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_interfaces::ServoMove)
  (if (not (find-package "HIWONDER_INTERFACES"))
    (make-package "HIWONDER_INTERFACES"))
  (shadow 'ServoMove (find-package "HIWONDER_INTERFACES")))
(unless (find-package "HIWONDER_INTERFACES::SERVOMOVE")
  (make-package "HIWONDER_INTERFACES::SERVOMOVE"))

(in-package "ROS")
;;//! \htmlinclude ServoMove.msg.html


(defclass hiwonder_interfaces::ServoMove
  :super ros::object
  :slots (_id _position _duration ))

(defmethod hiwonder_interfaces::ServoMove
  (:init
   (&key
    ((:id __id) 0)
    ((:position __position) 0)
    ((:duration __duration) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _position (round __position))
   (setq _duration (float __duration))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; int16 _position
    2
    ;; float64 _duration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; int16 _position
       (write-word _position s)
     ;; float64 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _position
     (setq _position (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _duration
     (setq _duration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get hiwonder_interfaces::ServoMove :md5sum-) "cf5eb066650b015d3a13081e45341e52")
(setf (get hiwonder_interfaces::ServoMove :datatype-) "hiwonder_interfaces/ServoMove")
(setf (get hiwonder_interfaces::ServoMove :definition-)
      "uint8 id
int16 position
float64 duration

")



(provide :hiwonder_interfaces/ServoMove "cf5eb066650b015d3a13081e45341e52")


