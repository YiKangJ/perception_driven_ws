// Auto-generated. Do not edit!

// (in-package object_manipulation_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GraspHandPostureExecutionActionGoal = require('./GraspHandPostureExecutionActionGoal.js');
let GraspHandPostureExecutionActionResult = require('./GraspHandPostureExecutionActionResult.js');
let GraspHandPostureExecutionActionFeedback = require('./GraspHandPostureExecutionActionFeedback.js');

//-----------------------------------------------------------

class GraspHandPostureExecutionAction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action_goal = null;
      this.action_result = null;
      this.action_feedback = null;
    }
    else {
      if (initObj.hasOwnProperty('action_goal')) {
        this.action_goal = initObj.action_goal
      }
      else {
        this.action_goal = new GraspHandPostureExecutionActionGoal();
      }
      if (initObj.hasOwnProperty('action_result')) {
        this.action_result = initObj.action_result
      }
      else {
        this.action_result = new GraspHandPostureExecutionActionResult();
      }
      if (initObj.hasOwnProperty('action_feedback')) {
        this.action_feedback = initObj.action_feedback
      }
      else {
        this.action_feedback = new GraspHandPostureExecutionActionFeedback();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GraspHandPostureExecutionAction
    // Serialize message field [action_goal]
    bufferOffset = GraspHandPostureExecutionActionGoal.serialize(obj.action_goal, buffer, bufferOffset);
    // Serialize message field [action_result]
    bufferOffset = GraspHandPostureExecutionActionResult.serialize(obj.action_result, buffer, bufferOffset);
    // Serialize message field [action_feedback]
    bufferOffset = GraspHandPostureExecutionActionFeedback.serialize(obj.action_feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GraspHandPostureExecutionAction
    let len;
    let data = new GraspHandPostureExecutionAction(null);
    // Deserialize message field [action_goal]
    data.action_goal = GraspHandPostureExecutionActionGoal.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_result]
    data.action_result = GraspHandPostureExecutionActionResult.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_feedback]
    data.action_feedback = GraspHandPostureExecutionActionFeedback.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += GraspHandPostureExecutionActionGoal.getMessageSize(object.action_goal);
    length += GraspHandPostureExecutionActionResult.getMessageSize(object.action_result);
    length += GraspHandPostureExecutionActionFeedback.getMessageSize(object.action_feedback);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'object_manipulation_msgs/GraspHandPostureExecutionAction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ce7f0e50f3ee13e183420cd4d5559794';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    GraspHandPostureExecutionActionGoal action_goal
    GraspHandPostureExecutionActionResult action_result
    GraspHandPostureExecutionActionFeedback action_feedback
    
    ================================================================================
    MSG: object_manipulation_msgs/GraspHandPostureExecutionActionGoal
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalID goal_id
    GraspHandPostureExecutionGoal goal
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: actionlib_msgs/GoalID
    # The stamp should store the time at which this goal was requested.
    # It is used by an action server when it tries to preempt all
    # goals that were requested before a certain time
    time stamp
    
    # The id provides a way to associate feedback and
    # result message with specific goal requests. The id
    # specified must be unique.
    string id
    
    
    ================================================================================
    MSG: object_manipulation_msgs/GraspHandPostureExecutionGoal
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # an action for requesting the finger posture part of grasp be physically carried out by a hand
    # the name of the arm being used is not in here, as this will be sent to a specific action server
    # for each arm
    
    # the grasp to be executed
    manipulation_msgs/Grasp grasp
    
    # the goal of this action
    # requests that the hand be set in the pre-grasp posture
    int32 PRE_GRASP=1
    # requests that the hand execute the actual grasp
    int32 GRASP=2
    # requests that the hand open to release the object
    int32 RELEASE=3
    int32 goal
    
    # the max contact force to use (<=0 if no desired max)
    float32 max_contact_force
    
    
    ================================================================================
    MSG: manipulation_msgs/Grasp
    # A name for this grasp
    string id
    
    # The internal posture of the hand for the pre-grasp
    # only positions are used
    sensor_msgs/JointState pre_grasp_posture
    
    # The internal posture of the hand for the grasp
    # positions and efforts are used
    sensor_msgs/JointState grasp_posture
    
    # The position of the end-effector for the grasp 
    geometry_msgs/PoseStamped grasp_pose
    
    # The estimated probability of success for this grasp, or some other
    # measure of how "good" it is.
    float64 grasp_quality
    
    # The approach motion
    GripperTranslation approach
    
    # The retreat motion
    GripperTranslation retreat
    
    # the maximum contact force to use while grasping (<=0 to disable)
    float32 max_contact_force
    
    # an optional list of obstacles that we have semantic information about
    # and that can be touched/pushed/moved in the course of grasping
    string[] allowed_touch_objects
    
    ================================================================================
    MSG: sensor_msgs/JointState
    # This is a message that holds data to describe the state of a set of torque controlled joints. 
    #
    # The state of each joint (revolute or prismatic) is defined by:
    #  * the position of the joint (rad or m),
    #  * the velocity of the joint (rad/s or m/s) and 
    #  * the effort that is applied in the joint (Nm or N).
    #
    # Each joint is uniquely identified by its name
    # The header specifies the time at which the joint states were recorded. All the joint states
    # in one message have to be recorded at the same time.
    #
    # This message consists of a multiple arrays, one for each part of the joint state. 
    # The goal is to make each of the fields optional. When e.g. your joints have no
    # effort associated with them, you can leave the effort array empty. 
    #
    # All arrays in this message should have the same size, or be empty.
    # This is the only way to uniquely associate the joint name with the correct
    # states.
    
    
    Header header
    
    string[] name
    float64[] position
    float64[] velocity
    float64[] effort
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    
    ================================================================================
    MSG: manipulation_msgs/GripperTranslation
    # defines a translation for the gripper, used in pickup or place tasks
    # for example for lifting an object off a table or approaching the table for placing
    
    # the direction of the translation
    geometry_msgs/Vector3Stamped direction
    
    # the desired translation distance
    float32 desired_distance
    
    # the min distance that must be considered feasible before the
    # grasp is even attempted
    float32 min_distance
    
    ================================================================================
    MSG: geometry_msgs/Vector3Stamped
    # This represents a Vector3 with reference coordinate frame and timestamp
    Header header
    Vector3 vector
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: object_manipulation_msgs/GraspHandPostureExecutionActionResult
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalStatus status
    GraspHandPostureExecutionResult result
    
    ================================================================================
    MSG: actionlib_msgs/GoalStatus
    GoalID goal_id
    uint8 status
    uint8 PENDING         = 0   # The goal has yet to be processed by the action server
    uint8 ACTIVE          = 1   # The goal is currently being processed by the action server
    uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing
                                #   and has since completed its execution (Terminal State)
    uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)
    uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due
                                #    to some failure (Terminal State)
    uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,
                                #    because the goal was unattainable or invalid (Terminal State)
    uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing
                                #    and has not yet completed execution
    uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,
                                #    but the action server has not yet confirmed that the goal is canceled
    uint8 RECALLED        = 8   # The goal received a cancel request before it started executing
                                #    and was successfully cancelled (Terminal State)
    uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be
                                #    sent over the wire by an action server
    
    #Allow for the user to associate a string with GoalStatus for debugging
    string text
    
    
    ================================================================================
    MSG: object_manipulation_msgs/GraspHandPostureExecutionResult
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # the result of the action
    ManipulationResult result
    
    
    ================================================================================
    MSG: object_manipulation_msgs/ManipulationResult
    # Result codes for manipulation tasks
    
    # task completed as expected
    # generally means you can proceed as planned
    int32 SUCCESS = 1
    
    # task not possible (e.g. out of reach or obstacles in the way)
    # generally means that the world was not disturbed, so you can try another task
    int32 UNFEASIBLE = -1
    
    # task was thought possible, but failed due to unexpected events during execution
    # it is likely that the world was disturbed, so you are encouraged to refresh
    # your sensed world model before proceeding to another task
    int32 FAILED = -2
    
    # a lower level error prevented task completion (e.g. joint controller not responding)
    # generally requires human attention
    int32 ERROR = -3
    
    # means that at some point during execution we ended up in a state that the collision-aware
    # arm navigation module will not move out of. The world was likely not disturbed, but you 
    # probably need a new collision map to move the arm out of the stuck position
    int32 ARM_MOVEMENT_PREVENTED = -4
    
    # specific to grasp actions
    # the object was grasped successfully, but the lift attempt could not achieve the minimum lift distance requested
    # it is likely that the collision environment will see collisions between the hand/object and the support surface
    int32 LIFT_FAILED = -5
    
    # specific to place actions
    # the object was placed successfully, but the retreat attempt could not achieve the minimum retreat distance requested
    # it is likely that the collision environment will see collisions between the hand and the object
    int32 RETREAT_FAILED = -6
    
    # indicates that somewhere along the line a human said "wait, stop, this is bad, go back and do something else"
    int32 CANCELLED = -7
    
    # the actual value of this error code
    int32 value
    
    ================================================================================
    MSG: object_manipulation_msgs/GraspHandPostureExecutionActionFeedback
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    
    Header header
    actionlib_msgs/GoalStatus status
    GraspHandPostureExecutionFeedback feedback
    
    ================================================================================
    MSG: object_manipulation_msgs/GraspHandPostureExecutionFeedback
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # empty for now
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GraspHandPostureExecutionAction(null);
    if (msg.action_goal !== undefined) {
      resolved.action_goal = GraspHandPostureExecutionActionGoal.Resolve(msg.action_goal)
    }
    else {
      resolved.action_goal = new GraspHandPostureExecutionActionGoal()
    }

    if (msg.action_result !== undefined) {
      resolved.action_result = GraspHandPostureExecutionActionResult.Resolve(msg.action_result)
    }
    else {
      resolved.action_result = new GraspHandPostureExecutionActionResult()
    }

    if (msg.action_feedback !== undefined) {
      resolved.action_feedback = GraspHandPostureExecutionActionFeedback.Resolve(msg.action_feedback)
    }
    else {
      resolved.action_feedback = new GraspHandPostureExecutionActionFeedback()
    }

    return resolved;
    }
};

module.exports = GraspHandPostureExecutionAction;
