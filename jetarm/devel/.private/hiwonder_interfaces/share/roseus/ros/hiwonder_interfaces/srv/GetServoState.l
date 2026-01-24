;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_interfaces::GetServoState)
  (if (not (find-package "HIWONDER_INTERFACES"))
    (make-package "HIWONDER_INTERFACES"))
  (shadow 'GetServoState (find-package "HIWONDER_INTERFACES")))
(unless (find-package "HIWONDER_INTERFACES::GETSERVOSTATE")
  (make-package "HIWONDER_INTERFACES::GETSERVOSTATE"))
(unless (find-package "HIWONDER_INTERFACES::GETSERVOSTATEREQUEST")
  (make-package "HIWONDER_INTERFACES::GETSERVOSTATEREQUEST"))
(unless (find-package "HIWONDER_INTERFACES::GETSERVOSTATERESPONSE")
  (make-package "HIWONDER_INTERFACES::GETSERVOSTATERESPONSE"))

(in-package "ROS")





(defclass hiwonder_interfaces::GetServoStateRequest
  :super ros::object
  :slots (_cmd _id ))

(defmethod hiwonder_interfaces::GetServoStateRequest
  (:init
   (&key
    ((:cmd __cmd) "")
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _cmd (string __cmd))
   (setq _id (round __id))
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; string _cmd
    4 (length _cmd)
    ;; int16 _id
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _cmd
       (write-long (length _cmd) s) (princ _cmd s)
     ;; int16 _id
       (write-word _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _cmd
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cmd (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _id
     (setq _id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(defclass hiwonder_interfaces::GetServoStateResponse
  :super ros::object
  :slots (_success _value ))

(defmethod hiwonder_interfaces::GetServoStateResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:value __value) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _success __success)
   (setq _value __value)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; float32[] _value
    (* 4    (length _value)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; float32[] _value
     (write-long (length _value) s)
     (dotimes (i (length _value))
       (sys::poke (elt _value i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32[] _value
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _value (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _value i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass hiwonder_interfaces::GetServoState
  :super ros::object
  :slots ())

(setf (get hiwonder_interfaces::GetServoState :md5sum-) "3f2b7dfd5e7d17f9fb64e9e86bb09ef2")
(setf (get hiwonder_interfaces::GetServoState :datatype-) "hiwonder_interfaces/GetServoState")
(setf (get hiwonder_interfaces::GetServoState :request) hiwonder_interfaces::GetServoStateRequest)
(setf (get hiwonder_interfaces::GetServoState :response) hiwonder_interfaces::GetServoStateResponse)

(defmethod hiwonder_interfaces::GetServoStateRequest
  (:response () (instance hiwonder_interfaces::GetServoStateResponse :init)))

(setf (get hiwonder_interfaces::GetServoStateRequest :md5sum-) "3f2b7dfd5e7d17f9fb64e9e86bb09ef2")
(setf (get hiwonder_interfaces::GetServoStateRequest :datatype-) "hiwonder_interfaces/GetServoStateRequest")
(setf (get hiwonder_interfaces::GetServoStateRequest :definition-)
      "string cmd
int16 id
---
bool success
float32[] value

")

(setf (get hiwonder_interfaces::GetServoStateResponse :md5sum-) "3f2b7dfd5e7d17f9fb64e9e86bb09ef2")
(setf (get hiwonder_interfaces::GetServoStateResponse :datatype-) "hiwonder_interfaces/GetServoStateResponse")
(setf (get hiwonder_interfaces::GetServoStateResponse :definition-)
      "string cmd
int16 id
---
bool success
float32[] value

")



(provide :hiwonder_interfaces/GetServoState "3f2b7dfd5e7d17f9fb64e9e86bb09ef2")


