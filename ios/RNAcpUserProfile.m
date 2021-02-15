
#import "RNAcpUserProfile.h"
#import "ACPUserProfile.h"
#import "React/RCTLog.h"
@implementation RNAcpUserProfile



- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}




RCT_EXPORT_METHOD(extensionVersion: (RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject) {
    resolve([ACPUserProfile extensionVersion]);
}

RCT_EXPORT_METHOD(registerExtension) {
    [ACPUserProfile registerExtension];
}

RCT_EXPORT_METHOD(printMessage)
{
RCTLogInfo(@"Custom Message");
}

RCT_EXPORT_MODULE(RNAcpUserProfile);



@end
