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

let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class SetJointValueRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_value = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_value')) {
        this.joint_value = initObj.joint_value
      }
      else {
        this.joint_value = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetJointValueRequest
    // Serialize message field [joint_value]
    bufferOffset = _arraySerializer.float32(obj.joint_value, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetJointValueRequest
    let len;
    let data = new SetJointValueRequest(null);
    // Deserialize message field [joint_value]
    data.joint_value = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.joint_value.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hiwonder_interfaces/SetJointValueRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '97ed8712ead473224aec3bee8e7849e0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] joint_value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetJointValueRequest(null);
    if (msg.joint_value !== undefined) {
      resolved.joint_value = msg.joint_value;
    }
    else {
      resolved.joint_value = []
    }

    return resolved;
    }
};

class SetJointValueResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.solution = null;
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('solution')) {
        this.solution = initObj.solution
      }
      else {
        this.solution = false;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetJointValueResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [solution]
    bufferOffset = _serializer.bool(obj.solution, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetJointValueResponse
    let len;
    let data = new SetJointValueResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [solution]
    data.solution = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 58;
  }

  static datatype() {
    // Returns string type for a service object
    return 'hiwonder_interfaces/SetJointValueResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7e34dc38014b735f72f1da76fa4f5008';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    bool solution 
    geometry_msgs/Pose pose
    
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetJointValueResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.solution !== undefined) {
      resolved.solution = msg.solution;
    }
    else {
      resolved.solution = false
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    return resolved;
    }
};

module.exports = {
  Request: SetJointValueRequest,
  Response: SetJointValueResponse,
  md5sum() { return '841f769c00b3378744250ae71b61c528'; },
  datatype() { return 'hiwonder_interfaces/SetJointValue'; }
};
