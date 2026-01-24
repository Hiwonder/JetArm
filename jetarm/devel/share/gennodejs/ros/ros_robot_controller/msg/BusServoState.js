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

class BusServoState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.present_id = null;
      this.target_id = null;
      this.position = null;
      this.offset = null;
      this.voltage = null;
      this.temperature = null;
      this.position_limit = null;
      this.voltage_limit = null;
      this.max_temperature_limit = null;
      this.enable_torque = null;
      this.save_offset = null;
      this.stop = null;
    }
    else {
      if (initObj.hasOwnProperty('present_id')) {
        this.present_id = initObj.present_id
      }
      else {
        this.present_id = [];
      }
      if (initObj.hasOwnProperty('target_id')) {
        this.target_id = initObj.target_id
      }
      else {
        this.target_id = [];
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = [];
      }
      if (initObj.hasOwnProperty('offset')) {
        this.offset = initObj.offset
      }
      else {
        this.offset = [];
      }
      if (initObj.hasOwnProperty('voltage')) {
        this.voltage = initObj.voltage
      }
      else {
        this.voltage = [];
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = [];
      }
      if (initObj.hasOwnProperty('position_limit')) {
        this.position_limit = initObj.position_limit
      }
      else {
        this.position_limit = [];
      }
      if (initObj.hasOwnProperty('voltage_limit')) {
        this.voltage_limit = initObj.voltage_limit
      }
      else {
        this.voltage_limit = [];
      }
      if (initObj.hasOwnProperty('max_temperature_limit')) {
        this.max_temperature_limit = initObj.max_temperature_limit
      }
      else {
        this.max_temperature_limit = [];
      }
      if (initObj.hasOwnProperty('enable_torque')) {
        this.enable_torque = initObj.enable_torque
      }
      else {
        this.enable_torque = [];
      }
      if (initObj.hasOwnProperty('save_offset')) {
        this.save_offset = initObj.save_offset
      }
      else {
        this.save_offset = [];
      }
      if (initObj.hasOwnProperty('stop')) {
        this.stop = initObj.stop
      }
      else {
        this.stop = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BusServoState
    // Serialize message field [present_id]
    bufferOffset = _arraySerializer.uint16(obj.present_id, buffer, bufferOffset, null);
    // Serialize message field [target_id]
    bufferOffset = _arraySerializer.uint16(obj.target_id, buffer, bufferOffset, null);
    // Serialize message field [position]
    bufferOffset = _arraySerializer.uint16(obj.position, buffer, bufferOffset, null);
    // Serialize message field [offset]
    bufferOffset = _arraySerializer.int16(obj.offset, buffer, bufferOffset, null);
    // Serialize message field [voltage]
    bufferOffset = _arraySerializer.uint16(obj.voltage, buffer, bufferOffset, null);
    // Serialize message field [temperature]
    bufferOffset = _arraySerializer.uint16(obj.temperature, buffer, bufferOffset, null);
    // Serialize message field [position_limit]
    bufferOffset = _arraySerializer.uint16(obj.position_limit, buffer, bufferOffset, null);
    // Serialize message field [voltage_limit]
    bufferOffset = _arraySerializer.uint16(obj.voltage_limit, buffer, bufferOffset, null);
    // Serialize message field [max_temperature_limit]
    bufferOffset = _arraySerializer.uint16(obj.max_temperature_limit, buffer, bufferOffset, null);
    // Serialize message field [enable_torque]
    bufferOffset = _arraySerializer.uint16(obj.enable_torque, buffer, bufferOffset, null);
    // Serialize message field [save_offset]
    bufferOffset = _arraySerializer.uint16(obj.save_offset, buffer, bufferOffset, null);
    // Serialize message field [stop]
    bufferOffset = _arraySerializer.uint16(obj.stop, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BusServoState
    let len;
    let data = new BusServoState(null);
    // Deserialize message field [present_id]
    data.present_id = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [target_id]
    data.target_id = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [position]
    data.position = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [offset]
    data.offset = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [voltage]
    data.voltage = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [temperature]
    data.temperature = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [position_limit]
    data.position_limit = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [voltage_limit]
    data.voltage_limit = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [max_temperature_limit]
    data.max_temperature_limit = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [enable_torque]
    data.enable_torque = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [save_offset]
    data.save_offset = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [stop]
    data.stop = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 2 * object.present_id.length;
    length += 2 * object.target_id.length;
    length += 2 * object.position.length;
    length += 2 * object.offset.length;
    length += 2 * object.voltage.length;
    length += 2 * object.temperature.length;
    length += 2 * object.position_limit.length;
    length += 2 * object.voltage_limit.length;
    length += 2 * object.max_temperature_limit.length;
    length += 2 * object.enable_torque.length;
    length += 2 * object.save_offset.length;
    length += 2 * object.stop.length;
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ros_robot_controller/BusServoState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '77c375d1ab7f4d88380638703e2dbdbc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new BusServoState(null);
    if (msg.present_id !== undefined) {
      resolved.present_id = msg.present_id;
    }
    else {
      resolved.present_id = []
    }

    if (msg.target_id !== undefined) {
      resolved.target_id = msg.target_id;
    }
    else {
      resolved.target_id = []
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = []
    }

    if (msg.offset !== undefined) {
      resolved.offset = msg.offset;
    }
    else {
      resolved.offset = []
    }

    if (msg.voltage !== undefined) {
      resolved.voltage = msg.voltage;
    }
    else {
      resolved.voltage = []
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = []
    }

    if (msg.position_limit !== undefined) {
      resolved.position_limit = msg.position_limit;
    }
    else {
      resolved.position_limit = []
    }

    if (msg.voltage_limit !== undefined) {
      resolved.voltage_limit = msg.voltage_limit;
    }
    else {
      resolved.voltage_limit = []
    }

    if (msg.max_temperature_limit !== undefined) {
      resolved.max_temperature_limit = msg.max_temperature_limit;
    }
    else {
      resolved.max_temperature_limit = []
    }

    if (msg.enable_torque !== undefined) {
      resolved.enable_torque = msg.enable_torque;
    }
    else {
      resolved.enable_torque = []
    }

    if (msg.save_offset !== undefined) {
      resolved.save_offset = msg.save_offset;
    }
    else {
      resolved.save_offset = []
    }

    if (msg.stop !== undefined) {
      resolved.stop = msg.stop;
    }
    else {
      resolved.stop = []
    }

    return resolved;
    }
};

module.exports = BusServoState;
