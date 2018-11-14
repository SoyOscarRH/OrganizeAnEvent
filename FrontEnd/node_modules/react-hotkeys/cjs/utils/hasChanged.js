'use strict';

Object.defineProperty(exports, "__esModule", {
  value: true
});

var _lodash = require('lodash.isequal');

var _lodash2 = _interopRequireDefault(_lodash);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

function hasChanged(newValue, previousValue) {
  return !(0, _lodash2.default)(newValue, previousValue);
}

exports.default = hasChanged;