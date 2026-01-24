// Auto-generated. Do not edit!

// (in-package hiwonder_interfaces.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetRobotPoseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.position = null;
      this.pitch = null;
      this.pitch_range = null;
      this.resolution = null;
    }
    else {
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = [];
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('pitch_range')) {
        this.pitch_range = initObj.pitch_range
      }
      else {
        this.pitch_range = [];
      }
      if (initObj.hasOwnProperty('resolution')) {
        this.resolution = initObj.resolution
      }
      else {
        this.resolution = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetRobotPoseRequest
    // Serialize message field [position]
    bufferOffset = _arraySerializer.float64(obj.position, buffer, bufferOffset, null);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float64(obj.pitch, buffer, bufferOffset);
    // Serialize message field [pitch_range]
    bufferOffset = _arraySerializer.float64(obj.pitch_range, buffer, bufferOffset, null);
    // Serialize message field [resolution]
    bufferOffset = _serializer.float64(obj.resolution, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetRobotPoseRequest
    let len;
    let data = new SetRobotPoseRequest(null);
    // Deserialize message field [position]
    data.position = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch_range]
    data.pitch_range = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [resolution]
    data.resolution = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.position.length;
    length += 8 * object.pitch_range.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hiwonder_interfaces/SetRobotPoseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '25a183f489ac68e41350904c1c9f5c0c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] position
    float64 pitch
    float64[] pitch_range 
    float64 resolution
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetRobotPoseRequest(null);
    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = []
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.pitch_range !== undefined) {
      resolved.pitch_range = msg.pitch_range;
    }
    else {
      resolved.pitch_range = []
    }

    if (msg.resolution !== undefined) {
      resolved.resolution = msg.resolution;
    }
    else {
      resolved.resolution = 0.0
    }

    return resolved;
    }
};

class SetRobotPoseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.pulse = null;
      this.current_pulse = null;
      this.rpy = null;
      this.min_variation = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('pulse')) {
        this.pulse = initObj.pulse
      }
      else {
        this.pulse = [];
      }
      if (initObj.hasOwnProperty('current_pulse')) {
        this.current_pulse = initObj.current_pulse
      }
      else {
        this.current_pulse = [];
      }
      if (initObj.hasOwnProperty('rpy')) {
        this.rpy = initObj.rpy
      }
      else {
        this.rpy = [];
      }
      if (initObj.hasOwnProperty('min_variation')) {
        this.min_variation = initObj.min_variation
      }
      else {
        this.min_variation = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetRobotPoseResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [pulse]
    bufferOffset = _arraySerializer.float64(obj.pulse, buffer, bufferOffset, null);
    // Serialize message field [current_pulse]
    bufferOffset = _arraySerializer.float64(obj.current_pulse, buffer, bufferOffset, null);
    // Serialize message field [rpy]
    bufferOffset = _arraySerializer.float64(obj.rpy, buffer, bufferOffset, null);
    // Serialize message field [min_variation]
    bufferOffset = _serializer.float64(obj.min_variation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetRobotPoseResponse
    let len;
    let data = new SetRobotPoseResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pulse]
    data.pulse = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [current_pulse]
    data.current_pulse = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [rpy]
    data.rpy = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [min_variation]
    data.min_variation = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.pulse.length;
    length += 8 * object.current_pulse.length;
    length += 8 * object.rpy.length;
    return length + 21;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hiwonder_interfaces/SetRobotPoseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c52778e84437abb947755843584a67be';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    float64[] pulse
    float64[] current_pulse
    float64[] rpy
    float64 min_variation
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetRobotPoseResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.pulse !== undefined) {
      resolved.pulse = msg.pulse;
    }
    else {
      resolved.pulse = []
    }

    if (msg.current_pulse !== undefined) {
      resolved.current_pulse = msg.current_pulse;
    }
    else {
      resolved.current_pulse = []
    }

    if (msg.rpy !== undefined) {
      resolved.rpy = msg.rpy;
    }
    else {
      resolved.rpy = []
    }

    if (msg.min_variation !== undefined) {
      resolved.min_variation = msg.min_variation;
    }
    else {
      resolved.min_variation = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: SetRobotPoseRequest,
  Response: SetRobotPoseResponse,
  md5sum() { return 'f7572839eb043d212b753d92bfaef663'; },
  datatype() { return 'hiwonder_interfaces/SetRobotPose'; }
};
