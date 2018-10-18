;; Auto-generated. Do not edit!


(when (boundp 'robot_io::DigitalOutputUpdate)
  (if (not (find-package "ROBOT_IO"))
    (make-package "ROBOT_IO"))
  (shadow 'DigitalOutputUpdate (find-package "ROBOT_IO")))
(unless (find-package "ROBOT_IO::DIGITALOUTPUTUPDATE")
  (make-package "ROBOT_IO::DIGITALOUTPUTUPDATE"))
(unless (find-package "ROBOT_IO::DIGITALOUTPUTUPDATEREQUEST")
  (make-package "ROBOT_IO::DIGITALOUTPUTUPDATEREQUEST"))
(unless (find-package "ROBOT_IO::DIGITALOUTPUTUPDATERESPONSE")
  (make-package "ROBOT_IO::DIGITALOUTPUTUPDATERESPONSE"))

(in-package "ROS")





(intern "*COUNT*" (find-package "ROBOT_IO::DIGITALOUTPUTUPDATEREQUEST"))
(shadow '*COUNT* (find-package "ROBOT_IO::DIGITALOUTPUTUPDATEREQUEST"))
(defconstant robot_io::DigitalOutputUpdateRequest::*COUNT* 8)
(intern "*SUCTION1_ON*" (find-package "ROBOT_IO::DIGITALOUTPUTUPDATEREQUEST"))
(shadow '*SUCTION1_ON* (find-package "ROBOT_IO::DIGITALOUTPUTUPDATEREQUEST"))
(defconstant robot_io::DigitalOutputUpdateRequest::*SUCTION1_ON* 1)
(intern "*SUCTION2_ON*" (find-package "ROBOT_IO::DIGITALOUTPUTUPDATEREQUEST"))
(shadow '*SUCTION2_ON* (find-package "ROBOT_IO::DIGITALOUTPUTUPDATEREQUEST"))
(defconstant robot_io::DigitalOutputUpdateRequest::*SUCTION2_ON* 2)
(intern "*COLLISION*" (find-package "ROBOT_IO::DIGITALOUTPUTUPDATEREQUEST"))
(shadow '*COLLISION* (find-package "ROBOT_IO::DIGITALOUTPUTUPDATEREQUEST"))
(defconstant robot_io::DigitalOutputUpdateRequest::*COLLISION* 0)
(defclass robot_io::DigitalOutputUpdateRequest
  :super ros::object
  :slots (_request_type _bit_index _output_bit_state ))

(defmethod robot_io::DigitalOutputUpdateRequest
  (:init
   (&key
    ((:request_type __request_type) 0)
    ((:bit_index __bit_index) 0)
    ((:output_bit_state __output_bit_state) nil)
    )
   (send-super :init)
   (setq _request_type (round __request_type))
   (setq _bit_index (round __bit_index))
   (setq _output_bit_state __output_bit_state)
   self)
  (:request_type
   (&optional __request_type)
   (if __request_type (setq _request_type __request_type)) _request_type)
  (:bit_index
   (&optional __bit_index)
   (if __bit_index (setq _bit_index __bit_index)) _bit_index)
  (:output_bit_state
   (&optional __output_bit_state)
   (if __output_bit_state (setq _output_bit_state __output_bit_state)) _output_bit_state)
  (:serialization-length
   ()
   (+
    ;; uint32 _request_type
    4
    ;; uint32 _bit_index
    4
    ;; bool _output_bit_state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _request_type
       (write-long _request_type s)
     ;; uint32 _bit_index
       (write-long _bit_index s)
     ;; bool _output_bit_state
       (if _output_bit_state (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _request_type
     (setq _request_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _bit_index
     (setq _bit_index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _output_bit_state
     (setq _output_bit_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass robot_io::DigitalOutputUpdateResponse
  :super ros::object
  :slots (_output_bit_array ))

(defmethod robot_io::DigitalOutputUpdateResponse
  (:init
   (&key
    ((:output_bit_array __output_bit_array) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _output_bit_array __output_bit_array)
   self)
  (:output_bit_array
   (&optional __output_bit_array)
   (if __output_bit_array (setq _output_bit_array __output_bit_array)) _output_bit_array)
  (:serialization-length
   ()
   (+
    ;; bool[] _output_bit_array
    (* 1    (length _output_bit_array)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool[] _output_bit_array
     (write-long (length _output_bit_array) s)
     (dotimes (i (length _output_bit_array))
       (if (elt _output_bit_array i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool[] _output_bit_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _output_bit_array (make-list n))
     (dotimes (i n)
     (setf (elt _output_bit_array i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(defclass robot_io::DigitalOutputUpdate
  :super ros::object
  :slots ())

(setf (get robot_io::DigitalOutputUpdate :md5sum-) "5decc6a45bba41be52c4b7de53de20e7")
(setf (get robot_io::DigitalOutputUpdate :datatype-) "robot_io/DigitalOutputUpdate")
(setf (get robot_io::DigitalOutputUpdate :request) robot_io::DigitalOutputUpdateRequest)
(setf (get robot_io::DigitalOutputUpdate :response) robot_io::DigitalOutputUpdateResponse)

(defmethod robot_io::DigitalOutputUpdateRequest
  (:response () (instance robot_io::DigitalOutputUpdateResponse :init)))

(setf (get robot_io::DigitalOutputUpdateRequest :md5sum-) "5decc6a45bba41be52c4b7de53de20e7")
(setf (get robot_io::DigitalOutputUpdateRequest :datatype-) "robot_io/DigitalOutputUpdateRequest")
(setf (get robot_io::DigitalOutputUpdateRequest :definition-)
      "uint32 request_type
uint32 bit_index
bool output_bit_state

uint32 COUNT=8
uint32 SUCTION1_ON=1
uint32 SUCTION2_ON=2
uint32 COLLISION=0
---
bool[] output_bit_array

")

(setf (get robot_io::DigitalOutputUpdateResponse :md5sum-) "5decc6a45bba41be52c4b7de53de20e7")
(setf (get robot_io::DigitalOutputUpdateResponse :datatype-) "robot_io/DigitalOutputUpdateResponse")
(setf (get robot_io::DigitalOutputUpdateResponse :definition-)
      "uint32 request_type
uint32 bit_index
bool output_bit_state

uint32 COUNT=8
uint32 SUCTION1_ON=1
uint32 SUCTION2_ON=2
uint32 COLLISION=0
---
bool[] output_bit_array

")



(provide :robot_io/DigitalOutputUpdate "5decc6a45bba41be52c4b7de53de20e7")


