// Auto-generated. Do not edit!

// (in-package ros_robot_controller.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PWMServoState = require('./PWMServoState.js');

//-----------------------------------------------------------

class SetPWMServoState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.duration = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = [];
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetPWMServoState
    // Serialize message field [state]
    // Serialize the length for message field [state]
    bufferOffset = _serializer.uint32(obj.state.length, buffer, bufferOffset);
    obj.state.forEach((val) => {
      bufferOffset = PWMServoState.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [duration]
    bufferOffset = _serializer.float64(obj.duration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetPWMServoState
    let len;
    let data = new SetPWMServoState(null);
    // Deserialize message field [state]
    // Deserialize array length for message field [state]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.state = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.state[i] = PWMServoState.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [duration]
    data.duration = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.state.forEach((val) => {
      length += PWMServoState.getMessageSize(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_robot_controller/SetPWMServoState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '755ec4886ec626286881531bdc39b1ad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ros_robot_controller/PWMServoState[] state
    
    float64 duration
    
    ================================================================================
    MSG: ros_robot_controller/PWMServoState
    uint16[] id
    uint16[] position
    int16[] offset
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetPWMServoState(null);
    if (msg.state !== undefined) {
      resolved.state = new Array(msg.state.length);
      for (let i = 0; i < resolved.state.length; ++i) {
        resolved.state[i] = PWMServoState.Resolve(msg.state[i]);
      }
    }
    else {
      resolved.state = []
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = 0.0
    }

    return resolved;
    }
};

module.exports = SetPWMServoState;
