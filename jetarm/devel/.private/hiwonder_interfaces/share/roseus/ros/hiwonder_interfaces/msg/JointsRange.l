;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_interfaces::JointsRange)
  (if (not (find-package "HIWONDER_INTERFACES"))
    (make-package "HIWONDER_INTERFACES"))
  (shadow 'JointsRange (find-package "HIWONDER_INTERFACES")))
(unless (find-package "HIWONDER_INTERFACES::JOINTSRANGE")
  (make-package "HIWONDER_INTERFACES::JOINTSRANGE"))

(in-package "ROS")
;;//! \htmlinclude JointsRange.msg.html


(defclass hiwonder_interfaces::JointsRange
  :super ros::object
  :slots (_joint1 _joint2 _joint3 _joint4 _joint5 ))

(defmethod hiwonder_interfaces::JointsRange
  (:init
   (&key
    ((:joint1 __joint1) (instance hiwonder_interfaces::JointRange :init))
    ((:joint2 __joint2) (instance hiwonder_interfaces::JointRange :init))
    ((:joint3 __joint3) (instance hiwonder_interfaces::JointRange :init))
    ((:joint4 __joint4) (instance hiwonder_interfaces::JointRange :init))
    ((:joint5 __joint5) (instance hiwonder_interfaces::JointRange :init))
    )
   (send-super :init)
   (setq _joint1 __joint1)
   (setq _joint2 __joint2)
   (setq _joint3 __joint3)
   (setq _joint4 __joint4)
   (setq _joint5 __joint5)
   self)
  (:joint1
   (&rest __joint1)
   (if (keywordp (car __joint1))
       (send* _joint1 __joint1)
     (progn
       (if __joint1 (setq _joint1 (car __joint1)))
       _joint1)))
  (:joint2
   (&rest __joint2)
   (if (keywordp (car __joint2))
       (send* _joint2 __joint2)
     (progn
       (if __joint2 (setq _joint2 (car __joint2)))
       _joint2)))
  (:joint3
   (&rest __joint3)
   (if (keywordp (car __joint3))
       (send* _joint3 __joint3)
     (progn
       (if __joint3 (setq _joint3 (car __joint3)))
       _joint3)))
  (:joint4
   (&rest __joint4)
   (if (keywordp (car __joint4))
       (send* _joint4 __joint4)
     (progn
       (if __joint4 (setq _joint4 (car __joint4)))
       _joint4)))
  (:joint5
   (&rest __joint5)
   (if (keywordp (car __joint5))
       (send* _joint5 __joint5)
     (progn
       (if __joint5 (setq _joint5 (car __joint5)))
       _joint5)))
  (:serialization-length
   ()
   (+
    ;; hiwonder_interfaces/JointRange _joint1
    (send _joint1 :serialization-length)
    ;; hiwonder_interfaces/JointRange _joint2
    (send _joint2 :serialization-length)
    ;; hiwonder_interfaces/JointRange _joint3
    (send _joint3 :serialization-length)
    ;; hiwonder_interfaces/JointRange _joint4
    (send _joint4 :serialization-length)
    ;; hiwonder_interfaces/JointRange _joint5
    (send _joint5 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; hiwonder_interfaces/JointRange _joint1
       (send _joint1 :serialize s)
     ;; hiwonder_interfaces/JointRange _joint2
       (send _joint2 :serialize s)
     ;; hiwonder_interfaces/JointRange _joint3
       (send _joint3 :serialize s)
     ;; hiwonder_interfaces/JointRange _joint4
       (send _joint4 :serialize s)
     ;; hiwonder_interfaces/JointRange _joint5
       (send _joint5 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; hiwonder_interfaces/JointRange _joint1
     (send _joint1 :deserialize buf ptr-) (incf ptr- (send _joint1 :serialization-length))
   ;; hiwonder_interfaces/JointRange _joint2
     (send _joint2 :deserialize buf ptr-) (incf ptr- (send _joint2 :serialization-length))
   ;; hiwonder_interfaces/JointRange _joint3
     (send _joint3 :deserialize buf ptr-) (incf ptr- (send _joint3 :serialization-length))
   ;; hiwonder_interfaces/JointRange _joint4
     (send _joint4 :deserialize buf ptr-) (incf ptr- (send _joint4 :serialization-length))
   ;; hiwonder_interfaces/JointRange _joint5
     (send _joint5 :deserialize buf ptr-) (incf ptr- (send _joint5 :serialization-length))
   ;;
   self)
  )

(setf (get hiwonder_interfaces::JointsRange :md5sum-) "f4756b6cbfe9dd3e05100c20e0ecd197")
(setf (get hiwonder_interfaces::JointsRange :datatype-) "hiwonder_interfaces/JointsRange")
(setf (get hiwonder_interfaces::JointsRange :definition-)
      "hiwonder_interfaces/JointRange joint1
hiwonder_interfaces/JointRange joint2
hiwonder_interfaces/JointRange joint3
hiwonder_interfaces/JointRange joint4
hiwonder_interfaces/JointRange joint5

================================================================================
MSG: hiwonder_interfaces/JointRange
float64 min
float64 max

")



(provide :hiwonder_interfaces/JointsRange "f4756b6cbfe9dd3e05100c20e0ecd197")


