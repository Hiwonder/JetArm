// Auto-generated. Do not edit!

// (in-package hiwonder_interfaces.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let EulerAngles = require('./EulerAngles.js');

//-----------------------------------------------------------

class GraspState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.complete = null;
      this.grasp_posture = null;
    }
    else {
      if (initObj.hasOwnProperty('complete')) {
        this.complete = initObj.complete
      }
      else {
        this.complete = false;
      }
      if (initObj.hasOwnProperty('grasp_posture')) {
        this.grasp_posture = initObj.grasp_posture
      }
      else {
        this.grasp_posture = new EulerAngles();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GraspState
    // Serialize message field [complete]
    bufferOffset = _serializer.bool(obj.complete, buffer, bufferOffset);
    // Serialize message field [grasp_posture]
    bufferOffset = EulerAngles.serialize(obj.grasp_posture, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GraspState
    let len;
    let data = new GraspState(null);
    // Deserialize message field [complete]
    data.complete = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [grasp_posture]
    data.grasp_posture = EulerAngles.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hiwonder_interfaces/GraspState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '88fb84023fd99dd195825db77ccbd5b5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool complete
    hiwonder_interfaces/EulerAngles grasp_posture
    
    ================================================================================
    MSG: hiwonder_interfaces/EulerAngles
    float64 r
    float64 p
    float64 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GraspState(null);
    if (msg.complete !== undefined) {
      resolved.complete = msg.complete;
    }
    else {
      resolved.complete = false
    }

    if (msg.grasp_posture !== undefined) {
      resolved.grasp_posture = EulerAngles.Resolve(msg.grasp_posture)
    }
    else {
      resolved.grasp_posture = new EulerAngles()
    }

    return resolved;
    }
};

module.exports = GraspState;
