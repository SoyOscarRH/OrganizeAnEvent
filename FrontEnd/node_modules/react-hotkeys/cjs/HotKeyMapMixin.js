'use strict';

Object.defineProperty(exports, "__esModule", {
  value: true
});

var _extends = Object.assign || function (target) { for (var i = 1; i < arguments.length; i++) { var source = arguments[i]; for (var key in source) { if (Object.prototype.hasOwnProperty.call(source, key)) { target[key] = source[key]; } } } return target; };

exports.default = HotKeyMapMixin;

var _propTypes = require('prop-types');

var _propTypes2 = _interopRequireDefault(_propTypes);

var _lodash = require('lodash.isequal');

var _lodash2 = _interopRequireDefault(_lodash);

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { default: obj }; }

function HotKeyMapMixin() {
  var hotKeyMap = arguments.length > 0 && arguments[0] !== undefined ? arguments[0] : {};


  return {

    contextTypes: {
      hotKeyMap: _propTypes2.default.object
    },

    childContextTypes: {
      hotKeyMap: _propTypes2.default.object
    },

    getChildContext: function getChildContext() {
      return {
        hotKeyMap: this.__hotKeyMap__
      };
    },
    componentWillMount: function componentWillMount() {
      this.updateMap();
    },
    updateMap: function updateMap() {
      var newMap = this.buildMap();

      if (!(0, _lodash2.default)(newMap, this.__hotKeyMap__)) {
        this.__hotKeyMap__ = newMap;
        return true;
      }

      return false;
    },
    buildMap: function buildMap() {
      var parentMap = this.context.hotKeyMap || {};
      var thisMap = this.props.keyMap || {};

      return _extends({}, parentMap, hotKeyMap, thisMap);
    },
    getMap: function getMap() {
      return this.__hotKeyMap__;
    }
  };
}