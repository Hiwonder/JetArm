
(cl:in-package :asdf)

(defsystem "xf_mic_asr_offline-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GetOfflineResult" :depends-on ("_package_GetOfflineResult"))
    (:file "_package_GetOfflineResult" :depends-on ("_package"))
    (:file "SetString" :depends-on ("_package_SetString"))
    (:file "_package_SetString" :depends-on ("_package"))
  ))