;; Auto-generated. Do not edit!


(when (boundp 'collision_avoidance_pick_and_place::GetTargetPose)
  (if (not (find-package "COLLISION_AVOIDANCE_PICK_AND_PLACE"))
    (make-package "COLLISION_AVOIDANCE_PICK_AND_PLACE"))
  (shadow 'GetTargetPose (find-package "COLLISION_AVOIDANCE_PICK_AND_PLACE")))
(unless (find-package "COLLISION_AVOIDANCE_PICK_AND_PLACE::GETTARGETPOSE")
  (make-package "COLLISION_AVOIDANCE_PICK_AND_PLACE::GETTARGETPOSE"))
(unless (find-package "COLLISION_AVOIDANCE_PICK_AND_PLACE::GETTARGETPOSEREQUEST")
  (make-package "COLLISION_AVOIDANCE_PICK_AND_PLACE::GETTARGETPOSEREQUEST"))
(unless (find-package "COLLISION_AVOIDANCE_PICK_AND_PLACE::GETTARGETPOSERESPONSE")
  (make-package "COLLISION_AVOIDANCE_PICK_AND_PLACE::GETTARGETPOSERESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SHAPE_MSGS"))
  (ros::roseus-add-msgs "shape_msgs"))


(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass collision_avoidance_pick_and_place::GetTargetPoseRequest
  :super ros::object
  :slots (_world_frame_id _ar_tag_frame_id _shape _remove_at_poses ))

(defmethod collision_avoidance_pick_and_place::GetTargetPoseRequest
  (:init
   (&key
    ((:world_frame_id __world_frame_id) "")
    ((:ar_tag_frame_id __ar_tag_frame_id) "")
    ((:shape __shape) (instance shape_msgs::SolidPrimitive :init))
    ((:remove_at_poses __remove_at_poses) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Pose :init) r)) r))
    )
   (send-super :init)
   (setq _world_frame_id (string __world_frame_id))
   (setq _ar_tag_frame_id (string __ar_tag_frame_id))
   (setq _shape __shape)
   (setq _remove_at_poses __remove_at_poses)
   self)
  (:world_frame_id
   (&optional __world_frame_id)
   (if __world_frame_id (setq _world_frame_id __world_frame_id)) _world_frame_id)
  (:ar_tag_frame_id
   (&optional __ar_tag_frame_id)
   (if __ar_tag_frame_id (setq _ar_tag_frame_id __ar_tag_frame_id)) _ar_tag_frame_id)
  (:shape
   (&rest __shape)
   (if (keywordp (car __shape))
       (send* _shape __shape)
     (progn
       (if __shape (setq _shape (car __shape)))
       _shape)))
  (:remove_at_poses
   (&rest __remove_at_poses)
   (if (keywordp (car __remove_at_poses))
       (send* _remove_at_poses __remove_at_poses)
     (progn
       (if __remove_at_poses (setq _remove_at_poses (car __remove_at_poses)))
       _remove_at_poses)))
  (:serialization-length
   ()
   (+
    ;; string _world_frame_id
    4 (length _world_frame_id)
    ;; string _ar_tag_frame_id
    4 (length _ar_tag_frame_id)
    ;; shape_msgs/SolidPrimitive _shape
    (send _shape :serialization-length)
    ;; geometry_msgs/Pose[] _remove_at_poses
    (apply #'+ (send-all _remove_at_poses :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _world_frame_id
       (write-long (length _world_frame_id) s) (princ _world_frame_id s)
     ;; string _ar_tag_frame_id
       (write-long (length _ar_tag_frame_id) s) (princ _ar_tag_frame_id s)
     ;; shape_msgs/SolidPrimitive _shape
       (send _shape :serialize s)
     ;; geometry_msgs/Pose[] _remove_at_poses
     (write-long (length _remove_at_poses) s)
     (dolist (elem _remove_at_poses)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _world_frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _world_frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _ar_tag_frame_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ar_tag_frame_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; shape_msgs/SolidPrimitive _shape
     (send _shape :deserialize buf ptr-) (incf ptr- (send _shape :serialization-length))
   ;; geometry_msgs/Pose[] _remove_at_poses
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _remove_at_poses (let (r) (dotimes (i n) (push (instance geometry_msgs::Pose :init) r)) r))
     (dolist (elem- _remove_at_poses)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass collision_avoidance_pick_and_place::GetTargetPoseResponse
  :super ros::object
  :slots (_succeeded _target_pose ))

(defmethod collision_avoidance_pick_and_place::GetTargetPoseResponse
  (:init
   (&key
    ((:succeeded __succeeded) nil)
    ((:target_pose __target_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _succeeded __succeeded)
   (setq _target_pose __target_pose)
   self)
  (:succeeded
   (&optional __succeeded)
   (if __succeeded (setq _succeeded __succeeded)) _succeeded)
  (:target_pose
   (&rest __target_pose)
   (if (keywordp (car __target_pose))
       (send* _target_pose __target_pose)
     (progn
       (if __target_pose (setq _target_pose (car __target_pose)))
       _target_pose)))
  (:serialization-length
   ()
   (+
    ;; bool _succeeded
    1
    ;; geometry_msgs/Pose _target_pose
    (send _target_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _succeeded
       (if _succeeded (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Pose _target_pose
       (send _target_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _succeeded
     (setq _succeeded (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Pose _target_pose
     (send _target_pose :deserialize buf ptr-) (incf ptr- (send _target_pose :serialization-length))
   ;;
   self)
  )

(defclass collision_avoidance_pick_and_place::GetTargetPose
  :super ros::object
  :slots ())

(setf (get collision_avoidance_pick_and_place::GetTargetPose :md5sum-) "465d51d8a3f39b4cd4049318ef31b315")
(setf (get collision_avoidance_pick_and_place::GetTargetPose :datatype-) "collision_avoidance_pick_and_place/GetTargetPose")
(setf (get collision_avoidance_pick_and_place::GetTargetPose :request) collision_avoidance_pick_and_place::GetTargetPoseRequest)
(setf (get collision_avoidance_pick_and_place::GetTargetPose :response) collision_avoidance_pick_and_place::GetTargetPoseResponse)

(defmethod collision_avoidance_pick_and_place::GetTargetPoseRequest
  (:response () (instance collision_avoidance_pick_and_place::GetTargetPoseResponse :init)))

(setf (get collision_avoidance_pick_and_place::GetTargetPoseRequest :md5sum-) "465d51d8a3f39b4cd4049318ef31b315")
(setf (get collision_avoidance_pick_and_place::GetTargetPoseRequest :datatype-) "collision_avoidance_pick_and_place/GetTargetPoseRequest")
(setf (get collision_avoidance_pick_and_place::GetTargetPoseRequest :definition-)
      "
string world_frame_id
string ar_tag_frame_id
shape_msgs/SolidPrimitive shape
geometry_msgs/Pose[] remove_at_poses

================================================================================
MSG: shape_msgs/SolidPrimitive
# Define box, sphere, cylinder, cone 
# All shapes are defined to have their bounding boxes centered around 0,0,0.

uint8 BOX=1
uint8 SPHERE=2
uint8 CYLINDER=3
uint8 CONE=4

# The type of the shape
uint8 type


# The dimensions of the shape
float64[] dimensions

# The meaning of the shape dimensions: each constant defines the index in the 'dimensions' array

# For the BOX type, the X, Y, and Z dimensions are the length of the corresponding
# sides of the box.
uint8 BOX_X=0
uint8 BOX_Y=1
uint8 BOX_Z=2


# For the SPHERE type, only one component is used, and it gives the radius of
# the sphere.
uint8 SPHERE_RADIUS=0


# For the CYLINDER and CONE types, the center line is oriented along
# the Z axis.  Therefore the CYLINDER_HEIGHT (CONE_HEIGHT) component
# of dimensions gives the height of the cylinder (cone).  The
# CYLINDER_RADIUS (CONE_RADIUS) component of dimensions gives the
# radius of the base of the cylinder (cone).  Cone and cylinder
# primitives are defined to be circular. The tip of the cone is
# pointing up, along +Z axis.

uint8 CYLINDER_HEIGHT=0
uint8 CYLINDER_RADIUS=1

uint8 CONE_HEIGHT=0
uint8 CONE_RADIUS=1

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---

bool succeeded
geometry_msgs/Pose target_pose



================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")

(setf (get collision_avoidance_pick_and_place::GetTargetPoseResponse :md5sum-) "465d51d8a3f39b4cd4049318ef31b315")
(setf (get collision_avoidance_pick_and_place::GetTargetPoseResponse :datatype-) "collision_avoidance_pick_and_place/GetTargetPoseResponse")
(setf (get collision_avoidance_pick_and_place::GetTargetPoseResponse :definition-)
      "
string world_frame_id
string ar_tag_frame_id
shape_msgs/SolidPrimitive shape
geometry_msgs/Pose[] remove_at_poses

================================================================================
MSG: shape_msgs/SolidPrimitive
# Define box, sphere, cylinder, cone 
# All shapes are defined to have their bounding boxes centered around 0,0,0.

uint8 BOX=1
uint8 SPHERE=2
uint8 CYLINDER=3
uint8 CONE=4

# The type of the shape
uint8 type


# The dimensions of the shape
float64[] dimensions

# The meaning of the shape dimensions: each constant defines the index in the 'dimensions' array

# For the BOX type, the X, Y, and Z dimensions are the length of the corresponding
# sides of the box.
uint8 BOX_X=0
uint8 BOX_Y=1
uint8 BOX_Z=2


# For the SPHERE type, only one component is used, and it gives the radius of
# the sphere.
uint8 SPHERE_RADIUS=0


# For the CYLINDER and CONE types, the center line is oriented along
# the Z axis.  Therefore the CYLINDER_HEIGHT (CONE_HEIGHT) component
# of dimensions gives the height of the cylinder (cone).  The
# CYLINDER_RADIUS (CONE_RADIUS) component of dimensions gives the
# radius of the base of the cylinder (cone).  Cone and cylinder
# primitives are defined to be circular. The tip of the cone is
# pointing up, along +Z axis.

uint8 CYLINDER_HEIGHT=0
uint8 CYLINDER_RADIUS=1

uint8 CONE_HEIGHT=0
uint8 CONE_RADIUS=1

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---

bool succeeded
geometry_msgs/Pose target_pose



================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
")



(provide :collision_avoidance_pick_and_place/GetTargetPose "465d51d8a3f39b4cd4049318ef31b315")


