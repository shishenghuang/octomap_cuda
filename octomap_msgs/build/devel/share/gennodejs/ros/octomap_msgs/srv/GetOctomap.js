// Auto-generated. Do not edit!

// (in-package octomap_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let Octomap = require('../msg/Octomap.js');

//-----------------------------------------------------------

class GetOctomapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetOctomapRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetOctomapRequest
    let len;
    let data = new GetOctomapRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'octomap_msgs/GetOctomapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetOctomapRequest(null);
    return resolved;
    }
};

class GetOctomapResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map = null;
    }
    else {
      if (initObj.hasOwnProperty('map')) {
        this.map = initObj.map
      }
      else {
        this.map = new Octomap();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetOctomapResponse
    // Serialize message field [map]
    bufferOffset = Octomap.serialize(obj.map, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetOctomapResponse
    let len;
    let data = new GetOctomapResponse(null);
    // Deserialize message field [map]
    data.map = Octomap.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Octomap.getMessageSize(object.map);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'octomap_msgs/GetOctomapResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'be9d2869d24fe40d6bc21ac21f6bb2c5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    octomap_msgs/Octomap map
    
    
    ================================================================================
    MSG: octomap_msgs/Octomap
    # A 3D map in binary format, as Octree
    Header header
    
    # Flag to denote a binary (only free/occupied) or full occupancy octree (.bt/.ot file)
    bool binary
    
    # Class id of the contained octree 
    string id
    
    # Resolution (in m) of the smallest octree nodes
    float64 resolution
    
    # binary serialization of octree, use conversions.h to read and write octrees
    int8[] data
    
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
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetOctomapResponse(null);
    if (msg.map !== undefined) {
      resolved.map = Octomap.Resolve(msg.map)
    }
    else {
      resolved.map = new Octomap()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetOctomapRequest,
  Response: GetOctomapResponse,
  md5sum() { return 'be9d2869d24fe40d6bc21ac21f6bb2c5'; },
  datatype() { return 'octomap_msgs/GetOctomap'; }
};
