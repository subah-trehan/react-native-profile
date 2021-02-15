
package com.reactlibrary;

import android.util.Log;
import com.adobe.marketing.mobile.InvalidInitException;
import com.adobe.marketing.mobile.UserProfile;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;

public class RNAcpUserProfileModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;

  public RNAcpUserProfileModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }
  @ReactMethod
  public void extensionVersion(final Promise promise) {
    promise.resolve(UserProfile.extensionVersion());
  }

  @ReactMethod
   public void registerExtension() {
     try {
       UserProfile.registerExtension();
     } catch (InvalidInitException e) {
       Log.d(getName(), "Registering UserProfile extension failed with error: " + e.getMessage());
     }
   }

   @ReactMethod
    public String printMessage() {

    return "test message";

    }

  @Override
  public String getName() {
    return "RNAcpUserProfile";
  }
}
