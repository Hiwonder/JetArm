// Auto-generated. Do not edit!

// (in-package hiwonder_interfaces.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ServoState = require('./ServoState.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ServoStateList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.servo_states = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('servo_states')) {
        this.servo_states = initObj.servo_states
      }
      else {
        this.servo_states = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServoStateList
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [servo_states]
    // Serialize the length for message field [servo_states]
    bufferOffset = _serializer.uint32(obj.servo_states.length, buffer, bufferOffset);
    obj.servo_states.forEach((val) => {
      bufferOffset = ServoState.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServoStateList
    let len;
    let data = new ServoStateList(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [servo_states]
    // Deserialize array length for message field [servo_states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.servo_states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.servo_states[i] = ServoState.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.servo_states.forEach((val) => {
      length += ServoState.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hiwonder_interfaces/ServoStateList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '22e881eeaee8270c42551f7b1f39e386';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    ServoState[] servo_states
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: hiwonder_interfaces/ServoState
    std_msgs/Header header
    float64 timestamp   # motor state is at this time
    int32 id            # motor id
    int32 type          # servo type
    int32 goal          # commanded position (in encoder units)
    int32 position      # current position (in encoder units)
    int32 error         # difference between current and goal positions
    int32 voltage       # current voltage (mv)
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServoStateList(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.servo_states !== undefined) {
      resolved.servo_states = new Array(msg.servo_states.length);
      for (let i = 0; i < resolved.servo_states.length; ++i) {
        resolved.servo_states[i] = ServoState.Resolve(msg.servo_states[i]);
      }
    }
    else {
      resolved.servo_states = []
    }

    return resolved;
    }
};

module.exports = ServoStateList;
