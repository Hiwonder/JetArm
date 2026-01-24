;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_interfaces::GetJointRange)
  (if (not (find-package "HIWONDER_INTERFACES"))
    (make-package "HIWONDER_INTERFACES"))
  (shadow 'GetJointRange (find-package "HIWONDER_INTERFACES")))
(unless (find-package "HIWONDER_INTERFACES::GETJOINTRANGE")
  (make-package "HIWONDER_INTERFACES::GETJOINTRANGE"))
(unless (find-package "HIWONDER_INTERFACES::GETJOINTRANGEREQUEST")
  (make-package "HIWONDER_INTERFACES::GETJOINTRANGEREQUEST"))
(unless (find-package "HIWONDER_INTERFACES::GETJOINTRANGERESPONSE")
  (make-package "HIWONDER_INTERFACES::GETJOINTRANGERESPONSE"))

(in-package "ROS")





(defclass hiwonder_interfaces::GetJointRangeRequest
  :super ros::object
  :slots ())

(defmethod hiwonder_interfaces::GetJointRangeRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass hiwonder_interfaces::GetJointRangeResponse
  :super ros::object
  :slots (_success _data ))

(defmethod hiwonder_interfaces::GetJointRangeResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:data __data) (instance hiwonder_interfaces::JointsRange :init))
    )
   (send-super :init)
   (setq _success __success)
   (setq _data __data)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
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
    ;; bool _success
    1
    ;; hiwonder_interfaces/JointsRange _data
    (send _data :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; hiwonder_interfaces/JointsRange _data
       (send _data :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; hiwonder_interfaces/JointsRange _data
     (send _data :deserialize buf ptr-) (incf ptr- (send _data :serialization-length))
   ;;
   self)
  )

(defclass hiwonder_interfaces::GetJointRange
  :super ros::object
  :slots ())

(setf (get hiwonder_interfaces::GetJointRange :md5sum-) "33e6f68f335a1196c0815d29210eb550")
(setf (get hiwonder_interfaces::GetJointRange :datatype-) "hiwonder_interfaces/GetJointRange")
(setf (get hiwonder_interfaces::GetJointRange :request) hiwonder_interfaces::GetJointRangeRequest)
(setf (get hiwonder_interfaces::GetJointRange :response) hiwonder_interfaces::GetJointRangeResponse)

(defmethod hiwonder_interfaces::GetJointRangeRequest
  (:response () (instance hiwonder_interfaces::GetJointRangeResponse :init)))

(setf (get hiwonder_interfaces::GetJointRangeRequest :md5sum-) "33e6f68f335a1196c0815d29210eb550")
(setf (get hiwonder_interfaces::GetJointRangeRequest :datatype-) "hiwonder_interfaces/GetJointRangeRequest")
(setf (get hiwonder_interfaces::GetJointRangeRequest :definition-)
      "
---
bool success
hiwonder_interfaces/JointsRange data


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
")

(setf (get hiwonder_interfaces::GetJointRangeResponse :md5sum-) "33e6f68f335a1196c0815d29210eb550")
(setf (get hiwonder_interfaces::GetJointRangeResponse :datatype-) "hiwonder_interfaces/GetJointRangeResponse")
(setf (get hiwonder_interfaces::GetJointRangeResponse :definition-)
      "
---
bool success
hiwonder_interfaces/JointsRange data


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
")



(provide :hiwonder_interfaces/GetJointRange "33e6f68f335a1196c0815d29210eb550")


