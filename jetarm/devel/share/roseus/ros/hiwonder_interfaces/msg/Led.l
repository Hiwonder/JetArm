;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_interfaces::Led)
  (if (not (find-package "HIWONDER_INTERFACES"))
    (make-package "HIWONDER_INTERFACES"))
  (shadow 'Led (find-package "HIWONDER_INTERFACES")))
(unless (find-package "HIWONDER_INTERFACES::LED")
  (make-package "HIWONDER_INTERFACES::LED"))

(in-package "ROS")
;;//! \htmlinclude Led.msg.html


(defclass hiwonder_interfaces::Led
  :super ros::object
  :slots (_brightness _on_ticks _off_ticks _repeat ))

(defmethod hiwonder_interfaces::Led
  (:init
   (&key
    ((:brightness __brightness) 0)
    ((:on_ticks __on_ticks) 0)
    ((:off_ticks __off_ticks) 0)
    ((:repeat __repeat) 0)
    )
   (send-super :init)
   (setq _brightness (round __brightness))
   (setq _on_ticks (round __on_ticks))
   (setq _off_ticks (round __off_ticks))
   (setq _repeat (round __repeat))
   self)
  (:brightness
   (&optional __brightness)
   (if __brightness (setq _brightness __brightness)) _brightness)
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
    ;; uint8 _brightness
    1
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
     ;; uint8 _brightness
       (write-byte _brightness s)
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
   ;; uint8 _brightness
     (setq _brightness (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _on_ticks
     (setq _on_ticks (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _off_ticks
     (setq _off_ticks (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _repeat
     (setq _repeat (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get hiwonder_interfaces::Led :md5sum-) "9d75341b887ccec081eae7150fd4708f")
(setf (get hiwonder_interfaces::Led :datatype-) "hiwonder_interfaces/Led")
(setf (get hiwonder_interfaces::Led :definition-)
      "uint8  brightness     # LED灯亮度
uint16 on_ticks       # LED亮起的时长 毫秒
uint16 off_ticks      # LED熄灭的时长 毫秒
uint16 repeat         # LED灯闪烁的重复次数

")



(provide :hiwonder_interfaces/Led "9d75341b887ccec081eae7150fd4708f")


