;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_interfaces::Buzzer)
  (if (not (find-package "HIWONDER_INTERFACES"))
    (make-package "HIWONDER_INTERFACES"))
  (shadow 'Buzzer (find-package "HIWONDER_INTERFACES")))
(unless (find-package "HIWONDER_INTERFACES::BUZZER")
  (make-package "HIWONDER_INTERFACES::BUZZER"))

(in-package "ROS")
;;//! \htmlinclude Buzzer.msg.html


(defclass hiwonder_interfaces::Buzzer
  :super ros::object
  :slots (_freq _on_ticks _off_ticks _repeat ))

(defmethod hiwonder_interfaces::Buzzer
  (:init
   (&key
    ((:freq __freq) 0)
    ((:on_ticks __on_ticks) 0)
    ((:off_ticks __off_ticks) 0)
    ((:repeat __repeat) 0)
    )
   (send-super :init)
   (setq _freq (round __freq))
   (setq _on_ticks (round __on_ticks))
   (setq _off_ticks (round __off_ticks))
   (setq _repeat (round __repeat))
   self)
  (:freq
   (&optional __freq)
   (if __freq (setq _freq __freq)) _freq)
  (:on_ticks
   (&optional __on_ticks)
   (if __on_ticks (setq _on_ticks __on_ticks)) _on_ticks)
  (:off_ticks
   (&optional __off_ticks)
   (if __off_ticks (setq _off_ticks __off_ticks)) _off_ticks)
  (:repeat
   (&optional __repeat)
   (if __repeat (setq _repeat __repeat)) _repeat)
  (:serialization-length
   ()
   (+
    ;; uint16 _freq
    2
    ;; uint16 _on_ticks
    2
    ;; uint16 _off_ticks
    2
    ;; uint16 _repeat
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _freq
       (write-word _freq s)
     ;; uint16 _on_ticks
       (write-word _on_ticks s)
     ;; uint16 _off_ticks
       (write-word _off_ticks s)
     ;; uint16 _repeat
       (write-word _repeat s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _freq
     (setq _freq (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _on_ticks
     (setq _on_ticks (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _off_ticks
     (setq _off_ticks (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _repeat
     (setq _repeat (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get hiwonder_interfaces::Buzzer :md5sum-) "c553d26ba33d63f49b15ae65585246e6")
(setf (get hiwonder_interfaces::Buzzer :datatype-) "hiwonder_interfaces/Buzzer")
(setf (get hiwonder_interfaces::Buzzer :definition-)
      "uint16 freq           # 蜂鸣器声音频率
uint16 on_ticks       # 蜂鸣器响的时长 毫秒
uint16 off_ticks      # 蜂鸣器不响的时长 毫秒
uint16 repeat         # 蜂鸣器响与不响重复次数

")



(provide :hiwonder_interfaces/Buzzer "c553d26ba33d63f49b15ae65585246e6")


