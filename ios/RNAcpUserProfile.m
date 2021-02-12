
#import "RNAcpUserProfile.h"

@implementation RNAcpUserProfile

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}


RCT_EXPORT_MODULE(ACPUserProfile);

RCT_EXPORT_METHOD(extensionVersion: (RCTPromiseResolveBlock) resolve rejecter:(RCTPromiseRejectBlock)reject) {
    resolve([ACPUserProfile extensionVersion]);
}

RCT_EXPORT_METHOD(registerExtension) {
    [ACPUserProfile registerExtension];
}

RCT_EXPORT_METHOD(removeUserAttribute: (nonnull NSString*) attributeName) {
    [ACPUserProfile removeUserAttribute:attributeName];
}




@end

