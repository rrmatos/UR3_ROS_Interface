; Auto-generated. Do not edit!


(cl:in-package ur3-msg)


;//! \htmlinclude join4.msg.html

(cl:defclass <join4> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type cl:float
    :initform 0.0)
   (velocity
    :reader velocity
    :initarg :velocity
    :type cl:float
    :initform 0.0)
   (torque
    :reader torque
    :initarg :torque
    :type cl:float
    :initform 0.0))
)

(cl:defclass join4 (<join4>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <join4>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'join4)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ur3-msg:<join4> is deprecated: use ur3-msg:join4 instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <join4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3-msg:pose-val is deprecated.  Use ur3-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <join4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3-msg:velocity-val is deprecated.  Use ur3-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'torque-val :lambda-list '(m))
(cl:defmethod torque-val ((m <join4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ur3-msg:torque-val is deprecated.  Use ur3-msg:torque instead.")
  (torque m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <join4>) ostream)
  "Serializes a message object of type '<join4>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'torque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <join4>) istream)
  "Deserializes a message object of type '<join4>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pose) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'torque) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<join4>)))
  "Returns string type for a message object of type '<join4>"
  "ur3/join4")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'join4)))
  "Returns string type for a message object of type 'join4"
  "ur3/join4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<join4>)))
  "Returns md5sum for a message object of type '<join4>"
  "bb3e6c5bd746641b03ce50dac21c6a43")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'join4)))
  "Returns md5sum for a message object of type 'join4"
  "bb3e6c5bd746641b03ce50dac21c6a43")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<join4>)))
  "Returns full string definition for message of type '<join4>"
  (cl:format cl:nil "float32 pose~%float32 velocity~%float32 torque~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'join4)))
  "Returns full string definition for message of type 'join4"
  (cl:format cl:nil "float32 pose~%float32 velocity~%float32 torque~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <join4>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <join4>))
  "Converts a ROS message object to a list"
  (cl:list 'join4
    (cl:cons ':pose (pose msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':torque (torque msg))
))