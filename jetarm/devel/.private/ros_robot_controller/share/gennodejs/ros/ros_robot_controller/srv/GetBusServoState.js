// Auto-generated. Do not edit!

// (in-package ros_robot_controller.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GetBusServoCmd = require('../msg/GetBusServoCmd.js');

//-----------------------------------------------------------

let BusServoState = require('../msg/BusServoState.js');

//-----------------------------------------------------------

class GetBusServoStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetBusServoStateRequest
    // Serialize message field [cmd]
    // Serialize the length for message field [cmd]
    bufferOffset = _serializer.uint32(obj.cmd.length, buffer, bufferOffset);
    obj.cmd.forEach((val) => {
      bufferOffset = GetBusServoCmd.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetBusServoStateRequest
    let len;
    let data = new GetBusServoStateRequest(null);
    // Deserialize message field [cmd]
    // Deserialize array length for message field [cmd]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cmd = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cmd[i] = GetBusServoCmd.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 10 * object.cmd.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_robot_controller/GetBusServoStateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '379df0c3465ba9e18d983cc4bb700ccb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ros_robot_controller/GetBusServoCmd[] cmd
    
    ================================================================================
    MSG: ros_robot_controller/GetBusServoCmd
    uint8 id
    uint8 get_id
    uint8 get_position
    uint8 get_offset
    uint8 get_voltage
    uint8 get_temperature
    uint8 get_position_limit
    uint8 get_voltage_limit
    uint8 get_max_temperature_limit
    uint8 get_torque_state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetBusServoStateRequest(null);
    if (msg.cmd !== undefined) {
      resolved.cmd = new Array(msg.cmd.length);
      for (let i = 0; i < resolved.cmd.length; ++i) {
        resolved.cmd[i] = GetBusServoCmd.Resolve(msg.cmd[i]);
      }
    }
    else {
      resolved.cmd = []
    }

    return resolved;
    }
};

class GetBusServoStateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetBusServoStateResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [state]
    // Serialize the length for message field [state]
    bufferOffset = _serializer.uint32(obj.state.length, buffer, bufferOffset);
    obj.state.forEach((val) => {
      bufferOffset = BusServoState.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetBusServoStateResponse
    let len;
    let data = new GetBusServoStateResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [state]
    // Deserialize array length for message field [state]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.state = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.state[i] = BusServoState.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.state.forEach((val) => {
      length += BusServoState.getMessageSize(val);
    });
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ros_robot_controller/GetBusServoStateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'df8a383f33fcca512986b04e65e9b3ed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    ros_robot_controller/BusServoState[] state
    
    
    ================================================================================
    MSG: ros_robot_controller/BusServoState
    uint16[] present_id
    uint16[] target_id
    uint16[] position
    int16[] offset
    uint16[] voltage
    uint16[] temperature
    uint16[] position_limit
    uint16[] voltage_limit
    uint16[] max_temperature_limit
    uint16[] enable_torque
    uint16[] save_offset
    uint16[] stop
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetBusServoStateResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.state !== undefined) {
      resolved.state = new Array(msg.state.length);
      for (let i = 0; i < resolved.state.length; ++i) {
        resolved.state[i] = BusServoState.Resolve(msg.state[i]);
      }
    }
    else {
      resolved.state = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetBusServoStateRequest,
  Response: GetBusServoStateResponse,
  md5sum() { return '54f81ea2fc5cd9bb899d788802438b6e'; },
  datatype() { return 'ros_robot_controller/GetBusServoState'; }
};
