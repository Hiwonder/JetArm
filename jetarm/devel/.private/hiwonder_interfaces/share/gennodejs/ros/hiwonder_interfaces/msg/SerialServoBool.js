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

class SerialServoBool {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.servo_id = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('servo_id')) {
        this.servo_id = initObj.servo_id
      }
      else {
        this.servo_id = 0;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SerialServoBool
    // Serialize message field [servo_id]
    bufferOffset = _serializer.uint8(obj.servo_id, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.bool(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SerialServoBool
    let len;
    let data = new SerialServoBool(null);
    // Deserialize message field [servo_id]
    data.servo_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hiwonder_interfaces/SerialServoBool';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd73ace136d2944106a7cfcfd261a5b9a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 servo_id
    bool  state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SerialServoBool(null);
    if (msg.servo_id !== undefined) {
      resolved.servo_id = msg.servo_id;
    }
    else {
      resolved.servo_id = 0
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = false
    }

    return resolved;
    }
};

module.exports = SerialServoBool;
