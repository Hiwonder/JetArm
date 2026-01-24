// Auto-generated. Do not edit!

// (in-package hiwonder_interfaces.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Buzzer {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.freq = null;
      this.on_ticks = null;
      this.off_ticks = null;
      this.repeat = null;
    }
    else {
      if (initObj.hasOwnProperty('freq')) {
        this.freq = initObj.freq
      }
      else {
        this.freq = 0;
      }
      if (initObj.hasOwnProperty('on_ticks')) {
        this.on_ticks = initObj.on_ticks
      }
      else {
        this.on_ticks = 0;
      }
      if (initObj.hasOwnProperty('off_ticks')) {
        this.off_ticks = initObj.off_ticks
      }
      else {
        this.off_ticks = 0;
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
    // Serializes a message object of type Buzzer
    // Serialize message field [freq]
    bufferOffset = _serializer.uint16(obj.freq, buffer, bufferOffset);
    // Serialize message field [on_ticks]
    bufferOffset = _serializer.uint16(obj.on_ticks, buffer, bufferOffset);
    // Serialize message field [off_ticks]
    bufferOffset = _serializer.uint16(obj.off_ticks, buffer, bufferOffset);
    // Serialize message field [repeat]
    bufferOffset = _serializer.uint16(obj.repeat, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Buzzer
    let len;
    let data = new Buzzer(null);
    // Deserialize message field [freq]
    data.freq = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [on_ticks]
    data.on_ticks = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [off_ticks]
    data.off_ticks = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [repeat]
    data.repeat = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hiwonder_interfaces/Buzzer';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c553d26ba33d63f49b15ae65585246e6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 freq           # 蜂鸣器声音频率
    uint16 on_ticks       # 蜂鸣器响的时长 毫秒
    uint16 off_ticks      # 蜂鸣器不响的时长 毫秒
    uint16 repeat         # 蜂鸣器响与不响重复次数
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Buzzer(null);
    if (msg.freq !== undefined) {
      resolved.freq = msg.freq;
    }
    else {
      resolved.freq = 0
    }

    if (msg.on_ticks !== undefined) {
      resolved.on_ticks = msg.on_ticks;
    }
    else {
      resolved.on_ticks = 0
    }

    if (msg.off_ticks !== undefined) {
      resolved.off_ticks = msg.off_ticks;
    }
    else {
      resolved.off_ticks = 0
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

module.exports = Buzzer;
