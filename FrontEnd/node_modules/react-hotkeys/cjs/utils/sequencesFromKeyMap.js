"use strict";

Object.defineProperty(exports, "__esModule", {
  value: true
});
function sequencesFromKeyMap(hotKeyMap, hotKeyName) {
  var sequences = hotKeyMap[hotKeyName];

  if (!sequences) {
    /**
     * If no sequence is found with this name we assume the user is passing a
     * hard-coded sequence as a key
     */
    return [hotKeyName];
  } else if (Array.isArray(sequences)) {
    return sequences;
  } else {
    return [sequences];
  }
}

exports.default = sequencesFromKeyMap;