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

class GetBusServoCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.get_id = null;
      this.get_position = null;
      this.get_offset = null;
      this.get_voltage = null;
      this.get_temperature = null;
      this.get_position_limit = null;
      this.get_voltage_limit = null;
      this.get_max_temperature_limit = null;
      this.get_torque_state = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('get_id')) {
        this.get_id = initObj.get_id
      }
      else {
        this.get_id = 0;
      }
      if (initObj.hasOwnProperty('get_position')) {
        this.get_position = initObj.get_position
      }
      else {
        this.get_position = 0;
      }
      if (initObj.hasOwnProperty('get_offset')) {
        this.get_offset = initObj.get_offset
      }
      else {
        this.get_offset = 0;
      }
      if (initObj.hasOwnProperty('get_voltage')) {
        this.get_voltage = initObj.get_voltage
      }
      else {
        this.get_voltage = 0;
      }
      if (initObj.hasOwnProperty('get_temperature')) {
        this.get_temperature = initObj.get_temperature
      }
      else {
        this.get_temperature = 0;
      }
      if (initObj.hasOwnProperty('get_position_limit')) {
        this.get_position_limit = initObj.get_position_limit
      }
      else {
        this.get_position_limit = 0;
      }
      if (initObj.hasOwnProperty('get_voltage_limit')) {
        this.get_voltage_limit = initObj.get_voltage_limit
      }
      else {
        this.get_voltage_limit = 0;
      }
      if (initObj.hasOwnProperty('get_max_temperature_limit')) {
        this.get_max_temperature_limit = initObj.get_max_temperature_limit
      }
      else {
        this.get_max_temperature_limit = 0;
      }
      if (initObj.hasOwnProperty('get_torque_state')) {
        this.get_torque_state = initObj.get_torque_state
      }
      else {
        this.get_torque_state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetBusServoCmd
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [get_id]
    bufferOffset = _serializer.uint8(obj.get_id, buffer, bufferOffset);
    // Serialize message field [get_position]
    bufferOffset = _serializer.uint8(obj.get_position, buffer, bufferOffset);
    // Serialize message field [get_offset]
    bufferOffset = _serializer.uint8(obj.get_offset, buffer, bufferOffset);
    // Serialize message field [get_voltage]
    bufferOffset = _serializer.uint8(obj.get_voltage, buffer, bufferOffset);
    // Serialize message field [get_temperature]
    bufferOffset = _serializer.uint8(obj.get_temperature, buffer, bufferOffset);
    // Serialize message field [get_position_limit]
    bufferOffset = _serializer.uint8(obj.get_position_limit, buffer, bufferOffset);
    // Serialize message field [get_voltage_limit]
    bufferOffset = _serializer.uint8(obj.get_voltage_limit, buffer, bufferOffset);
    // Serialize message field [get_max_temperature_limit]
    bufferOffset = _serializer.uint8(obj.get_max_temperature_limit, buffer, bufferOffset);
    // Serialize message field [get_torque_state]
    bufferOffset = _serializer.uint8(obj.get_torque_state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetBusServoCmd
    let len;
    let data = new GetBusServoCmd(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [get_id]
    data.get_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [get_position]
    data.get_position = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [get_offset]
    data.get_offset = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [get_voltage]
    data.get_voltage = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [get_temperature]
    data.get_temperature = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [get_position_limit]
    data.get_position_limit = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [get_voltage_limit]
    data.get_voltage_limit = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [get_max_temperature_limit]
    data.get_max_temperature_limit = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [get_torque_state]
    data.get_torque_state = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_robot_controller/GetBusServoCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '18e5c6926d8d8fbfd6f905fb9d21ff40';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new GetBusServoCmd(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.get_id !== undefined) {
      resolved.get_id = msg.get_id;
    }
    else {
      resolved.get_id = 0
    }

    if (msg.get_position !== undefined) {
      resolved.get_position = msg.get_position;
    }
    else {
      resolved.get_position = 0
    }

    if (msg.get_offset !== undefined) {
      resolved.get_offset = msg.get_offset;
    }
    else {
      resolved.get_offset = 0
    }

    if (msg.get_voltage !== undefined) {
      resolved.get_voltage = msg.get_voltage;
    }
    else {
      resolved.get_voltage = 0
    }

    if (msg.get_temperature !== undefined) {
      resolved.get_temperature = msg.get_temperature;
    }
    else {
      resolved.get_temperature = 0
    }

    if (msg.get_position_limit !== undefined) {
      resolved.get_position_limit = msg.get_position_limit;
    }
    else {
      resolved.get_position_limit = 0
    }

    if (msg.get_voltage_limit !== undefined) {
      resolved.get_voltage_limit = msg.get_voltage_limit;
    }
    else {
      resolved.get_voltage_limit = 0
    }

    if (msg.get_max_temperature_limit !== undefined) {
      resolved.get_max_temperature_limit = msg.get_max_temperature_limit;
    }
    else {
      resolved.get_max_temperature_limit = 0
    }

    if (msg.get_torque_state !== undefined) {
      resolved.get_torque_state = msg.get_torque_state;
    }
    else {
      resolved.get_torque_state = 0
    }

    return resolved;
    }
};

module.exports = GetBusServoCmd;
