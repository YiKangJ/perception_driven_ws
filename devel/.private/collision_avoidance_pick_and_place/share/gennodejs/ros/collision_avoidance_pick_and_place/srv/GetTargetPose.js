// Auto-generated. Do not edit!

// (in-package collision_avoidance_pick_and_place.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let shape_msgs = _finder('shape_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetTargetPoseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.world_frame_id = null;
      this.ar_tag_frame_id = null;
      this.shape = null;
      this.remove_at_poses = null;
    }
    else {
      if (initObj.hasOwnProperty('world_frame_id')) {
        this.world_frame_id = initObj.world_frame_id
      }
      else {
        this.world_frame_id = '';
      }
      if (initObj.hasOwnProperty('ar_tag_frame_id')) {
        this.ar_tag_frame_id = initObj.ar_tag_frame_id
      }
      else {
        this.ar_tag_frame_id = '';
      }
      if (initObj.hasOwnProperty('shape')) {
        this.shape = initObj.shape
      }
      else {
        this.shape = new shape_msgs.msg.SolidPrimitive();
      }
      if (initObj.hasOwnProperty('remove_at_poses')) {
        this.remove_at_poses = initObj.remove_at_poses
      }
      else {
        this.remove_at_poses = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTargetPoseRequest
    // Serialize message field [world_frame_id]
    bufferOffset = _serializer.string(obj.world_frame_id, buffer, bufferOffset);
    // Serialize message field [ar_tag_frame_id]
    bufferOffset = _serializer.string(obj.ar_tag_frame_id, buffer, bufferOffset);
    // Serialize message field [shape]
    bufferOffset = shape_msgs.msg.SolidPrimitive.serialize(obj.shape, buffer, bufferOffset);
    // Serialize message field [remove_at_poses]
    // Serialize the length for message field [remove_at_poses]
    bufferOffset = _serializer.uint32(obj.remove_at_poses.length, buffer, bufferOffset);
    obj.remove_at_poses.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTargetPoseRequest
    let len;
    let data = new GetTargetPoseRequest(null);
    // Deserialize message field [world_frame_id]
    data.world_frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ar_tag_frame_id]
    data.ar_tag_frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [shape]
    data.shape = shape_msgs.msg.SolidPrimitive.deserialize(buffer, bufferOffset);
    // Deserialize message field [remove_at_poses]
    // Deserialize array length for message field [remove_at_poses]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.remove_at_poses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.remove_at_poses[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.world_frame_id.length;
    length += object.ar_tag_frame_id.length;
    length += shape_msgs.msg.SolidPrimitive.getMessageSize(object.shape);
    length += 56 * object.remove_at_poses.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'collision_avoidance_pick_and_place/GetTargetPoseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5099dc677062eec167a647083579134e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetTargetPoseRequest(null);
    if (msg.world_frame_id !== undefined) {
      resolved.world_frame_id = msg.world_frame_id;
    }
    else {
      resolved.world_frame_id = ''
    }

    if (msg.ar_tag_frame_id !== undefined) {
      resolved.ar_tag_frame_id = msg.ar_tag_frame_id;
    }
    else {
      resolved.ar_tag_frame_id = ''
    }

    if (msg.shape !== undefined) {
      resolved.shape = shape_msgs.msg.SolidPrimitive.Resolve(msg.shape)
    }
    else {
      resolved.shape = new shape_msgs.msg.SolidPrimitive()
    }

    if (msg.remove_at_poses !== undefined) {
      resolved.remove_at_poses = new Array(msg.remove_at_poses.length);
      for (let i = 0; i < resolved.remove_at_poses.length; ++i) {
        resolved.remove_at_poses[i] = geometry_msgs.msg.Pose.Resolve(msg.remove_at_poses[i]);
      }
    }
    else {
      resolved.remove_at_poses = []
    }

    return resolved;
    }
};

class GetTargetPoseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.succeeded = null;
      this.target_pose = null;
    }
    else {
      if (initObj.hasOwnProperty('succeeded')) {
        this.succeeded = initObj.succeeded
      }
      else {
        this.succeeded = false;
      }
      if (initObj.hasOwnProperty('target_pose')) {
        this.target_pose = initObj.target_pose
      }
      else {
        this.target_pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTargetPoseResponse
    // Serialize message field [succeeded]
    bufferOffset = _serializer.bool(obj.succeeded, buffer, bufferOffset);
    // Serialize message field [target_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.target_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTargetPoseResponse
    let len;
    let data = new GetTargetPoseResponse(null);
    // Deserialize message field [succeeded]
    data.succeeded = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [target_pose]
    data.target_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 57;
  }

  static datatype() {
    // Returns string type for a service object
    return 'collision_avoidance_pick_and_place/GetTargetPoseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8dbc7fc93a942ee18835621213923b11';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetTargetPoseResponse(null);
    if (msg.succeeded !== undefined) {
      resolved.succeeded = msg.succeeded;
    }
    else {
      resolved.succeeded = false
    }

    if (msg.target_pose !== undefined) {
      resolved.target_pose = geometry_msgs.msg.Pose.Resolve(msg.target_pose)
    }
    else {
      resolved.target_pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetTargetPoseRequest,
  Response: GetTargetPoseResponse,
  md5sum() { return '465d51d8a3f39b4cd4049318ef31b315'; },
  datatype() { return 'collision_avoidance_pick_and_place/GetTargetPose'; }
};
