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
let ImageSize = require('./ImageSize.js');

//-----------------------------------------------------------

class ObjectInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.label = null;
      this.center = null;
      this.yaw = null;
      this.size = null;
      this.height = null;
    }
    else {
      if (initObj.hasOwnProperty('label')) {
        this.label = initObj.label
      }
      else {
        this.label = '';
      }
      if (initObj.hasOwnProperty('center')) {
        this.center = initObj.center
      }
      else {
        this.center = new PixelPosition();
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0;
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = new ImageSize();
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectInfo
    // Serialize message field [label]
    bufferOffset = _serializer.string(obj.label, buffer, bufferOffset);
    // Serialize message field [center]
    bufferOffset = PixelPosition.serialize(obj.center, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.int16(obj.yaw, buffer, bufferOffset);
    // Serialize message field [size]
    bufferOffset = ImageSize.serialize(obj.size, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.float64(obj.height, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectInfo
    let len;
    let data = new ObjectInfo(null);
    // Deserialize message field [label]
    data.label = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [center]
    data.center = PixelPosition.deserialize(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [size]
    data.size = ImageSize.deserialize(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.label);
    return length + 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hiwonder_interfaces/ObjectInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '334356fe136b15b91e4095edc296683b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # 颜色标签，如'red1', 'green2', 'blue3', 'BananaPeel', 'BrokenBones'
    string label
    
    # 物体的像素中心点坐标
    hiwonder_interfaces/PixelPosition center
    
    # 物体的旋转角度，旋转角度指水平轴（x轴）逆时针旋转，与碰到的矩形的第一条边的夹角
    int16 yaw
    
    # 物体图像尺寸
    hiwonder_interfaces/ImageSize size
    
    # 物体高度 
    float64 height
    
    ================================================================================
    MSG: hiwonder_interfaces/PixelPosition
    uint16 x
    uint16 y
    
    ================================================================================
    MSG: hiwonder_interfaces/ImageSize
    uint16 width
    uint16 height
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjectInfo(null);
    if (msg.label !== undefined) {
      resolved.label = msg.label;
    }
    else {
      resolved.label = ''
    }

    if (msg.center !== undefined) {
      resolved.center = PixelPosition.Resolve(msg.center)
    }
    else {
      resolved.center = new PixelPosition()
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0
    }

    if (msg.size !== undefined) {
      resolved.size = ImageSize.Resolve(msg.size)
    }
    else {
      resolved.size = new ImageSize()
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0.0
    }

    return resolved;
    }
};

module.exports = ObjectInfo;
