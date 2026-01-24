// Auto-generated. Do not edit!

// (in-package hiwonder_interfaces.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let JointsRange = require('../msg/JointsRange.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetJointRangeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = new JointsRange();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetJointRangeRequest
    // Serialize message field [data]
    bufferOffset = JointsRange.serialize(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetJointRangeRequest
    let len;
    let data = new SetJointRangeRequest(null);
    // Deserialize message field [data]
    data.data = JointsRange.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 80;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hiwonder_interfaces/SetJointRangeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0b664c5dd4136dcf651b6709b837757e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    hiwonder_interfaces/JointsRange data
    
    ================================================================================
    MSG: hiwonder_interfaces/JointsRange
    hiwonder_interfaces/JointRange joint1
    hiwonder_interfaces/JointRange joint2
    hiwonder_interfaces/JointRange joint3
    hiwonder_interfaces/JointRange joint4
    hiwonder_interfaces/JointRange joint5
    
    ================================================================================
    MSG: hiwonder_interfaces/JointRange
    float64 min
    float64 max
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetJointRangeRequest(null);
    if (msg.data !== undefined) {
      resolved.data = JointsRange.Resolve(msg.data)
    }
    else {
      resolved.data = new JointsRange()
    }

    return resolved;
    }
};

class SetJointRangeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetJointRangeResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetJointRangeResponse
    let len;
    let data = new SetJointRangeResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hiwonder_interfaces/SetJointRangeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '937c9679a518e3a18d831e57125ea522';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetJointRangeResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: SetJointRangeRequest,
  Response: SetJointRangeResponse,
  md5sum() { return '650ce1142907ebb9d989246f5b6eb1fe'; },
  datatype() { return 'hiwonder_interfaces/SetJointRange'; }
};
