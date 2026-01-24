;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_interfaces::SerialServoBool)
  (if (not (find-package "HIWONDER_INTERFACES"))
    (make-package "HIWONDER_INTERFACES"))
  (shadow 'SerialServoBool (find-package "HIWONDER_INTERFACES")))
(unless (find-package "HIWONDER_INTERFACES::SERIALSERVOBOOL")
  (make-package "HIWONDER_INTERFACES::SERIALSERVOBOOL"))

(in-package "ROS")
;;//! \htmlinclude SerialServoBool.msg.html


(defclass hiwonder_interfaces::SerialServoBool
  :super ros::object
  :slots (_servo_id _state ))

(defmethod hiwonder_interfaces::SerialServoBool
  (:init
   (&key
    ((:servo_id __servo_id) 0)
    ((:state __state) nil)
    )
   (send-super :init)
   (setq _servo_id (round __servo_id))
   (setq _state __state)
   self)
  (:servo_id
   (&optional __servo_id)
   (if __servo_id (setq _servo_id __servo_id)) _servo_id)
  (:state
   (&optional (__state :null))
   (if (not (eq __state :null)) (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _servo_id
    1
    ;; bool _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _servo_id
       (write-byte _servo_id s)
     ;; bool _state
       (if _state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _servo_id
     (setq _servo_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _state
     (setq _state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get hiwonder_interfaces::SerialServoBool :md5sum-) "d73ace136d2944106a7cfcfd261a5b9a")
(setf (get hiwonder_interfaces::SerialServoBool :datatype-) "hiwonder_interfaces/SerialServoBool")
(setf (get hiwonder_interfaces::SerialServoBool :definition-)
      "uint8 servo_id
bool  state

")



(provide :hiwonder_interfaces/SerialServoBool "d73ace136d2944106a7cfcfd261a5b9a")


