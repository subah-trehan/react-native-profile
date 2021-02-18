import { NativeModules } from 'react-native';

const { RNAcpUserProfile } = NativeModules;

export default {

      registerExtension:function() {
        RNAcpUserProfile.registerExtension();
      },

  };
