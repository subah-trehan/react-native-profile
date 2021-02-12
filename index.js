
import { NativeModules } from 'react-native';

const { RNAcpUserProfile } = NativeModules;

/**
  * Returns the version of the ACPUserProfile extension
  * @param  {string} Promise a promise that resolves with the extension verison
  */
 extensionVersion(): Promise<string> {
   return Promise.resolve(RNAcpUserProfile.extensionVersion());
 },

 /**
  * Registers the ACPUserProfile extension with ACPCore
  */
 registerExtension() {
   RNAcpUserProfile.registerExtension();
 },

export default RNAcpUserProfile;
