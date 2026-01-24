;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_interfaces::SerialServoMove)
  (if (not (find-package "HIWONDER_INTERFACES"))
    (make-package "HIWONDER_INTERFACES"))
  (shadow 'SerialServoMove (find-package "HIWONDER_INTERFACES")))
(unless (find-package "HIWONDER_INTERFACES::SERIALSERVOMOVE")
  (make-package "HIWONDER_INTERFACES::SERIALSERVOMOVE"))

(in-package "ROS")
;;//! \htmlinclude SerialServoMove.msg.html


(defclass hiwonder_interfaces::SerialServoMove
  :super ros::object
  :slots (_servo_id _position _duration ))

(defmethod hiwonder_interfaces::SerialServoMove
  (:init
   (&key
    ((:servo_id __servo_id) 0)
    ((:position __position) 0)
    ((:duration __duration) 0)
    )
   (send-super :init)
   (setq _servo_id (round __servo_id))
   (setq _position (round __position))
   (setq _duration (round __duration))
   self)
  (:servo_id
   (&optional __servo_id)
   (if __servo_id (setq _servo_id __servo_id)) _servo_id)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; uint8 _servo_id
    1
    ;; uint16 _position
    2
    ;; uint16 _duration
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _servo_id
       (write-byte _servo_id s)
     ;; uint16 _position
       (write-word _position s)
     ;; uint16 _duration
       (write-word _duration s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _servo_id
     (setq _servo_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _position
     (setq _position (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _duration
     (setq _duration (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get hiwonder_interfaces::SerialServoMove :md5sum-) "5dc54bf167bb9c6046aadd2946345a2d")
(setf (get hiwonder_interfaces::SerialServoMove :datatype-) "hiwonder_interfaces/SerialServoMove")
(setf (get hiwonder_interfaces::SerialServoMove :definition-)
      "uint8 servo_id
uint16 position
uint16 duration

")



(provide :hiwonder_interfaces/SerialServoMove "5dc54bf167bb9c6046aadd2946345a2d")


