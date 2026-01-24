
(cl:in-package :asdf)

(defsystem "xf_mic_asr_offline-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "BuzzerState" :depends-on ("_package_BuzzerState"))
    (:file "_package_BuzzerState" :depends-on ("_package"))
  ))