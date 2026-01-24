;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_interfaces::SerialServoTrigger)
  (if (not (find-package "HIWONDER_INTERFACES"))
    (make-package "HIWONDER_INTERFACES"))
  (shadow 'SerialServoTrigger (find-package "HIWONDER_INTERFACES")))
(unless (find-package "HIWONDER_INTERFACES::SERIALSERVOTRIGGER")
  (make-package "HIWONDER_INTERFACES::SERIALSERVOTRIGGER"))
(unless (find-package "HIWONDER_INTERFACES::SERIALSERVOTRIGGERREQUEST")
  (make-package "HIWONDER_INTERFACES::SERIALSERVOTRIGGERREQUEST"))
(unless (find-package "HIWONDER_INTERFACES::SERIALSERVOTRIGGERRESPONSE")
  (make-package "HIWONDER_INTERFACES::SERIALSERVOTRIGGERRESPONSE"))

(in-package "ROS")





(defclass hiwonder_interfaces::SerialServoTriggerRequest
  :super ros::object
  :slots (_servo_id ))

(defmethod hiwonder_interfaces::SerialServoTriggerRequest
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

(defclass hiwonder_interfaces::SerialServoTriggerResponse
  :super ros::object
  :slots (_success _message ))

(defmethod hiwonder_interfaces::SerialServoTriggerResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass hiwonder_interfaces::SerialServoTrigger
  :super ros::object
  :slots ())

(setf (get hiwonder_interfaces::SerialServoTrigger :md5sum-) "5f5091eac81f15b2ecca9496c10bde6a")
(setf (get hiwonder_interfaces::SerialServoTrigger :datatype-) "hiwonder_interfaces/SerialServoTrigger")
(setf (get hiwonder_interfaces::SerialServoTrigger :request) hiwonder_interfaces::SerialServoTriggerRequest)
(setf (get hiwonder_interfaces::SerialServoTrigger :response) hiwonder_interfaces::SerialServoTriggerResponse)

(defmethod hiwonder_interfaces::SerialServoTriggerRequest
  (:response () (instance hiwonder_interfaces::SerialServoTriggerResponse :init)))

(setf (get hiwonder_interfaces::SerialServoTriggerRequest :md5sum-) "5f5091eac81f15b2ecca9496c10bde6a")
(setf (get hiwonder_interfaces::SerialServoTriggerRequest :datatype-) "hiwonder_interfaces/SerialServoTriggerRequest")
(setf (get hiwonder_interfaces::SerialServoTriggerRequest :definition-)
      "uint8 servo_id
---
bool success
string message
")

(setf (get hiwonder_interfaces::SerialServoTriggerResponse :md5sum-) "5f5091eac81f15b2ecca9496c10bde6a")
(setf (get hiwonder_interfaces::SerialServoTriggerResponse :datatype-) "hiwonder_interfaces/SerialServoTriggerResponse")
(setf (get hiwonder_interfaces::SerialServoTriggerResponse :definition-)
      "uint8 servo_id
---
bool success
string message
")



(provide :hiwonder_interfaces/SerialServoTrigger "5f5091eac81f15b2ecca9496c10bde6a")


