;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_interfaces::SetLink)
  (if (not (find-package "HIWONDER_INTERFACES"))
    (make-package "HIWONDER_INTERFACES"))
  (shadow 'SetLink (find-package "HIWONDER_INTERFACES")))
(unless (find-package "HIWONDER_INTERFACES::SETLINK")
  (make-package "HIWONDER_INTERFACES::SETLINK"))
(unless (find-package "HIWONDER_INTERFACES::SETLINKREQUEST")
  (make-package "HIWONDER_INTERFACES::SETLINKREQUEST"))
(unless (find-package "HIWONDER_INTERFACES::SETLINKRESPONSE")
  (make-package "HIWONDER_INTERFACES::SETLINKRESPONSE"))

(in-package "ROS")





(defclass hiwonder_interfaces::SetLinkRequest
  :super ros::object
  :slots (_data ))

(defmethod hiwonder_interfaces::SetLinkRequest
  (:init
   (&key
    ((:data __data) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; float32[] _data
    (* 4    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (sys::poke (elt _data i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _data i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass hiwonder_interfaces::SetLinkResponse
  :super ros::object
  :slots (_success _message ))

(defmethod hiwonder_interfaces::SetLinkResponse
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

(defclass hiwonder_interfaces::SetLink
  :super ros::object
  :slots ())

(setf (get hiwonder_interfaces::SetLink :md5sum-) "790e43afd8a9cb210768fe5732b22a83")
(setf (get hiwonder_interfaces::SetLink :datatype-) "hiwonder_interfaces/SetLink")
(setf (get hiwonder_interfaces::SetLink :request) hiwonder_interfaces::SetLinkRequest)
(setf (get hiwonder_interfaces::SetLink :response) hiwonder_interfaces::SetLinkResponse)

(defmethod hiwonder_interfaces::SetLinkRequest
  (:response () (instance hiwonder_interfaces::SetLinkResponse :init)))

(setf (get hiwonder_interfaces::SetLinkRequest :md5sum-) "790e43afd8a9cb210768fe5732b22a83")
(setf (get hiwonder_interfaces::SetLinkRequest :datatype-) "hiwonder_interfaces/SetLinkRequest")
(setf (get hiwonder_interfaces::SetLinkRequest :definition-)
      "float32[] data
---
bool success
string message

")

(setf (get hiwonder_interfaces::SetLinkResponse :md5sum-) "790e43afd8a9cb210768fe5732b22a83")
(setf (get hiwonder_interfaces::SetLinkResponse :datatype-) "hiwonder_interfaces/SetLinkResponse")
(setf (get hiwonder_interfaces::SetLinkResponse :definition-)
      "float32[] data
---
bool success
string message

")



(provide :hiwonder_interfaces/SetLink "790e43afd8a9cb210768fe5732b22a83")


