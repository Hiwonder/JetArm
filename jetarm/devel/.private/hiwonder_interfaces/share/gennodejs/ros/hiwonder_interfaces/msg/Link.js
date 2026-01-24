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

class Link {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.base_link = null;
      this.link1 = null;
      this.link2 = null;
      this.link3 = null;
      this.end_effector_link = null;
    }
    else {
      if (initObj.hasOwnProperty('base_link')) {
        this.base_link = initObj.base_link
      }
      else {
        this.base_link = 0.0;
      }
      if (initObj.hasOwnProperty('link1')) {
        this.link1 = initObj.link1
      }
      else {
        this.link1 = 0.0;
      }
      if (initObj.hasOwnProperty('link2')) {
        this.link2 = initObj.link2
      }
      else {
        this.link2 = 0.0;
      }
      if (initObj.hasOwnProperty('link3')) {
        this.link3 = initObj.link3
      }
      else {
        this.link3 = 0.0;
      }
      if (initObj.hasOwnProperty('end_effector_link')) {
        this.end_effector_link = initObj.end_effector_link
      }
      else {
        this.end_effector_link = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Link
    // Serialize message field [base_link]
    bufferOffset = _serializer.float64(obj.base_link, buffer, bufferOffset);
    // Serialize message field [link1]
    bufferOffset = _serializer.float64(obj.link1, buffer, bufferOffset);
    // Serialize message field [link2]
    bufferOffset = _serializer.float64(obj.link2, buffer, bufferOffset);
    // Serialize message field [link3]
    bufferOffset = _serializer.float64(obj.link3, buffer, bufferOffset);
    // Serialize message field [end_effector_link]
    bufferOffset = _serializer.float64(obj.end_effector_link, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Link
    let len;
    let data = new Link(null);
    // Deserialize message field [base_link]
    data.base_link = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [link1]
    data.link1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [link2]
    data.link2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [link3]
    data.link3 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [end_effector_link]
    data.end_effector_link = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hiwonder_interfaces/Link';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ee67099c892ac23d92388e7b3fe65a55';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 base_link
    float64 link1
    float64 link2
    float64 link3
    float64 end_effector_link
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Link(null);
    if (msg.base_link !== undefined) {
      resolved.base_link = msg.base_link;
    }
    else {
      resolved.base_link = 0.0
    }

    if (msg.link1 !== undefined) {
      resolved.link1 = msg.link1;
    }
    else {
      resolved.link1 = 0.0
    }

    if (msg.link2 !== undefined) {
      resolved.link2 = msg.link2;
    }
    else {
      resolved.link2 = 0.0
    }

    if (msg.link3 !== undefined) {
      resolved.link3 = msg.link3;
    }
    else {
      resolved.link3 = 0.0
    }

    if (msg.end_effector_link !== undefined) {
      resolved.end_effector_link = msg.end_effector_link;
    }
    else {
      resolved.end_effector_link = 0.0
    }

    return resolved;
    }
};

module.exports = Link;
