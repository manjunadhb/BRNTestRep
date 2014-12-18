//
//  CustomActivity.m
//  AVCTest
//
//  Created by Manjunadh on 30/10/14.
//  Copyright (c) 2014 Manjunadh. All rights reserved.
//

#import "CustomActivity.h"

@implementation CustomActivity


- (NSString *)activityTitle {
    return @"Google+";
}

- (NSString *)activityType {
    return @"com.captech.googlePlusSharing";
}

- (UIImage *)activityImage {
    return [UIImage imageNamed:@"Google-icon.png"];
}

- (BOOL)canPerformWithActivityItems:(NSArray *)activityItems {
    return YES;
}

- (void)performActivity
{
    NSLog(@"do what ever you want in this line");
    [self activityDidFinish:YES];
}

- (void)prepareWithActivityItems:(NSArray *)activityItems {
    for (NSObject *item in activityItems) {
        if ([item isKindOfClass:[NSString class]]) {
            //self.text =
            NSLog(@"item to string is %@", (NSString *)item);
        } else if ([item isKindOfClass:[NSURL class]]) {
            NSLog(@"item to url is %@", (NSURL *)item);

            
            //self.url = ;
        }
    }
}



//+ (UIActivityCategory)activityCategory
//{
//
//    return UIActivityCategoryAction;
//}
//
//- (NSString *)activityType
//{
//
//    return @"UIActivityTypeCustom";
//}       // default returns nil. subclass may override to return custom activity type that is reported to completion handler
//- (NSString *)activityTitle
//{
//    return @"BRNInfotech";
//}      // default returns nil. subclass must override and must return non-nil value
//- (UIImage *)activityImage
//{
//
//    return [UIImage imageNamed:@"splash.png"];
//}
@end
