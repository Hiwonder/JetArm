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

class SerialServoMove {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.servo_id = null;
      this.position = null;
      this.duration = null;
    }
    else {
      if (initObj.hasOwnProperty('servo_id')) {
        this.servo_id = initObj.servo_id
      }
      else {
        this.servo_id = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = 0;
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SerialServoMove
    // Serialize message field [servo_id]
    bufferOffset = _serializer.uint8(obj.servo_id, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = _serializer.uint16(obj.position, buffer, bufferOffset);
    // Serialize message field [duration]
    bufferOffset = _serializer.uint16(obj.duration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SerialServoMove
    let len;
    let data = new SerialServoMove(null);
    // Deserialize message field [servo_id]
    data.servo_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [duration]
    data.duration = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hiwonder_interfaces/SerialServoMove';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5dc54bf167bb9c6046aadd2946345a2d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 servo_id
    uint16 position
    uint16 duration
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SerialServoMove(null);
    if (msg.servo_id !== undefined) {
      resolved.servo_id = msg.servo_id;
    }
    else {
      resolved.servo_id = 0
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = 0
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = 0
    }

    return resolved;
    }
};

module.exports = SerialServoMove;
