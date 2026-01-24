;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_interfaces::GetLink)
  (if (not (find-package "HIWONDER_INTERFACES"))
    (make-package "HIWONDER_INTERFACES"))
  (shadow 'GetLink (find-package "HIWONDER_INTERFACES")))
(unless (find-package "HIWONDER_INTERFACES::GETLINK")
  (make-package "HIWONDER_INTERFACES::GETLINK"))
(unless (find-package "HIWONDER_INTERFACES::GETLINKREQUEST")
  (make-package "HIWONDER_INTERFACES::GETLINKREQUEST"))
(unless (find-package "HIWONDER_INTERFACES::GETLINKRESPONSE")
  (make-package "HIWONDER_INTERFACES::GETLINKRESPONSE"))

(in-package "ROS")





(defclass hiwonder_interfaces::GetLinkRequest
  :super ros::object
  :slots ())

(defmethod hiwonder_interfaces::GetLinkRequest
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

(defclass hiwonder_interfaces::GetLinkResponse
  :super ros::object
  :slots (_success _data ))

(defmethod hiwonder_interfaces::GetLinkResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:data __data) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _success __success)
   (setq _data __data)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; float32[] _data
    (* 4    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; float32[] _data
     (write-long (length _data) s)
     (dotimes (i (length _data))
       (sys::poke (elt _data i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
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

(defclass hiwonder_interfaces::GetLink
  :super ros::object
  :slots ())

(setf (get hiwonder_interfaces::GetLink :md5sum-) "f52e183781a78fdf83d51e914c2363e3")
(setf (get hiwonder_interfaces::GetLink :datatype-) "hiwonder_interfaces/GetLink")
(setf (get hiwonder_interfaces::GetLink :request) hiwonder_interfaces::GetLinkRequest)
(setf (get hiwonder_interfaces::GetLink :response) hiwonder_interfaces::GetLinkResponse)

(defmethod hiwonder_interfaces::GetLinkRequest
  (:response () (instance hiwonder_interfaces::GetLinkResponse :init)))

(setf (get hiwonder_interfaces::GetLinkRequest :md5sum-) "f52e183781a78fdf83d51e914c2363e3")
(setf (get hiwonder_interfaces::GetLinkRequest :datatype-) "hiwonder_interfaces/GetLinkRequest")
(setf (get hiwonder_interfaces::GetLinkRequest :definition-)
      "
---
bool success
float32[] data

")

(setf (get hiwonder_interfaces::GetLinkResponse :md5sum-) "f52e183781a78fdf83d51e914c2363e3")
(setf (get hiwonder_interfaces::GetLinkResponse :datatype-) "hiwonder_interfaces/GetLinkResponse")
(setf (get hiwonder_interfaces::GetLinkResponse :definition-)
      "
---
bool success
float32[] data

")



(provide :hiwonder_interfaces/GetLink "f52e183781a78fdf83d51e914c2363e3")


