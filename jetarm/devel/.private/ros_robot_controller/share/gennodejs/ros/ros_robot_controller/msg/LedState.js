// Auto-generated. Do not edit!

// (in-package ros_robot_controller.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LedState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.on_time = null;
      this.off_time = null;
      this.repeat = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('on_time')) {
        this.on_time = initObj.on_time
      }
      else {
        this.on_time = 0.0;
      }
      if (initObj.hasOwnProperty('off_time')) {
        this.off_time = initObj.off_time
      }
      else {
        this.off_time = 0.0;
      }
      if (initObj.hasOwnProperty('repeat')) {
        this.repeat = initObj.repeat
      }
      else {
        this.repeat = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LedState
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [on_time]
    bufferOffset = _serializer.float32(obj.on_time, buffer, bufferOffset);
    // Serialize message field [off_time]
    bufferOffset = _serializer.float32(obj.off_time, buffer, bufferOffset);
    // Serialize message field [repeat]
    bufferOffset = _serializer.uint16(obj.repeat, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LedState
    let len;
    let data = new LedState(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [on_time]
    data.on_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [off_time]
    data.off_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [repeat]
    data.repeat = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_robot_controller/LedState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aedc0628f1bc854143b196b8fbc44c35';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 id
    float32 on_time
    float32 off_time
    uint16 repeat
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LedState(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.on_time !== undefined) {
      resolved.on_time = msg.on_time;
    }
    else {
      resolved.on_time = 0.0
    }

    if (msg.off_time !== undefined) {
      resolved.off_time = msg.off_time;
    }
    else {
      resolved.off_time = 0.0
    }

    if (msg.repeat !== undefined) {
      resolved.repeat = msg.repeat;
    }
    else {
      resolved.repeat = 0
    }

    return resolved;
    }
};

module.exports = LedState;
