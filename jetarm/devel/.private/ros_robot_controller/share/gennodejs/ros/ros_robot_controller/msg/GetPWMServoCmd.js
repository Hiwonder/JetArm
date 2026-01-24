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

class GetPWMServoCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.get_position = null;
      this.get_offset = null;
    }
    else {
      if (initObj.hasOwnProperty('get_position')) {
        this.get_position = initObj.get_position
      }
      else {
        this.get_position = 0;
      }
      if (initObj.hasOwnProperty('get_offset')) {
        this.get_offset = initObj.get_offset
      }
      else {
        this.get_offset = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetPWMServoCmd
    // Serialize message field [get_position]
    bufferOffset = _serializer.uint8(obj.get_position, buffer, bufferOffset);
    // Serialize message field [get_offset]
    bufferOffset = _serializer.uint8(obj.get_offset, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetPWMServoCmd
    let len;
    let data = new GetPWMServoCmd(null);
    // Deserialize message field [get_position]
    data.get_position = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [get_offset]
    data.get_offset = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_robot_controller/GetPWMServoCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2e555397e3448e744f7c10502a635d13';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 get_position
    uint8 get_offset
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetPWMServoCmd(null);
    if (msg.get_position !== undefined) {
      resolved.get_position = msg.get_position;
    }
    else {
      resolved.get_position = 0
    }

    if (msg.get_offset !== undefined) {
      resolved.get_offset = msg.get_offset;
    }
    else {
      resolved.get_offset = 0
    }

    return resolved;
    }
};

module.exports = GetPWMServoCmd;
