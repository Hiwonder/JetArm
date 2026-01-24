;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_interfaces::Link)
  (if (not (find-package "HIWONDER_INTERFACES"))
    (make-package "HIWONDER_INTERFACES"))
  (shadow 'Link (find-package "HIWONDER_INTERFACES")))
(unless (find-package "HIWONDER_INTERFACES::LINK")
  (make-package "HIWONDER_INTERFACES::LINK"))

(in-package "ROS")
;;//! \htmlinclude Link.msg.html


(defclass hiwonder_interfaces::Link
  :super ros::object
  :slots (_base_link _link1 _link2 _link3 _end_effector_link ))

(defmethod hiwonder_interfaces::Link
  (:init
   (&key
    ((:base_link __base_link) 0.0)
    ((:link1 __link1) 0.0)
    ((:link2 __link2) 0.0)
    ((:link3 __link3) 0.0)
    ((:end_effector_link __end_effector_link) 0.0)
    )
   (send-super :init)
   (setq _base_link (float __base_link))
   (setq _link1 (float __link1))
   (setq _link2 (float __link2))
   (setq _link3 (float __link3))
   (setq _end_effector_link (float __end_effector_link))
   self)
  (:base_link
   (&optional __base_link)
   (if __base_link (setq _base_link __base_link)) _base_link)
  (:link1
   (&optional __link1)
   (if __link1 (setq _link1 __link1)) _link1)
  (:link2
   (&optional __link2)
   (if __link2 (setq _link2 __link2)) _link2)
  (:link3
   (&optional __link3)
   (if __link3 (setq _link3 __link3)) _link3)
  (:end_effector_link
   (&optional __end_effector_link)
   (if __end_effector_link (setq _end_effector_link __end_effector_link)) _end_effector_link)
  (:serialization-length
   ()
   (+
    ;; float64 _base_link
    8
    ;; float64 _link1
    8
    ;; float64 _link2
    8
    ;; float64 _link3
    8
    ;; float64 _end_effector_link
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _base_link
       (sys::poke _base_link (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _link1
       (sys::poke _link1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _link2
       (sys::poke _link2 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _link3
       (sys::poke _link3 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _end_effector_link
       (sys::poke _end_effector_link (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _base_link
     (setq _base_link (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _link1
     (setq _link1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _link2
     (setq _link2 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _link3
     (setq _link3 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _end_effector_link
     (setq _end_effector_link (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get hiwonder_interfaces::Link :md5sum-) "ee67099c892ac23d92388e7b3fe65a55")
(setf (get hiwonder_interfaces::Link :datatype-) "hiwonder_interfaces/Link")
(setf (get hiwonder_interfaces::Link :definition-)
      "float64 base_link
float64 link1
float64 link2
float64 link3
float64 end_effector_link

")



(provide :hiwonder_interfaces/Link "ee67099c892ac23d92388e7b3fe65a55")


