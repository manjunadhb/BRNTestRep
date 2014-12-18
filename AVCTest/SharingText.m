//
//  SharingText.m
//  AVCTest
//
//  Created by Manjunadh on 30/10/14.
//  Copyright (c) 2014 Manjunadh. All rights reserved.
//

#import "SharingText.h"

@implementation SharingText

- (id)activityViewControllerPlaceholderItem:(UIActivityViewController *)activityViewController
{

return @"";

}	// called to determine data type. only the class of the return type is consulted. it should match what -itemForActivityType: returns later
- (id)activityViewController:(UIActivityViewController *)activityViewController itemForActivityType:(NSString *)activityType
{
    
    NSString * shareString;
    
    if ([activityType isEqualToString:UIActivityTypePostToFacebook])
    {
        shareString =  @"facebook share message";
    }
    
    return shareString;

}

//- (NSString *)activityViewController:(UIActivityViewController *)activityViewController subjectForActivityType:(NSString *)activityType
//{
//    NSString * sub = @"";
//    
//    if ([activityType isEqualToString:UIActivityTypeMail]) {
//        
//        sub = @"This is mail subject";
//    }
//    
//    return sub;
//    
//    
//}



@end
