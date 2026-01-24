;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_interfaces::SetJointRange)
  (if (not (find-package "HIWONDER_INTERFACES"))
    (make-package "HIWONDER_INTERFACES"))
  (shadow 'SetJointRange (find-package "HIWONDER_INTERFACES")))
(unless (find-package "HIWONDER_INTERFACES::SETJOINTRANGE")
  (make-package "HIWONDER_INTERFACES::SETJOINTRANGE"))
(unless (find-package "HIWONDER_INTERFACES::SETJOINTRANGEREQUEST")
  (make-package "HIWONDER_INTERFACES::SETJOINTRANGEREQUEST"))
(unless (find-package "HIWONDER_INTERFACES::SETJOINTRANGERESPONSE")
  (make-package "HIWONDER_INTERFACES::SETJOINTRANGERESPONSE"))

(in-package "ROS")





(defclass hiwonder_interfaces::SetJointRangeRequest
  :super ros::object
  :slots (_data ))

(defmethod hiwonder_interfaces::SetJointRangeRequest
  (:init
   (&key
    ((:data __data) (instance hiwonder_interfaces::JointsRange :init))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; hiwonder_interfaces/JointsRange _data
    (send _data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; hiwonder_interfaces/JointsRange _data
       (send _data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; hiwonder_interfaces/JointsRange _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;;
   self)
  )

(defclass hiwonder_interfaces::SetJointRangeResponse
  :super ros::object
  :slots (_success _message ))

(defmethod hiwonder_interfaces::SetJointRangeResponse
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

(defclass hiwonder_interfaces::SetJointRange
  :super ros::object
  :slots ())

(setf (get hiwonder_interfaces::SetJointRange :md5sum-) "650ce1142907ebb9d989246f5b6eb1fe")
(setf (get hiwonder_interfaces::SetJointRange :datatype-) "hiwonder_interfaces/SetJointRange")
(setf (get hiwonder_interfaces::SetJointRange :request) hiwonder_interfaces::SetJointRangeRequest)
(setf (get hiwonder_interfaces::SetJointRange :response) hiwonder_interfaces::SetJointRangeResponse)

(defmethod hiwonder_interfaces::SetJointRangeRequest
  (:response () (instance hiwonder_interfaces::SetJointRangeResponse :init)))

(setf (get hiwonder_interfaces::SetJointRangeRequest :md5sum-) "650ce1142907ebb9d989246f5b6eb1fe")
(setf (get hiwonder_interfaces::SetJointRangeRequest :datatype-) "hiwonder_interfaces/SetJointRangeRequest")
(setf (get hiwonder_interfaces::SetJointRangeRequest :definition-)
      "hiwonder_interfaces/JointsRange data

================================================================================
MSG: hiwonder_interfaces/JointsRange
hiwonder_interfaces/JointRange joint1
hiwonder_interfaces/JointRange joint2
hiwonder_interfaces/JointRange joint3
hiwonder_interfaces/JointRange joint4
hiwonder_interfaces/JointRange joint5

================================================================================
MSG: hiwonder_interfaces/JointRange
float64 min
float64 max
---
bool success
string message

")

(setf (get hiwonder_interfaces::SetJointRangeResponse :md5sum-) "650ce1142907ebb9d989246f5b6eb1fe")
(setf (get hiwonder_interfaces::SetJointRangeResponse :datatype-) "hiwonder_interfaces/SetJointRangeResponse")
(setf (get hiwonder_interfaces::SetJointRangeResponse :definition-)
      "hiwonder_interfaces/JointsRange data

================================================================================
MSG: hiwonder_interfaces/JointsRange
hiwonder_interfaces/JointRange joint1
hiwonder_interfaces/JointRange joint2
hiwonder_interfaces/JointRange joint3
hiwonder_interfaces/JointRange joint4
hiwonder_interfaces/JointRange joint5

================================================================================
MSG: hiwonder_interfaces/JointRange
float64 min
float64 max
---
bool success
string message

")



(provide :hiwonder_interfaces/SetJointRange "650ce1142907ebb9d989246f5b6eb1fe")


