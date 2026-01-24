// Auto-generated. Do not edit!

// (in-package hiwonder_interfaces.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let JointRange = require('./JointRange.js');

//-----------------------------------------------------------

class JointsRange {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint1 = null;
      this.joint2 = null;
      this.joint3 = null;
      this.joint4 = null;
      this.joint5 = null;
    }
    else {
      if (initObj.hasOwnProperty('joint1')) {
        this.joint1 = initObj.joint1
      }
      else {
        this.joint1 = new JointRange();
      }
      if (initObj.hasOwnProperty('joint2')) {
        this.joint2 = initObj.joint2
      }
      else {
        this.joint2 = new JointRange();
      }
      if (initObj.hasOwnProperty('joint3')) {
        this.joint3 = initObj.joint3
      }
      else {
        this.joint3 = new JointRange();
      }
      if (initObj.hasOwnProperty('joint4')) {
        this.joint4 = initObj.joint4
      }
      else {
        this.joint4 = new JointRange();
      }
      if (initObj.hasOwnProperty('joint5')) {
        this.joint5 = initObj.joint5
      }
      else {
        this.joint5 = new JointRange();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointsRange
    // Serialize message field [joint1]
    bufferOffset = JointRange.serialize(obj.joint1, buffer, bufferOffset);
    // Serialize message field [joint2]
    bufferOffset = JointRange.serialize(obj.joint2, buffer, bufferOffset);
    // Serialize message field [joint3]
    bufferOffset = JointRange.serialize(obj.joint3, buffer, bufferOffset);
    // Serialize message field [joint4]
    bufferOffset = JointRange.serialize(obj.joint4, buffer, bufferOffset);
    // Serialize message field [joint5]
    bufferOffset = JointRange.serialize(obj.joint5, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointsRange
    let len;
    let data = new JointsRange(null);
    // Deserialize message field [joint1]
    data.joint1 = JointRange.deserialize(buffer, bufferOffset);
    // Deserialize message field [joint2]
    data.joint2 = JointRange.deserialize(buffer, bufferOffset);
    // Deserialize message field [joint3]
    data.joint3 = JointRange.deserialize(buffer, bufferOffset);
    // Deserialize message field [joint4]
    data.joint4 = JointRange.deserialize(buffer, bufferOffset);
    // Deserialize message field [joint5]
    data.joint5 = JointRange.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 80;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hiwonder_interfaces/JointsRange';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f4756b6cbfe9dd3e05100c20e0ecd197';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new JointsRange(null);
    if (msg.joint1 !== undefined) {
      resolved.joint1 = JointRange.Resolve(msg.joint1)
    }
    else {
      resolved.joint1 = new JointRange()
    }

    if (msg.joint2 !== undefined) {
      resolved.joint2 = JointRange.Resolve(msg.joint2)
    }
    else {
      resolved.joint2 = new JointRange()
    }

    if (msg.joint3 !== undefined) {
      resolved.joint3 = JointRange.Resolve(msg.joint3)
    }
    else {
      resolved.joint3 = new JointRange()
    }

    if (msg.joint4 !== undefined) {
      resolved.joint4 = JointRange.Resolve(msg.joint4)
    }
    else {
      resolved.joint4 = new JointRange()
    }

    if (msg.joint5 !== undefined) {
      resolved.joint5 = JointRange.Resolve(msg.joint5)
    }
    else {
      resolved.joint5 = new JointRange()
    }

    return resolved;
    }
};

module.exports = JointsRange;
