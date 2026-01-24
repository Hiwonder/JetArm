;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_interfaces::GraspState)
  (if (not (find-package "HIWONDER_INTERFACES"))
    (make-package "HIWONDER_INTERFACES"))
  (shadow 'GraspState (find-package "HIWONDER_INTERFACES")))
(unless (find-package "HIWONDER_INTERFACES::GRASPSTATE")
  (make-package "HIWONDER_INTERFACES::GRASPSTATE"))

(in-package "ROS")
;;//! \htmlinclude GraspState.msg.html


(defclass hiwonder_interfaces::GraspState
  :super ros::object
  :slots (_complete _grasp_posture ))

(defmethod hiwonder_interfaces::GraspState
  (:init
   (&key
    ((:complete __complete) nil)
    ((:grasp_posture __grasp_posture) (instance hiwonder_interfaces::EulerAngles :init))
    )
   (send-super :init)
   (setq _complete __complete)
   (setq _grasp_posture __grasp_posture)
   self)
  (:complete
   (&optional (__complete :null))
   (if (not (eq __complete :null)) (setq _complete __complete)) _complete)
  (:grasp_posture
   (&rest __grasp_posture)
   (if (keywordp (car __grasp_posture))
       (send* _grasp_posture __grasp_posture)
     (progn
       (if __grasp_posture (setq _grasp_posture (car __grasp_posture)))
       _grasp_posture)))
  (:serialization-length
   ()
   (+
    ;; bool _complete
    1
    ;; hiwonder_interfaces/EulerAngles _grasp_posture
    (send _grasp_posture :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _complete
       (if _complete (write-byte -1 s) (write-byte 0 s))
     ;; hiwonder_interfaces/EulerAngles _grasp_posture
       (send _grasp_posture :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _complete
     (setq _complete (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; hiwonder_interfaces/EulerAngles _grasp_posture
     (send _grasp_posture :deserialize buf ptr-) (incf ptr- (send _grasp_posture :serialization-length))
   ;;
   self)
  )

(setf (get hiwonder_interfaces::GraspState :md5sum-) "88fb84023fd99dd195825db77ccbd5b5")
(setf (get hiwonder_interfaces::GraspState :datatype-) "hiwonder_interfaces/GraspState")
(setf (get hiwonder_interfaces::GraspState :definition-)
      "bool complete
hiwonder_interfaces/EulerAngles grasp_posture

================================================================================
MSG: hiwonder_interfaces/EulerAngles
float64 r
float64 p
float64 y

")



(provide :hiwonder_interfaces/GraspState "88fb84023fd99dd195825db77ccbd5b5")


