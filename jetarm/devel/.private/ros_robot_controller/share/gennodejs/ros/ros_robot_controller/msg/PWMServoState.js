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

class PWMServoState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.position = null;
      this.offset = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = [];
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = [];
      }
      if (initObj.hasOwnProperty('offset')) {
        this.offset = initObj.offset
      }
      else {
        this.offset = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PWMServoState
    // Serialize message field [id]
    bufferOffset = _arraySerializer.uint16(obj.id, buffer, bufferOffset, null);
    // Serialize message field [position]
    bufferOffset = _arraySerializer.uint16(obj.position, buffer, bufferOffset, null);
    // Serialize message field [offset]
    bufferOffset = _arraySerializer.int16(obj.offset, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PWMServoState
    let len;
    let data = new PWMServoState(null);
    // Deserialize message field [id]
    data.id = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [position]
    data.position = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [offset]
    data.offset = _arrayDeserializer.int16(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 2 * object.id.length;
    length += 2 * object.position.length;
    length += 2 * object.offset.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_robot_controller/PWMServoState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c26a15aad910866b2e34eeadf50a1646';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new PWMServoState(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = []
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = []
    }

    if (msg.offset !== undefined) {
      resolved.offset = msg.offset;
    }
    else {
      resolved.offset = []
    }

    return resolved;
    }
};

module.exports = PWMServoState;
