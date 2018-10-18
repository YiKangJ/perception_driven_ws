// Auto-generated. Do not edit!

// (in-package robot_io.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class DigitalOutputUpdateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.request_type = null;
      this.bit_index = null;
      this.output_bit_state = null;
    }
    else {
      if (initObj.hasOwnProperty('request_type')) {
        this.request_type = initObj.request_type
      }
      else {
        this.request_type = 0;
      }
      if (initObj.hasOwnProperty('bit_index')) {
        this.bit_index = initObj.bit_index
      }
      else {
        this.bit_index = 0;
      }
      if (initObj.hasOwnProperty('output_bit_state')) {
        this.output_bit_state = initObj.output_bit_state
      }
      else {
        this.output_bit_state = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DigitalOutputUpdateRequest
    // Serialize message field [request_type]
    bufferOffset = _serializer.uint32(obj.request_type, buffer, bufferOffset);
    // Serialize message field [bit_index]
    bufferOffset = _serializer.uint32(obj.bit_index, buffer, bufferOffset);
    // Serialize message field [output_bit_state]
    bufferOffset = _serializer.bool(obj.output_bit_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DigitalOutputUpdateRequest
    let len;
    let data = new DigitalOutputUpdateRequest(null);
    // Deserialize message field [request_type]
    data.request_type = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [bit_index]
    data.bit_index = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [output_bit_state]
    data.output_bit_state = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_io/DigitalOutputUpdateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd4386f6831da36b77a99649158a65fbe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 request_type
    uint32 bit_index
    bool output_bit_state
    
    uint32 COUNT=8
    uint32 SUCTION1_ON=1
    uint32 SUCTION2_ON=2
    uint32 COLLISION=0
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DigitalOutputUpdateRequest(null);
    if (msg.request_type !== undefined) {
      resolved.request_type = msg.request_type;
    }
    else {
      resolved.request_type = 0
    }

    if (msg.bit_index !== undefined) {
      resolved.bit_index = msg.bit_index;
    }
    else {
      resolved.bit_index = 0
    }

    if (msg.output_bit_state !== undefined) {
      resolved.output_bit_state = msg.output_bit_state;
    }
    else {
      resolved.output_bit_state = false
    }

    return resolved;
    }
};

// Constants for message
DigitalOutputUpdateRequest.Constants = {
  COUNT: 8,
  SUCTION1_ON: 1,
  SUCTION2_ON: 2,
  COLLISION: 0,
}

class DigitalOutputUpdateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.output_bit_array = null;
    }
    else {
      if (initObj.hasOwnProperty('output_bit_array')) {
        this.output_bit_array = initObj.output_bit_array
      }
      else {
        this.output_bit_array = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DigitalOutputUpdateResponse
    // Serialize message field [output_bit_array]
    bufferOffset = _arraySerializer.bool(obj.output_bit_array, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DigitalOutputUpdateResponse
    let len;
    let data = new DigitalOutputUpdateResponse(null);
    // Deserialize message field [output_bit_array]
    data.output_bit_array = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.output_bit_array.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'robot_io/DigitalOutputUpdateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a9f745eeeda072c6eb0e94fb9441b345';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool[] output_bit_array
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DigitalOutputUpdateResponse(null);
    if (msg.output_bit_array !== undefined) {
      resolved.output_bit_array = msg.output_bit_array;
    }
    else {
      resolved.output_bit_array = []
    }

    return resolved;
    }
};

module.exports = {
  Request: DigitalOutputUpdateRequest,
  Response: DigitalOutputUpdateResponse,
  md5sum() { return '5decc6a45bba41be52c4b7de53de20e7'; },
  datatype() { return 'robot_io/DigitalOutputUpdate'; }
};
