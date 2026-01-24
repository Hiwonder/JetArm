// Auto-generated. Do not edit!

// (in-package hiwonder_interfaces.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PixelPosition = require('./PixelPosition.js');

//-----------------------------------------------------------

class ObjectPose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.label = null;
      this.x = null;
      this.y = null;
      this.yaw = null;
      this.collision_roi = null;
      this.collision = null;
    }
    else {
      if (initObj.hasOwnProperty('label')) {
        this.label = initObj.label
      }
      else {
        this.label = '';
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0;
      }
      if (initObj.hasOwnProperty('collision_roi')) {
        this.collision_roi = initObj.collision_roi
      }
      else {
        this.collision_roi = [];
      }
      if (initObj.hasOwnProperty('collision')) {
        this.collision = initObj.collision
      }
      else {
        this.collision = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectPose
    // Serialize message field [label]
    bufferOffset = _serializer.string(obj.label, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.int16(obj.yaw, buffer, bufferOffset);
    // Serialize message field [collision_roi]
    // Serialize the length for message field [collision_roi]
    bufferOffset = _serializer.uint32(obj.collision_roi.length, buffer, bufferOffset);
    obj.collision_roi.forEach((val) => {
      bufferOffset = PixelPosition.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [collision]
    bufferOffset = _serializer.bool(obj.collision, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectPose
    let len;
    let data = new ObjectPose(null);
    // Deserialize message field [label]
    data.label = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [collision_roi]
    // Deserialize array length for message field [collision_roi]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.collision_roi = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.collision_roi[i] = PixelPosition.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [collision]
    data.collision = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.label);
    length += 4 * object.collision_roi.length;
    return length + 27;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hiwonder_interfaces/ObjectPose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '38c75b0b27ce3ab74cbda554632b2fd4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 颜色标签，如'red1', 'green2', 'blue3'
    # 垃圾标签, 如'BananaPeel'
    string label
    
    # 物体的物理世界中心点坐标
    float64 x
    float64 y
    
    # 机械臂夹持器转到和物体平行的角度
    int16 yaw
    
    # 碰撞区域
    hiwonder_interfaces/PixelPosition[] collision_roi
    
    # 表示夹取的物体是否与周围的物体足够近，导致夹持器夹取时会产生碰撞
    # 如果为真，则yaw不可用
    bool collision
    
    ================================================================================
    MSG: hiwonder_interfaces/PixelPosition
    uint16 x
    uint16 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjectPose(null);
    if (msg.label !== undefined) {
      resolved.label = msg.label;
    }
    else {
      resolved.label = ''
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0
    }

    if (msg.collision_roi !== undefined) {
      resolved.collision_roi = new Array(msg.collision_roi.length);
      for (let i = 0; i < resolved.collision_roi.length; ++i) {
        resolved.collision_roi[i] = PixelPosition.Resolve(msg.collision_roi[i]);
      }
    }
    else {
      resolved.collision_roi = []
    }

    if (msg.collision !== undefined) {
      resolved.collision = msg.collision;
    }
    else {
      resolved.collision = false
    }

    return resolved;
    }
};

module.exports = ObjectPose;
