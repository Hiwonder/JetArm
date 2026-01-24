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

let JointsRange = require('../msg/JointsRange.js');

//-----------------------------------------------------------

class GetJointRangeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetJointRangeRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetJointRangeRequest
    let len;
    let data = new GetJointRangeRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hiwonder_interfaces/GetJointRangeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetJointRangeRequest(null);
    return resolved;
    }
};

class GetJointRangeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = new JointsRange();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetJointRangeResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = JointsRange.serialize(obj.data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetJointRangeResponse
    let len;
    let data = new GetJointRangeResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = JointsRange.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 81;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hiwonder_interfaces/GetJointRangeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '33e6f68f335a1196c0815d29210eb550';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
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
    const resolved = new GetJointRangeResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.data !== undefined) {
      resolved.data = JointsRange.Resolve(msg.data)
    }
    else {
      resolved.data = new JointsRange()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetJointRangeRequest,
  Response: GetJointRangeResponse,
  md5sum() { return '33e6f68f335a1196c0815d29210eb550'; },
  datatype() { return 'hiwonder_interfaces/GetJointRange'; }
};
