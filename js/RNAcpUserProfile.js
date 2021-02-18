

'use strict';
import {NativeModules} from 'react-native';

const RNAcpUserProfile = NativeModules.RNAcpUserProfile;

module.exports = {
  registerExtension:function() {
    RNAcpUserProfile.registerExtension();
  },
};
