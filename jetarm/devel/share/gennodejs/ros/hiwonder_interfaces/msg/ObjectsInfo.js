// Auto-generated. Do not edit!

// (in-package hiwonder_interfaces.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ObjectInfo = require('./ObjectInfo.js');

//-----------------------------------------------------------

class ObjectsInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectsInfo
    // Serialize message field [data]
    // Serialize the length for message field [data]
    bufferOffset = _serializer.uint32(obj.data.length, buffer, bufferOffset);
    obj.data.forEach((val) => {
      bufferOffset = ObjectInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectsInfo
    let len;
    let data = new ObjectsInfo(null);
    // Deserialize message field [data]
    // Deserialize array length for message field [data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.data[i] = ObjectInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.data.forEach((val) => {
      length += ObjectInfo.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hiwonder_interfaces/ObjectsInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '44a9b7876b169d055c96381fead947aa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
     hiwonder_interfaces/ObjectInfo[] data
    
    ================================================================================
    MSG: hiwonder_interfaces/ObjectInfo
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
    const resolved = new ObjectsInfo(null);
    if (msg.data !== undefined) {
      resolved.data = new Array(msg.data.length);
      for (let i = 0; i < resolved.data.length; ++i) {
        resolved.data[i] = ObjectInfo.Resolve(msg.data[i]);
      }
    }
    else {
      resolved.data = []
    }

    return resolved;
    }
};

module.exports = ObjectsInfo;
