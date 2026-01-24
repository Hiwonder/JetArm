;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_interfaces::SetTarget)
  (if (not (find-package "HIWONDER_INTERFACES"))
    (make-package "HIWONDER_INTERFACES"))
  (shadow 'SetTarget (find-package "HIWONDER_INTERFACES")))
(unless (find-package "HIWONDER_INTERFACES::SETTARGET")
  (make-package "HIWONDER_INTERFACES::SETTARGET"))
(unless (find-package "HIWONDER_INTERFACES::SETTARGETREQUEST")
  (make-package "HIWONDER_INTERFACES::SETTARGETREQUEST"))
(unless (find-package "HIWONDER_INTERFACES::SETTARGETRESPONSE")
  (make-package "HIWONDER_INTERFACES::SETTARGETRESPONSE"))

(in-package "ROS")





(defclass hiwonder_interfaces::SetTargetRequest
  :super ros::object
  :slots (_label ))

(defmethod hiwonder_interfaces::SetTargetRequest
  (:init
   (&key
    ((:label __label) "")
    )
   (send-super :init)
   (setq _label (string __label))
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:serialization-length
   ()
   (+
    ;; string _label
    4 (length _label)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass hiwonder_interfaces::SetTargetResponse
  :super ros::object
  :slots (_success _message ))

(defmethod hiwonder_interfaces::SetTargetResponse
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

(defclass hiwonder_interfaces::SetTarget
  :super ros::object
  :slots ())

(setf (get hiwonder_interfaces::SetTarget :md5sum-) "d74f6627fb1a814ad4bd7b097c68231c")
(setf (get hiwonder_interfaces::SetTarget :datatype-) "hiwonder_interfaces/SetTarget")
(setf (get hiwonder_interfaces::SetTarget :request) hiwonder_interfaces::SetTargetRequest)
(setf (get hiwonder_interfaces::SetTarget :response) hiwonder_interfaces::SetTargetResponse)

(defmethod hiwonder_interfaces::SetTargetRequest
  (:response () (instance hiwonder_interfaces::SetTargetResponse :init)))

(setf (get hiwonder_interfaces::SetTargetRequest :md5sum-) "d74f6627fb1a814ad4bd7b097c68231c")
(setf (get hiwonder_interfaces::SetTargetRequest :datatype-) "hiwonder_interfaces/SetTargetRequest")
(setf (get hiwonder_interfaces::SetTargetRequest :definition-)
      "# 颜色标签，如'red', 'green', 'blue'
# 垃圾类别，如'BananaPeel'
string label
---
bool success
string message

")

(setf (get hiwonder_interfaces::SetTargetResponse :md5sum-) "d74f6627fb1a814ad4bd7b097c68231c")
(setf (get hiwonder_interfaces::SetTargetResponse :datatype-) "hiwonder_interfaces/SetTargetResponse")
(setf (get hiwonder_interfaces::SetTargetResponse :definition-)
      "# 颜色标签，如'red', 'green', 'blue'
# 垃圾类别，如'BananaPeel'
string label
---
bool success
string message

")



(provide :hiwonder_interfaces/SetTarget "d74f6627fb1a814ad4bd7b097c68231c")


