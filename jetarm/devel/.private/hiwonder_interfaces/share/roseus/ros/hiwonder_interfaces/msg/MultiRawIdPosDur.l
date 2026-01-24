;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_interfaces::MultiRawIdPosDur)
  (if (not (find-package "HIWONDER_INTERFACES"))
    (make-package "HIWONDER_INTERFACES"))
  (shadow 'MultiRawIdPosDur (find-package "HIWONDER_INTERFACES")))
(unless (find-package "HIWONDER_INTERFACES::MULTIRAWIDPOSDUR")
  (make-package "HIWONDER_INTERFACES::MULTIRAWIDPOSDUR"))

(in-package "ROS")
;;//! \htmlinclude MultiRawIdPosDur.msg.html


(defclass hiwonder_interfaces::MultiRawIdPosDur
  :super ros::object
  :slots (_id_pos_dur_list ))

(defmethod hiwonder_interfaces::MultiRawIdPosDur
  (:init
   (&key
    ((:id_pos_dur_list __id_pos_dur_list) ())
    )
   (send-super :init)
   (setq _id_pos_dur_list __id_pos_dur_list)
   self)
  (:id_pos_dur_list
   (&rest __id_pos_dur_list)
   (if (keywordp (car __id_pos_dur_list))
       (send* _id_pos_dur_list __id_pos_dur_list)
     (progn
       (if __id_pos_dur_list (setq _id_pos_dur_list (car __id_pos_dur_list)))
       _id_pos_dur_list)))
  (:serialization-length
   ()
   (+
    ;; hiwonder_interfaces/RawIdPosDur[] _id_pos_dur_list
    (apply #'+ (send-all _id_pos_dur_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; hiwonder_interfaces/RawIdPosDur[] _id_pos_dur_list
     (write-long (length _id_pos_dur_list) s)
     (dolist (elem _id_pos_dur_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; hiwonder_interfaces/RawIdPosDur[] _id_pos_dur_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _id_pos_dur_list (let (r) (dotimes (i n) (push (instance hiwonder_interfaces::RawIdPosDur :init) r)) r))
     (dolist (elem- _id_pos_dur_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get hiwonder_interfaces::MultiRawIdPosDur :md5sum-) "219f46020f0bb7e7755eb26cd4b971ed")
(setf (get hiwonder_interfaces::MultiRawIdPosDur :datatype-) "hiwonder_interfaces/MultiRawIdPosDur")
(setf (get hiwonder_interfaces::MultiRawIdPosDur :definition-)
      "RawIdPosDur[] id_pos_dur_list
================================================================================
MSG: hiwonder_interfaces/RawIdPosDur
uint8 id
uint16 position
uint16 duration

")



(provide :hiwonder_interfaces/MultiRawIdPosDur "219f46020f0bb7e7755eb26cd4b971ed")


