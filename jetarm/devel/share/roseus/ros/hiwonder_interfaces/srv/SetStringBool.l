;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_interfaces::SetStringBool)
  (if (not (find-package "HIWONDER_INTERFACES"))
    (make-package "HIWONDER_INTERFACES"))
  (shadow 'SetStringBool (find-package "HIWONDER_INTERFACES")))
(unless (find-package "HIWONDER_INTERFACES::SETSTRINGBOOL")
  (make-package "HIWONDER_INTERFACES::SETSTRINGBOOL"))
(unless (find-package "HIWONDER_INTERFACES::SETSTRINGBOOLREQUEST")
  (make-package "HIWONDER_INTERFACES::SETSTRINGBOOLREQUEST"))
(unless (find-package "HIWONDER_INTERFACES::SETSTRINGBOOLRESPONSE")
  (make-package "HIWONDER_INTERFACES::SETSTRINGBOOLRESPONSE"))

(in-package "ROS")





(defclass hiwonder_interfaces::SetStringBoolRequest
  :super ros::object
  :slots (_data_str _data_bool ))

(defmethod hiwonder_interfaces::SetStringBoolRequest
  (:init
   (&key
    ((:data_str __data_str) "")
    ((:data_bool __data_bool) nil)
    )
   (send-super :init)
   (setq _data_str (string __data_str))
   (setq _data_bool __data_bool)
   self)
  (:data_str
   (&optional __data_str)
   (if __data_str (setq _data_str __data_str)) _data_str)
  (:data_bool
   (&optional (__data_bool :null))
   (if (not (eq __data_bool :null)) (setq _data_bool __data_bool)) _data_bool)
  (:serialization-length
   ()
   (+
    ;; string _data_str
    4 (length _data_str)
    ;; bool _data_bool
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data_str
       (write-long (length _data_str) s) (princ _data_str s)
     ;; bool _data_bool
       (if _data_bool (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data_str
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data_str (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _data_bool
     (setq _data_bool (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass hiwonder_interfaces::SetStringBoolResponse
  :super ros::object
  :slots (_success _message ))

(defmethod hiwonder_interfaces::SetStringBoolResponse
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

(defclass hiwonder_interfaces::SetStringBool
  :super ros::object
  :slots ())

(setf (get hiwonder_interfaces::SetStringBool :md5sum-) "c3a1ce4d99d15a1a0c350abb00d13216")
(setf (get hiwonder_interfaces::SetStringBool :datatype-) "hiwonder_interfaces/SetStringBool")
(setf (get hiwonder_interfaces::SetStringBool :request) hiwonder_interfaces::SetStringBoolRequest)
(setf (get hiwonder_interfaces::SetStringBool :response) hiwonder_interfaces::SetStringBoolResponse)

(defmethod hiwonder_interfaces::SetStringBoolRequest
  (:response () (instance hiwonder_interfaces::SetStringBoolResponse :init)))

(setf (get hiwonder_interfaces::SetStringBoolRequest :md5sum-) "c3a1ce4d99d15a1a0c350abb00d13216")
(setf (get hiwonder_interfaces::SetStringBoolRequest :datatype-) "hiwonder_interfaces/SetStringBoolRequest")
(setf (get hiwonder_interfaces::SetStringBoolRequest :definition-)
      "string data_str
bool data_bool
---
bool success
string message
")

(setf (get hiwonder_interfaces::SetStringBoolResponse :md5sum-) "c3a1ce4d99d15a1a0c350abb00d13216")
(setf (get hiwonder_interfaces::SetStringBoolResponse :datatype-) "hiwonder_interfaces/SetStringBoolResponse")
(setf (get hiwonder_interfaces::SetStringBoolResponse :definition-)
      "string data_str
bool data_bool
---
bool success
string message
")



(provide :hiwonder_interfaces/SetStringBool "c3a1ce4d99d15a1a0c350abb00d13216")


