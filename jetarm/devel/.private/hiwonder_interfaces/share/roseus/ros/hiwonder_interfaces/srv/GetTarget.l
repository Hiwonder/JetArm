;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_interfaces::GetTarget)
  (if (not (find-package "HIWONDER_INTERFACES"))
    (make-package "HIWONDER_INTERFACES"))
  (shadow 'GetTarget (find-package "HIWONDER_INTERFACES")))
(unless (find-package "HIWONDER_INTERFACES::GETTARGET")
  (make-package "HIWONDER_INTERFACES::GETTARGET"))
(unless (find-package "HIWONDER_INTERFACES::GETTARGETREQUEST")
  (make-package "HIWONDER_INTERFACES::GETTARGETREQUEST"))
(unless (find-package "HIWONDER_INTERFACES::GETTARGETRESPONSE")
  (make-package "HIWONDER_INTERFACES::GETTARGETRESPONSE"))

(in-package "ROS")





(defclass hiwonder_interfaces::GetTargetRequest
  :super ros::object
  :slots ())

(defmethod hiwonder_interfaces::GetTargetRequest
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

(defclass hiwonder_interfaces::GetTargetResponse
  :super ros::object
  :slots (_success _label ))

(defmethod hiwonder_interfaces::GetTargetResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:label __label) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _success __success)
   (setq _label __label)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string[] _label
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _label)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string[] _label
     (write-long (length _label) s)
     (dolist (elem _label)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string[] _label
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _label (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _label i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass hiwonder_interfaces::GetTarget
  :super ros::object
  :slots ())

(setf (get hiwonder_interfaces::GetTarget :md5sum-) "a969347dbd0044352898c1217b7481aa")
(setf (get hiwonder_interfaces::GetTarget :datatype-) "hiwonder_interfaces/GetTarget")
(setf (get hiwonder_interfaces::GetTarget :request) hiwonder_interfaces::GetTargetRequest)
(setf (get hiwonder_interfaces::GetTarget :response) hiwonder_interfaces::GetTargetResponse)

(defmethod hiwonder_interfaces::GetTargetRequest
  (:response () (instance hiwonder_interfaces::GetTargetResponse :init)))

(setf (get hiwonder_interfaces::GetTargetRequest :md5sum-) "a969347dbd0044352898c1217b7481aa")
(setf (get hiwonder_interfaces::GetTargetRequest :datatype-) "hiwonder_interfaces/GetTargetRequest")
(setf (get hiwonder_interfaces::GetTargetRequest :definition-)
      "
---
bool success

# 颜色标签，如'red', 'green', 'blue'
# 垃圾类别，如'BananaPeel'
string[] label

")

(setf (get hiwonder_interfaces::GetTargetResponse :md5sum-) "a969347dbd0044352898c1217b7481aa")
(setf (get hiwonder_interfaces::GetTargetResponse :datatype-) "hiwonder_interfaces/GetTargetResponse")
(setf (get hiwonder_interfaces::GetTargetResponse :definition-)
      "
---
bool success

# 颜色标签，如'red', 'green', 'blue'
# 垃圾类别，如'BananaPeel'
string[] label

")



(provide :hiwonder_interfaces/GetTarget "a969347dbd0044352898c1217b7481aa")


