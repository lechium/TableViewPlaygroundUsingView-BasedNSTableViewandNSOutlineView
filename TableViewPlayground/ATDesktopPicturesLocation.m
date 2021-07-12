//
//  ATDesktopPicturesLocation.m
//  TableViewPlayground
//
//  Created by Kevin Bradley on 7/11/21.
//

#import "ATDesktopPicturesLocation.h"

@implementation ATDesktopPicturesLocation
+(NSURL *)desktopPicturesLocation {
    if (kCFCoreFoundationVersionNumber <= 1575.401){
        NSURL *picturesURL =
        [[NSFileManager defaultManager] URLsForDirectory:NSLibraryDirectory inDomains:NSLocalDomainMask].lastObject;
        picturesURL = [picturesURL URLByAppendingPathComponent:@"Desktop Pictures"];
        return picturesURL;
    }
    return [NSURL fileURLWithPath:@"/System/Library/Desktop Pictures"]; //catalina +
}
@end
