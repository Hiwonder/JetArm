;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_interfaces::SerialServoSelect)
  (if (not (find-package "HIWONDER_INTERFACES"))
    (make-package "HIWONDER_INTERFACES"))
  (shadow 'SerialServoSelect (find-package "HIWONDER_INTERFACES")))
(unless (find-package "HIWONDER_INTERFACES::SERIALSERVOSELECT")
  (make-package "HIWONDER_INTERFACES::SERIALSERVOSELECT"))

(in-package "ROS")
;;//! \htmlinclude SerialServoSelect.msg.html


(defclass hiwonder_interfaces::SerialServoSelect
  :super ros::object
  :slots (_servo_id ))

(defmethod hiwonder_interfaces::SerialServoSelect
  (:init
   (&key
    ((:servo_id __servo_id) 0)
    )
   (send-super :init)
   (setq _servo_id (round __servo_id))
   self)
  (:servo_id
   (&optional __servo_id)
   (if __servo_id (setq _servo_id __servo_id)) _servo_id)
  (:serialization-length
   ()
   (+
    ;; uint8 _servo_id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _servo_id
       (write-byte _servo_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _servo_id
     (setq _servo_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get hiwonder_interfaces::SerialServoSelect :md5sum-) "acb16072ea21cd71e884ac51239c2a0c")
(setf (get hiwonder_interfaces::SerialServoSelect :datatype-) "hiwonder_interfaces/SerialServoSelect")
(setf (get hiwonder_interfaces::SerialServoSelect :definition-)
      "uint8 servo_id
")



(provide :hiwonder_interfaces/SerialServoSelect "acb16072ea21cd71e884ac51239c2a0c")


