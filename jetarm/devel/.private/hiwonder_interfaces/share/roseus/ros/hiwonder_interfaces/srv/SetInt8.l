;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_interfaces::SetInt8)
  (if (not (find-package "HIWONDER_INTERFACES"))
    (make-package "HIWONDER_INTERFACES"))
  (shadow 'SetInt8 (find-package "HIWONDER_INTERFACES")))
(unless (find-package "HIWONDER_INTERFACES::SETINT8")
  (make-package "HIWONDER_INTERFACES::SETINT8"))
(unless (find-package "HIWONDER_INTERFACES::SETINT8REQUEST")
  (make-package "HIWONDER_INTERFACES::SETINT8REQUEST"))
(unless (find-package "HIWONDER_INTERFACES::SETINT8RESPONSE")
  (make-package "HIWONDER_INTERFACES::SETINT8RESPONSE"))

(in-package "ROS")





(defclass hiwonder_interfaces::SetInt8Request
  :super ros::object
  :slots (_data ))

(defmethod hiwonder_interfaces::SetInt8Request
  (:init
   (&key
    ((:data __data) 0)
    )
   (send-super :init)
   (setq _data (round __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; int8 _data
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _data
       (write-byte _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _data
     (setq _data (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _data 127) (setq _data (- _data 256)))
   ;;
   self)
  )

(defclass hiwonder_interfaces::SetInt8Response
  :super ros::object
  :slots (_success _message ))

(defmethod hiwonder_interfaces::SetInt8Response
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

(defclass hiwonder_interfaces::SetInt8
  :super ros::object
  :slots ())

(setf (get hiwonder_interfaces::SetInt8 :md5sum-) "208d4ab53cf12eb941a7d93b34b7532b")
(setf (get hiwonder_interfaces::SetInt8 :datatype-) "hiwonder_interfaces/SetInt8")
(setf (get hiwonder_interfaces::SetInt8 :request) hiwonder_interfaces::SetInt8Request)
(setf (get hiwonder_interfaces::SetInt8 :response) hiwonder_interfaces::SetInt8Response)

(defmethod hiwonder_interfaces::SetInt8Request
  (:response () (instance hiwonder_interfaces::SetInt8Response :init)))

(setf (get hiwonder_interfaces::SetInt8Request :md5sum-) "208d4ab53cf12eb941a7d93b34b7532b")
(setf (get hiwonder_interfaces::SetInt8Request :datatype-) "hiwonder_interfaces/SetInt8Request")
(setf (get hiwonder_interfaces::SetInt8Request :definition-)
      "int8 data
---
bool success
string message
")

(setf (get hiwonder_interfaces::SetInt8Response :md5sum-) "208d4ab53cf12eb941a7d93b34b7532b")
(setf (get hiwonder_interfaces::SetInt8Response :datatype-) "hiwonder_interfaces/SetInt8Response")
(setf (get hiwonder_interfaces::SetInt8Response :definition-)
      "int8 data
---
bool success
string message
")



(provide :hiwonder_interfaces/SetInt8 "208d4ab53cf12eb941a7d93b34b7532b")


