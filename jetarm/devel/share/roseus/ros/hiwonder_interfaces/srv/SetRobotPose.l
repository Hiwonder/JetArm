;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_interfaces::SetRobotPose)
  (if (not (find-package "HIWONDER_INTERFACES"))
    (make-package "HIWONDER_INTERFACES"))
  (shadow 'SetRobotPose (find-package "HIWONDER_INTERFACES")))
(unless (find-package "HIWONDER_INTERFACES::SETROBOTPOSE")
  (make-package "HIWONDER_INTERFACES::SETROBOTPOSE"))
(unless (find-package "HIWONDER_INTERFACES::SETROBOTPOSEREQUEST")
  (make-package "HIWONDER_INTERFACES::SETROBOTPOSEREQUEST"))
(unless (find-package "HIWONDER_INTERFACES::SETROBOTPOSERESPONSE")
  (make-package "HIWONDER_INTERFACES::SETROBOTPOSERESPONSE"))

(in-package "ROS")





(defclass hiwonder_interfaces::SetRobotPoseRequest
  :super ros::object
  :slots (_position _pitch _pitch_range _resolution ))

(defmethod hiwonder_interfaces::SetRobotPoseRequest
  (:init
   (&key
    ((:position __position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:pitch __pitch) 0.0)
    ((:pitch_range __pitch_range) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:resolution __resolution) 0.0)
    )
   (send-super :init)
   (setq _position __position)
   (setq _pitch (float __pitch))
   (setq _pitch_range __pitch_range)
   (setq _resolution (float __resolution))
   self)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:pitch_range
   (&optional __pitch_range)
   (if __pitch_range (setq _pitch_range __pitch_range)) _pitch_range)
  (:resolution
   (&optional __resolution)
   (if __resolution (setq _resolution __resolution)) _resolution)
  (:serialization-length
   ()
   (+
    ;; float64[] _position
    (* 8    (length _position)) 4
    ;; float64 _pitch
    8
    ;; float64[] _pitch_range
    (* 8    (length _pitch_range)) 4
    ;; float64 _resolution
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _position
     (write-long (length _position) s)
     (dotimes (i (length _position))
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _pitch_range
     (write-long (length _pitch_range) s)
     (dotimes (i (length _pitch_range))
       (sys::poke (elt _pitch_range i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _resolution
       (sys::poke _resolution (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _pitch_range
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pitch_range (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pitch_range i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _resolution
     (setq _resolution (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass hiwonder_interfaces::SetRobotPoseResponse
  :super ros::object
  :slots (_success _pulse _current_pulse _rpy _min_variation ))

(defmethod hiwonder_interfaces::SetRobotPoseResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:pulse __pulse) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:current_pulse __current_pulse) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:rpy __rpy) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:min_variation __min_variation) 0.0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _pulse __pulse)
   (setq _current_pulse __current_pulse)
   (setq _rpy __rpy)
   (setq _min_variation (float __min_variation))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:pulse
   (&optional __pulse)
   (if __pulse (setq _pulse __pulse)) _pulse)
  (:current_pulse
   (&optional __current_pulse)
   (if __current_pulse (setq _current_pulse __current_pulse)) _current_pulse)
  (:rpy
   (&optional __rpy)
   (if __rpy (setq _rpy __rpy)) _rpy)
  (:min_variation
   (&optional __min_variation)
   (if __min_variation (setq _min_variation __min_variation)) _min_variation)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; float64[] _pulse
    (* 8    (length _pulse)) 4
    ;; float64[] _current_pulse
    (* 8    (length _current_pulse)) 4
    ;; float64[] _rpy
    (* 8    (length _rpy)) 4
    ;; float64 _min_variation
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; float64[] _pulse
     (write-long (length _pulse) s)
     (dotimes (i (length _pulse))
       (sys::poke (elt _pulse i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _current_pulse
     (write-long (length _current_pulse) s)
     (dotimes (i (length _current_pulse))
       (sys::poke (elt _current_pulse i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _rpy
     (write-long (length _rpy) s)
     (dotimes (i (length _rpy))
       (sys::poke (elt _rpy i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _min_variation
       (sys::poke _min_variation (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64[] _pulse
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pulse (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _pulse i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _current_pulse
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _current_pulse (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _current_pulse i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _rpy
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rpy (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _rpy i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _min_variation
     (setq _min_variation (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass hiwonder_interfaces::SetRobotPose
  :super ros::object
  :slots ())

(setf (get hiwonder_interfaces::SetRobotPose :md5sum-) "f7572839eb043d212b753d92bfaef663")
(setf (get hiwonder_interfaces::SetRobotPose :datatype-) "hiwonder_interfaces/SetRobotPose")
(setf (get hiwonder_interfaces::SetRobotPose :request) hiwonder_interfaces::SetRobotPoseRequest)
(setf (get hiwonder_interfaces::SetRobotPose :response) hiwonder_interfaces::SetRobotPoseResponse)

(defmethod hiwonder_interfaces::SetRobotPoseRequest
  (:response () (instance hiwonder_interfaces::SetRobotPoseResponse :init)))

(setf (get hiwonder_interfaces::SetRobotPoseRequest :md5sum-) "f7572839eb043d212b753d92bfaef663")
(setf (get hiwonder_interfaces::SetRobotPoseRequest :datatype-) "hiwonder_interfaces/SetRobotPoseRequest")
(setf (get hiwonder_interfaces::SetRobotPoseRequest :definition-)
      "float64[] position
float64 pitch
float64[] pitch_range 
float64 resolution
---
bool success
float64[] pulse
float64[] current_pulse
float64[] rpy
float64 min_variation

")

(setf (get hiwonder_interfaces::SetRobotPoseResponse :md5sum-) "f7572839eb043d212b753d92bfaef663")
(setf (get hiwonder_interfaces::SetRobotPoseResponse :datatype-) "hiwonder_interfaces/SetRobotPoseResponse")
(setf (get hiwonder_interfaces::SetRobotPoseResponse :definition-)
      "float64[] position
float64 pitch
float64[] pitch_range 
float64 resolution
---
bool success
float64[] pulse
float64[] current_pulse
float64[] rpy
float64 min_variation

")



(provide :hiwonder_interfaces/SetRobotPose "f7572839eb043d212b753d92bfaef663")


